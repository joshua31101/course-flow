module JsonHelper

  def self.courses
    {
      'CS' => {
        1100 => {
          :course_title=>"Freshman Leap Seminar",
          :prereq=>[],
          :openup=>[]
        },
        1171 => {
          :course_title=>"Computing in MATLAB",
          :prereq=>["CS 1301", "CS 15XX", "CS 13X1", "CS 1315"],
          :openup=>["CS 1372"]
        },
        1301 => {
          :course_title=>"Introduction to Computing",
          :prereq=>[],
          :openup=>["CS 1171", "CS 1316", "CS 1331", "CS 2316", "CS 2600", "CS 3101", "CS 4400", "CS 4475", "CX 4010", "CX 4240"]
        },
        1315 => {
          :course_title=>"Intro Media Computation",
          :prereq=>[],
          :openup=>["CS 1171", "CS 1316", "CS 1331", "CS 2316", "CS 2600", "CS 3101", "CS 4400", "CS 4475"]
        },
        1316 => {
          :course_title=>"Rep Structure & Behavior",
          :prereq=>["CS 1301", "CS 1315", "CS 1371"],
          :openup=>["CS 2340"]
        },
        1331 => {
          :course_title=>"Intro to Object Oriented Prog",
          :prereq=>["CS 1301", "CS 1315", "CS 1321", "CS 1371"],
          :openup=>["CS 1332", "CS 2110", "CS 2261", "CS 2340", "CS 4464", "CS 4616", "CS 4625", "CS 4641", "CX 4140", "CX 4220", "CX 4230", "CX 4232", "CX 4236", "CX 4242"]
        },
        1332 => {
          :course_title=>"Data Structures & Algorithms",
          :prereq=>["CS 1331", "CS 1322"],
          :openup=>["CS 2335", "CS 3451", "CS 3510", "CS 3511", "CS 3600", "CS 3630", "CS 4245", "CS 4460", "CS 4649"]
        },
        1371 => {
          :course_title=>"Computing for Engineers",
          :prereq=>[],
          :openup=>["CS 1316", "CS 1331", "CS 2316", "CS 2600", "CS 3101", "CS 4400", "CS 4475", "CX 4010", "CX 4240"]
        },
        1372 => {
          :course_title=>"Program Design for Engineers",
          :prereq=>["CS 1171", "CS 1371", "CS 1301"],
          :openup=>["CS 2340", "CS 4245", "CX 4140", "CX 4220", "CX 4230", "CX 4232", "CX 4236", "CX 4242"]
        },
        2050 => {
          :course_title=>"Intro Discrete Math CS",
          :prereq=>[],
          :openup=>["CS 3510", "CS 3511", "CS 4560"]
        },
        2051 => {
          :course_title=>"Honors Discrete Math CS",
          :prereq=>[],
          :openup=>["CS 3510"]
        },
        2110 => {
          :course_title=>"Computer Organiz&Program",
          :prereq=>["CS 1331"],
          :openup=>["CS 2200", "CS 2345", "CS 3451", "CS 4476", "CS 4495", "CS 4605"]
        },
        2200 => {
          :course_title=>"Systems and Networks",
          :prereq=>["CS 2110"],
          :openup=>["CS 3210", "CS 3220", "CS 3251", "CS 4220", "CS 4235", "CS 4260", "CS 4261", "CS 4290", "CS 4675", "CS 4685"]
        },
        2261 => {
          :course_title=>"Media Device Arch",
          :prereq=>["CS 1331"],
          :openup=>["CS 2345", "CS 4476", "CS 4495", "CS 4605"]
        },
        2316 => {
          :course_title=>"Data Input/Manipulation",
          :prereq=>["CS 1371", "CS 1301", "CS 1315"],
          :openup=>["CS 4005", "CX 4140", "CX 4220", "CX 4230", "CX 4232", "CX 4236", "CX 4242"]
        },
        2335 => {
          :course_title=>"Software Practicum",
          :prereq=>["CS 1332"],
          :openup=>[]
        },
        2340 => {
          :course_title=>"Objects and Design",
          :prereq=>["CS 1331", "CS 1372", "CS 1316"],
          :openup=>["CS 2345", "CS 3240", "CS 3300", "CS 3312", "CS 3451", "CS 4240", "CS 4392", "CS 4470", "CS 4770", "CS 4911", "CS 4912"]
        },
        2345 => {
          :course_title=>"Adv Practical O-O Prog",
          :prereq=>["CS 2110", "CS 2261", "CS 2340"],
          :openup=>[]
        },
        2600 => {
          :course_title=>"Knowledge Rep & Process",
          :prereq=>["CS 1301", "CS 1315", "CS 1371"],
          :openup=>[]
        },
        2701 => {
          :course_title=>"Startup Lab",
          :prereq=>[],
          :openup=>[]
        },
        3101 => {
          :course_title=>"Comp Sci Ventures",
          :prereq=>["CS 1301", "CS 1315", "CS 1371"],
          :openup=>[]
        },
        3210 => {
          :course_title=>"Design-Operating Systems",
          :prereq=>["CS 2200"],
          :openup=>["CS 4210", "CS 4233", "CS 4365"]
        },
        3220 => {
          :course_title=>"Processor Design",
          :prereq=>["CS 2200", "ECE 2031"],
          :openup=>[]
        },
        3240 => {
          :course_title=>"Languages and Computation",
          :prereq=>["CS 2340"],
          :openup=>[]
        },
        3251 => {
          :course_title=>"Computer Networking I",
          :prereq=>["CS 2200"],
          :openup=>["CS 4237", "CS 4251", "CS 4255", "CS 4270"]
        },
        3300 => {
          :course_title=>"Intro to Software Engr",
          :prereq=>["CS 2340"],
          :openup=>["CS 4320", "CS 4330", "CS 4342", "CS 4432"]
        },
        3311 => {
          :course_title=>"Project Design",
          :prereq=>["CS 2340", "LMC 3432"],
          :openup=>[]
        },
        3312 => {
          :course_title=>"Project Implementation",
          :prereq=>["CS 2340", "LMC 3432", "LMC 3431"],
          :openup=>[]
        },
        3451 => {
          :course_title=>"Computer Graphics",
          :prereq=>["MATH 2605", "2401", "2411", "24X1", "CS 2110", "2261", "CS 1332", "CS 2340"],
          :openup=>["CS 4455", "CS 4480", "CS 4496", "CS 4550"]
        },
        3510 => {
          :course_title=>"Dsgn&Analysis-Algorithms",
          :prereq=>["CS 2050", "CS 2051", "MATH 3012", "CS 1332"],
          :openup=>["CS 4510", "CS 4540", "CS 4560", "CS 4650"]
        },
        3511 => {
          :course_title=>"Algorithms Honors",
          :prereq=>["CS 2050", "CS 2051,MATH 3012", "CS 1332"],
          :openup=>["CS 4510", "CS 4540"]
        },
        3600 => {
          :course_title=>"Intro-Artificial Intell",
          :prereq=>["CS 1332"],
          :openup=>["CS 4611", "CS 4613", "CS 4615", "CS 4622", "CS 4635", "CS 4731"]
        },
        3630 => {
          :course_title=>"Intro-Perception&Robotic",
          :prereq=>["CS 1332"],
          :openup=>["CS 4632"]
        },
        3651 => {
          :course_title=>"Prototyping Intelligence Appl",
          :prereq=>["ECE 2031"],
          :openup=>[]
        },
        3743 => {
          :course_title=>"Emerging Technologies",
          :prereq=>[],
          :openup=>[]
        },
        3750 => {
          :course_title=>"User Interface Design",
          :prereq=>[],
          :openup=>[]
        },
        3790 => {
          :course_title=>"Intro-Cognitive Science",
          :prereq=>[],
          :openup=>[]
        },
        4001 => {
          :course_title=>"Computing & Society",
          :prereq=>[],
          :openup=>[]
        },
        4002 => {
          :course_title=>"Robots and Society",
          :prereq=>[],
          :openup=>[]
        },
        4005 => {
          :course_title=>"Next Gen Computing Tech",
          :prereq=>["CS 2316"],
          :openup=>[]
        },
        4010 => {
          :course_title=>"Intro to Computer Law",
          :prereq=>[],
          :openup=>[]
        },
        4052 => {
          :course_title=>"Systems Analysis & Design",
          :prereq=>[],
          :openup=>[]
        },
        4057 => {
          :course_title=>"Bus Process Analy/Design",
          :prereq=>["MGT 2200"],
          :openup=>[]
        },
        4210 => {
          :course_title=>"Adv Operating Systems",
          :prereq=>["CS 3210"],
          :openup=>[]
        },
        4220 => {
          :course_title=>"Embedded Systems",
          :prereq=>["CS 2200"],
          :openup=>[]
        },
        4233 => {
          :course_title=>"Parallel Comp Arch",
          :prereq=>["CS 3210"],
          :openup=>[]
        },
        4235 => {
          :course_title=>"Intro to Info Security",
          :prereq=>["CS 2200"],
          :openup=>[]
        },
        4237 => {
          :course_title=>"Comp & Network Security",
          :prereq=>["CS 3251"],
          :openup=>[]
        },
        4240 => {
          :course_title=>"Compilers & Interpreters",
          :prereq=>["CS 2340"],
          :openup=>[]
        },
        4245 => {
          :course_title=>"Intro Data Mining & Anal",
          :prereq=>["Math 2605", "2401", "2411", "24X1", "CS 1332", "CS 1372"],
          :openup=>[]
        },
        4251 => {
          :course_title=>"Computer Networking II",
          :prereq=>["CS 3251"],
          :openup=>[]
        },
        4255 => {
          :course_title=>"Intro-Network Management",
          :prereq=>["CS 3251"],
          :openup=>[]
        },
        4260 => {
          :course_title=>"Telecommunications Sys",
          :prereq=>["MATH 3215", "MATH 3225", "MATH/ISYE/CEE 3770", "ISYE 2028", "CS 2200"],
          :openup=>[]
        },
        4261 => {
          :course_title=>"Mobile Apps & Svcs",
          :prereq=>["CS 2200"],
          :openup=>[]
        },
        4270 => {
          :course_title=>"Data Communications Lab",
          :prereq=>["CS 3251"],
          :openup=>[]
        },
        4280 => {
          :course_title=>"Survey-Telecom & the Law",
          :prereq=>[],
          :openup=>[]
        },
        4290 => {
          :course_title=>"Advanced Computer Org",
          :prereq=>["CS 2200"],
          :openup=>[]
        },
        4320 => {
          :course_title=>"Software Processes",
          :prereq=>["CS 3300"],
          :openup=>[]
        },
        4330 => {
          :course_title=>"Software Applications",
          :prereq=>["CS 3300"],
          :openup=>[]
        },
        4342 => {
          :course_title=>"Software Generation",
          :prereq=>["CS 3300"],
          :openup=>[]
        },
        4365 => {
          :course_title=>"Intro to Enterprise Computing",
          :prereq=>["CS 3210", "CS 4400"],
          :openup=>[]
        },
        4392 => {
          :course_title=>"Programming Languages",
          :prereq=>["CS 2340"],
          :openup=>[]
        },
        4400 => {
          :course_title=>"Intr to Database Systems",
          :prereq=>["CS 1301", "CS 1371", "CS 1315"],
          :openup=>["CS 4365", "CS 4420", "CS 4432", "CS 4440"]
        },
        4420 => {
          :course_title=>"Database Sys Implement",
          :prereq=>["CS 4400"],
          :openup=>[]
        },
        4432 => {
          :course_title=>"Information Systems Dsgn",
          :prereq=>["CS 3300", "CS 4400"],
          :openup=>[]
        },
        4440 => {
          :course_title=>"Database Technologies",
          :prereq=>["CS 4400"],
          :openup=>[]
        },
        4452 => {
          :course_title=>"Human-Centered Computing",
          :prereq=>[],
          :openup=>[]
        },
        4455 => {
          :course_title=>"Video Game Design",
          :prereq=>["CS 3451"],
          :openup=>[]
        },
        4460 => {
          :course_title=>"Intro to Information Visualization",
          :prereq=>["CS 1332"],
          :openup=>[]
        },
        4464 => {
          :course_title=>"Computational Journalism",
          :prereq=>["CS 1331"],
          :openup=>[]
        },
        4470 => {
          :course_title=>"User Interface Software",
          :prereq=>["CS 2340", "CS 3750/PSYC 3750"],
          :openup=>[]
        },
        4472 => {
          :course_title=>"Design of Online Communities",
          :prereq=>[],
          :openup=>[]
        },
        4475 => {
          :course_title=>"Computational Photography",
          :prereq=>["CS 1301", "CS 1315", "CS 1371"],
          :openup=>[]
        },
        4476 => {
          :course_title=>"Intro to Computer Vision",
          :prereq=>["MATH 2605", "2401", "24X1", "2411", "1553", "1554", "1564", "CS 2110", "CS 2261"],
          :openup=>[]
        },
        4480 => {
          :course_title=>"Digital Video Special FX",
          :prereq=>["CS 3451"],
          :openup=>[]
        },
        4495 => {
          :course_title=>"Computer Vision",
          :prereq=>["MATH 2605", "2401", "24X1", "2411", "CS 2110", "CS 2261"],
          :openup=>[]
        },
        4496 => {
          :course_title=>"Computer Animation",
          :prereq=>["CS 3451"],
          :openup=>[]
        },
        4510 => {
          :course_title=>"Automata and Complexity",
          :prereq=>["MATH 3012", "MATH 3215", "MATH 3670", "ISYE/CEE 3770", "ISYE 2027 with 2028", "CS 3510", "CS 3511"],
          :openup=>[]
        },
        4520 => {
          :course_title=>"Approximation Algs",
          :prereq=>["CS 4540"],
          :openup=>[]
        },
        4530 => {
          :course_title=>"Randomized Algs",
          :prereq=>["CS 4540"],
          :openup=>[]
        },
        4540 => {
          :course_title=>"Advanced Algs",
          :prereq=>["MATH 3012", "MATH 3215", "MATH 3670", "ISYE/CEE 3770", "ISYE 2027 with 2028", "CS 3510", "CS 3511"],
          :openup=>["CS 4520", "CS 4530"]
        },
        4550 => {
          :course_title=>"Scientific Data Processing & Vis",
          :prereq=>["CS 3451"],
          :openup=>[]
        },
        4560 => {
          :course_title=>"Verification of Systems",
          :prereq=>["CS 2050", "CS 3510"],
          :openup=>[]
        },
        4590 => {
          :course_title=>"Principles & App of Comp Audio",
          :prereq=>[],
          :openup=>[]
        },
        4605 => {
          :course_title=>"Mobile and Ubiquitous Computing",
          :prereq=>["CS 2110", "CS 2261"],
          :openup=>[]
        },
        4611 => {
          :course_title=>"AI Problem Solving",
          :prereq=>["CS 3600"],
          :openup=>[]
        },
        4613 => {
          :course_title=>"Knowledge Systems Engr",
          :prereq=>["CS 3600"],
          :openup=>[]
        },
        4615 => {
          :course_title=>"Knowledge Based Modeling & Des",
          :prereq=>["CS 3600"],
          :openup=>[]
        },
        4616 => {
          :course_title=>"Pattern Recognition",
          :prereq=>["CS 1331"],
          :openup=>[]
        },
        4622 => {
          :course_title=>"Case-Based Reasoning",
          :prereq=>["CS 3600"],
          :openup=>[]
        },
        4625 => {
          :course_title=>"Intelligent & Interactive Systems",
          :prereq=>["CS 1331"],
          :openup=>[]
        },
        4632 => {
          :course_title=>"Adv Intelligent Robotics",
          :prereq=>["CS 3630"],
          :openup=>[]
        },
        4635 => {
          :course_title=>"Knowledge Based AI",
          :prereq=>["CS 3600"],
          :openup=>[]
        },
        4641 => {
          :course_title=>"Machine Learning",
          :prereq=>["CS 1331"],
          :openup=>[]
        },
        4649 => {
          :course_title=>"Robot Intelli Planning",
          :prereq=>["CS 1332"],
          :openup=>[]
        },
        4650 => {
          :course_title=>"Natural Language",
          :prereq=>["CS 3510"],
          :openup=>[]
        },
        4660 => {
          :course_title=>"Educational Technology",
          :prereq=>[],
          :openup=>["CS 4665", "CS 4670"]
        },
        4665 => {
          :course_title=>"Educ Tech: Dsgn & Eval",
          :prereq=>["CS 4660"],
          :openup=>[]
        },
        4670 => {
          :course_title=>"CSCL",
          :prereq=>["CS 4660"],
          :openup=>[]
        },
        4675 => {
          :course_title=>"Internet Sys & Services",
          :prereq=>["CS 2200"],
          :openup=>[]
        },
        4685 => {
          :course_title=>"Pervasive Systems & Networking",
          :prereq=>["CS 2200"],
          :openup=>[]
        },
        4690 => {
          :course_title=>"Emperical Methods in HCI",
          :prereq=>["CS/PSYC 3750"],
          :openup=>[]
        },
        4710 => {
          :course_title=>"CS for Bioinformatics",
          :prereq=>[],
          :openup=>[]
        },
        4725 => {
          :course_title=>"Info Security Policies",
          :prereq=>[],
          :openup=>[]
        },
        4726 => {
          :course_title=>"Privacy Tech Policy Law",
          :prereq=>[],
          :openup=>[]
        },
        4731 => {
          :course_title=>"Game AI",
          :prereq=>["CS 3600"],
          :openup=>[]
        },
        4741 => {
          :course_title=>"Int Mgt Dev - Proj Prep",
          :prereq=>[],
          :openup=>["CS 4742"]
        },
        4742 => {
          :course_title=>"Comp & Mgt Cap Proj",
          :prereq=>["CS 4741"],
          :openup=>[]
        },
        4752 => {
          :course_title=>"Phil Issues-Computation",
          :prereq=>[],
          :openup=>[]
        },
        4770 => {
          :course_title=>"Mixed Reality Design",
          :prereq=>["LCC 2700", "CS 2340"],
          :openup=>[]
        },
        4791 => {
          :course_title=>"Integrative Proj-Cog Sci",
          :prereq=>[],
          :openup=>[]
        },
        4792 => {
          :course_title=>"Dsgn Proj-Cognitive Sci",
          :prereq=>[],
          :openup=>[]
        },
        4793 => {
          :course_title=>"Perspectives-Cog Science",
          :prereq=>["CS/PST/PSYC/ISYE 3790"],
          :openup=>[]
        },
        4911 => {
          :course_title=>"Design Capstone Project",
          :prereq=>["CS 2340"],
          :openup=>[]
        },
        4912 => {
          :course_title=>"Design Capstone Project",
          :prereq=>["CS 2340"],
          :openup=>[]
        },
        4140 => {
          :course_title=>"Comp Model & Algorithms",
          :prereq=>["CS 1331", "CS 1372", "CS 2316", "CX 4010", "ECE 2035", "ECE 2036"],
          :openup=>[]
        },
        4230 => {
          :course_title=>"Computer Simulation",
          :prereq=>["MATH 3215/3225", "MATH 3670", "MATH/ISYE/CEE 3770", "ISYE 2028", "BMED 2400", "ECE 3077", "CS 1331", "CS 1372", "CS 2316", "CX 4010", "ECE 2035", "ECE 2036"],
          :openup=>[]
        },
        4232 => {
          :course_title=>"Sim & Military Gaming",
          :prereq=>["CS 1331", "CS 1372", "CS 2316", "CX 4010", "ECE 2035", "ECE 2036"],
          :openup=>[]
        },
        4236 => {
          :course_title=>"Distributed Simulat Sys",
          :prereq=>["CS 1331", "CS 1372", "CS 2316", "CX 4010", "ECE 2035", "ECE 2036"],
          :openup=>[]
        },
        4242 => {
          :course_title=>"Data & Visual Analystics",
          :prereq=>["MATH 2605", "MATH 2401", "MATH 24X1", "MATH 2411", "MATH 3215/3225", "MATH 3670", "MATH/ISYE/CEE 3770", "ISYE 2028", "BMED 2400", "ECE 3770", "CS 1331", "CS 1372", "CS 2316", "CX 4010", "ECE 2035", "ECE 2036", "CX 4240"],
          :openup=>[]
        },
        4640 => {
          :course_title=>"Numerical Analysis I",
          :prereq=>["MATH 2403", "MATH 2413", "MATH 24X3", "MATH 2602"],
          :openup=>["CX 4641"]
        },
        4777 => {
          :prereq=>["MATH 2605", "MATH 2401", "MATH 24X1", "MATH 2411"],
          :openup=>[]
        }
      }
    }
  end

end
