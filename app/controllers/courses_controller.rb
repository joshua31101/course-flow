class CoursesController < ApplicationController
  # GET
  # URL: /
  # Landing page with a search input bar
  def index
  end

  # GET
  # URL: /prereq-courses?course_name=
  # Find prerequisite courses from the course_name passed in from search input bar
  def search_prereq_courses
    if params[:course_name].present?
      major = params[:course_name].split(' ')[0].upcase
      course_number = params[:course_name].split(' ')[1]
      render json: get_user_course_prereqs("#{major} #{course_number}"), status: :ok
    else
      render json: 'Opps.. we couldn\'t find a course. Try typing something like CS 3510', status: :forbidden
    end
  end

  private


  # @param course_name String - 'major course_number' ex) 'CS 1301'
  # @return course_prereqs Hash - course root parent
  def get_user_course_prereqs(course_name)
    if course_name.blank?
      return
    end

    if course_name.class == String
      course_info = course_name.split(' ')
      major = course_info[0]
      course_num = course_info[1]

      if major.present? && course_num.present?
        if _course_info = CoursesHelper.courses[major.to_sym][course_num.to_sym]
          json_prereq_courses = {
            course_name: course_name,
            course_title: _course_info[:title],
            course_desc: _course_info[:desc],
            course_credit_hour: _course_info[:credit_hour],
            relationship: '',
            children: []
          }
          prereq = _course_info[:prereq]
          if prereq.present?
            prereq.each do |rel, courses|
              json_prereq_courses[:relationship] = rel
              courses.each do |course|
                _c = get_user_course_prereqs(course)
                json_prereq_courses[:children] << _c if _c
              end
            end
          end
        else
          # Return nil if invalid course
          return nil
        end
      end
    else
      # course_name param is a hash due to nested relationship
      course_name.each do |rel, courses|
        json_prereq_courses = {
          relationship: rel,
          children: []
        }
        courses.each do |course|
          _c = get_user_course_prereqs(course)
          json_prereq_courses[:children] << _c if _c
        end
      end
    end

    return json_prereq_courses
  end
end
