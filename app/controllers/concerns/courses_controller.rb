class CoursesController < ApplicationController
  def index
  end

  def sample_json
    render json: get_user_course_prereqs('CS 2340')
  end

  private

  # @param course_name String - 'Major Coursename' ex) 'CS 1301'
  # @return course_prereqs Hash - course root parent
  def get_user_course_prereqs(course_name)
    major = course_name.split(' ')[0]
    course_num = course_name.split(' ')[1].to_i

    json_prereq_courses = {
      name: course_name,
      children: []
    }

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
