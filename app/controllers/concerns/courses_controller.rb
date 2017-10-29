class CoursesController < ApplicationController
  def index
  end

  def prereq_courses
    render json: get_user_course_prereqs('CS 1332')
  end

  private

  # @param course_name String - 'major course_number' ex) 'CS 1301'
  # @return course_prereqs Hash - course root parent
  def get_user_course_prereqs(course_name)
    course_info = course_name.split(' ')
    major = course_info[0]
    course_num = course_info[1].to_i

    if major.present? && course_num.present?
      _course_info = JsonHelper.courses[major][course_num]
      json_prereq_courses = {
        name: course_name,
        desc: _course_info.present? ? _course_info[:course_title] : '',
        children: []
      }
    end

    if JsonHelper.courses[major][course_num] && JsonHelper.courses[major][course_num][:prereq]
      JsonHelper.courses[major][course_num][:prereq].each do |prereq_course|
        json_prereq_courses[:children] << get_user_course_prereqs(prereq_course)
      end
    else
      return json_prereq_courses
    end

    return json_prereq_courses
  end
end
