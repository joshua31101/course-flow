require 'open-uri'
require 'nokogiri'
require 'set'

@set = Set['and', 'or', "ACCT", "AE", "AS", "APPH", "ASE", "ARBC", "ARCH", "BIOL", "BMEJ", "BMED", "BMEM", "BC", "BCP", "CETL", "CHBE", "CHEM", "CHIN",
  "CP", "CEE", "COA", "COE", "COS", "CX", "CSE", "CS", "COOP", "UCGA", "EAS", "ECON", "ECEP", "ECE", "ENGL", "FS", "FREE", "FREN", "GT", "GTL",
  "GRMN", "HP", "HS", "HIN", "HIST", "HTS", "HUM", "ID", "ISYE", "INTA", "IL", "INTN", "IMBA", "IPCO", "IPFS", "IPIN", "IPSA", "IAC", "JAPN", "KOR",
  "LATN", "LS", "LING", "LCC", "LMC", "MGT", "MOT", "MLDR", "MSE", "MATH", "ME", "MP", "MSL", "ML", "MUSI", "NS", "NEUR", "NRE", "PERS", "PHIL",
   "PHYS", "POL", "PTFE", "DOPP", "PSYC", "PUBJ", "PUBP", "RUSS", "SCI", "SLS", "SS", "SOC", "SPAN"]
@index = 0

def parse_prereqs(text)
  arr = []
  relationship = ''

  while @index < text.length
    current_char = text[@index]
    if current_char == '('
      @index += 1
      arr << parse_prereqs(text)
    elsif current_char == ')'
      @index += 1
      return { "#{relationship}": arr }
    elsif current_char == ' '
      @index += 1
    else
      # If the current_char is the first char of a word
      if @index != 0 && text[@index+1] != ')' && (text[@index-1] == '(' || (text[@index-1] == ' ' && text[@index] != ' '))
        split_words = text[@index..@index+17].split(' ')
        current_word = split_words[0]

        if @set.include? current_word
          if current_word == 'and' || current_word == 'or'
            relationship = current_word
            @index += current_word.length + 1
          else
            next_word = split_words[1]
            course_name = "#{current_word} #{next_word}"
            arr << course_name
            @index += course_name.length + 1
          end
        else
          # Go to the end of a word
          @index += current_word.length + 1
        end
      else
        @index += 1
      end
    end
  end

  return { "#{relationship}": arr }
end

# All majors offered at Georgia Tech
# Web links to parse for course name, desc, and credit hours
urls = [
  'http://www.catalog.gatech.edu/coursesaz/acct/',
  'http://www.catalog.gatech.edu/coursesaz/ae/',
  'http://www.catalog.gatech.edu/coursesaz/as/',
  'http://www.catalog.gatech.edu/coursesaz/apph/',
  'http://www.catalog.gatech.edu/coursesaz/ase/',
  'http://www.catalog.gatech.edu/coursesaz/arbc/',
  'http://www.catalog.gatech.edu/coursesaz/arch/',
  'http://www.catalog.gatech.edu/coursesaz/biol/',
  'http://www.catalog.gatech.edu/coursesaz/bmej/',
  'http://www.catalog.gatech.edu/coursesaz/bmed/',
  'http://www.catalog.gatech.edu/coursesaz/bmem/',
  'http://www.catalog.gatech.edu/coursesaz/bc/',
  'http://www.catalog.gatech.edu/coursesaz/bcp/',
  'http://www.catalog.gatech.edu/coursesaz/cetl/',
  'http://www.catalog.gatech.edu/coursesaz/chbe/',
  'http://www.catalog.gatech.edu/coursesaz/chem/',
  'http://www.catalog.gatech.edu/coursesaz/chin/',
  'http://www.catalog.gatech.edu/coursesaz/cp/',
  'http://www.catalog.gatech.edu/coursesaz/cee/',
  'http://www.catalog.gatech.edu/coursesaz/coa/',
  'http://www.catalog.gatech.edu/coursesaz/coe/',
  'http://www.catalog.gatech.edu/coursesaz/cos/',
  'http://www.catalog.gatech.edu/coursesaz/cx/',
  'http://www.catalog.gatech.edu/coursesaz/cse/',
  'http://www.catalog.gatech.edu/coursesaz/cs/',
  'http://www.catalog.gatech.edu/coursesaz/coop/',
  'http://www.catalog.gatech.edu/coursesaz/ucga/',
  'http://www.catalog.gatech.edu/coursesaz/eas/',
  'http://www.catalog.gatech.edu/coursesaz/econ/',
  'http://www.catalog.gatech.edu/coursesaz/ecep/',
  'http://www.catalog.gatech.edu/coursesaz/ece/',
  'http://www.catalog.gatech.edu/coursesaz/engl/',
  'http://www.catalog.gatech.edu/coursesaz/fs/',
  'http://www.catalog.gatech.edu/coursesaz/free/',
  'http://www.catalog.gatech.edu/coursesaz/fren/',
  'http://www.catalog.gatech.edu/coursesaz/gt/',
  'http://www.catalog.gatech.edu/coursesaz/gtl/',
  'http://www.catalog.gatech.edu/coursesaz/grmn/',
  'http://www.catalog.gatech.edu/coursesaz/hp/',
  'http://www.catalog.gatech.edu/coursesaz/hs/',
  'http://www.catalog.gatech.edu/coursesaz/hin/',
  'http://www.catalog.gatech.edu/coursesaz/hist/',
  'http://www.catalog.gatech.edu/coursesaz/hts/',
  'http://www.catalog.gatech.edu/coursesaz/hum/',
  'http://www.catalog.gatech.edu/coursesaz/id/',
  'http://www.catalog.gatech.edu/coursesaz/isye/',
  'http://www.catalog.gatech.edu/coursesaz/inta/',
  'http://www.catalog.gatech.edu/coursesaz/il/',
  'http://www.catalog.gatech.edu/coursesaz/intn/',
  'http://www.catalog.gatech.edu/coursesaz/imba/',
  'http://www.catalog.gatech.edu/coursesaz/ipco/',
  'http://www.catalog.gatech.edu/coursesaz/ipfs/',
  'http://www.catalog.gatech.edu/coursesaz/ipin/',
  'http://www.catalog.gatech.edu/coursesaz/ipsa/',
  'http://www.catalog.gatech.edu/coursesaz/iac/',
  'http://www.catalog.gatech.edu/coursesaz/japn/',
  'http://www.catalog.gatech.edu/coursesaz/kor/',
  'http://www.catalog.gatech.edu/coursesaz/latn/',
  'http://www.catalog.gatech.edu/coursesaz/ls/',
  'http://www.catalog.gatech.edu/coursesaz/ling/',
  'http://www.catalog.gatech.edu/coursesaz/lcc/',
  'http://www.catalog.gatech.edu/coursesaz/lmc/',
  'http://www.catalog.gatech.edu/coursesaz/mgt/',
  'http://www.catalog.gatech.edu/coursesaz/mot/',
  'http://www.catalog.gatech.edu/coursesaz/mldr/',
  'http://www.catalog.gatech.edu/coursesaz/mse/',
  'http://www.catalog.gatech.edu/coursesaz/math/',
  'http://www.catalog.gatech.edu/coursesaz/me/',
  'http://www.catalog.gatech.edu/coursesaz/mp/',
  'http://www.catalog.gatech.edu/coursesaz/msl/',
  'http://www.catalog.gatech.edu/coursesaz/ml/',
  'http://www.catalog.gatech.edu/coursesaz/musi/',
  'http://www.catalog.gatech.edu/coursesaz/ns/',
  'http://www.catalog.gatech.edu/coursesaz/neur/',
  'http://www.catalog.gatech.edu/coursesaz/nre/',
  'http://www.catalog.gatech.edu/coursesaz/pers/',
  'http://www.catalog.gatech.edu/coursesaz/phil/',
  'http://www.catalog.gatech.edu/coursesaz/phys/',
  'http://www.catalog.gatech.edu/coursesaz/pol/',
  'http://www.catalog.gatech.edu/coursesaz/ptfe/',
  'http://www.catalog.gatech.edu/coursesaz/dopp/',
  'http://www.catalog.gatech.edu/coursesaz/psyc/',
  'http://www.catalog.gatech.edu/coursesaz/pubj/',
  'http://www.catalog.gatech.edu/coursesaz/pubp/',
  'http://www.catalog.gatech.edu/coursesaz/russ/',
  'http://www.catalog.gatech.edu/coursesaz/sci/',
  'http://www.catalog.gatech.edu/coursesaz/sls/',
  'http://www.catalog.gatech.edu/coursesaz/ss/',
  'http://www.catalog.gatech.edu/coursesaz/soc/',
  'http://www.catalog.gatech.edu/coursesaz/span/'
]


courses = {}
p 'Fetching course name, title, credit hours, and desc...'
urls.each do |url|
  page = Nokogiri::HTML(open(url))
  _courses = page.search('.courseblock')

  # Fetch course name, title, credit hours, and desc
  _courses.each do |course|
    course_info = course.at('.courseblocktitle').text.split('.')
    course_desc = course.at('.courseblockdesc').text.gsub(/\n/, '')
    _course_name = course_info[0]
    course_title = course_info[1].lstrip
    course_credit = course_info[2].gsub(/Credit|Hours|Hour/, '').strip

    major = _course_name.split(/[[:space:]]/)[0]
    course_num = _course_name.split(/[[:space:]]/)[1]

    if courses[major].nil?
      courses[major] = {
        course_num => {
          :number => course_num,
          :title => course_title,
          :prereq => {},
          :openup => [],
          :desc => course_desc,
          :credit_hour => course_credit
        }
      }
    else
      courses[major][course_num] = {
        :number => course_num,
        :title => course_title,
        :prereq => {},
        :openup => [],
        :desc => course_desc,
        :credit_hour => course_credit
      }
    end

    # Fetch prereq from GT Oscar and save prereq and openups in courses
    oscar_page = Nokogiri::HTML(open("https://oscar.gatech.edu/pls/bprod/bwckctlg.p_disp_course_detail?cat_term_in=201802&subj_code_in=#{major}&crse_numb_in=#{course_num}"))
    text = oscar_page.at('.ntdefault').text

    if (index = text =~ /Prerequisite/)
      prereq_text = text[index..text.length - 1].gsub("\n", "")
      prereqs = parse_prereqs(prereq_text)
      @index = 0
      p "Current course: #{course_num}"
      p "#{major} #{course_num}"

      if prereqs[:''] != []
        courses[major][course_num][:prereq] = prereqs
      end
    end

  end
end

p 'Done......!!'
# p 'Get openups from prerequisite courses...'

# Get openups from prerequisite courses
# courses.each do |major, course_by_number|
#   course_by_number.each do |number, course_info|
#     course_info[:prereq].each do |prereq_course|
#       _major = prereq_course.split(' ')[0]
#       _name = prereq_course.split(' ')[1]
#       courses[_major][_name][:openup] << "#{major} #{number}" if courses[_major] && courses[_major][_name]
#     end
#   end
#   p '*'
# end

require 'json'
File.open("courses.json", "w") do |f|
  f.write(JSON.pretty_generate(courses))
end
