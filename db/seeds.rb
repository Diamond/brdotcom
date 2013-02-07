# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Helper function to make building the seed list easier
def build_points(section, points)
  n = 0
  points.each do |point|
    Point.create(body: point, section_id: section.id, ordering: n)
    n += 1
  end
end

# Build the top-level seeds first
skills    = Section.create(title: "Skills",    ordering: 0)
projects  = Section.create(title: "Projects",  ordering: 1)
education = Section.create(title: "Education", ordering: 2)
jobs      = Section.create(title: "Jobs",      ordering: 3)

# Build the "skills" section
languages = Section.create(title: "Programming Languages", ordering: 0, parent_id: skills.id)
software  = Section.create(title: "Software Experience",   ordering: 1, parent_id: skills.id)

# Skills >> Languages
points = ["Familar with: C, C++, C#",
          "Strong experience with: Java, Ruby, Python, Oracle PLSQL",
          "Web-related Languages: (HTML, CSS, JavaScript, PHP, SQL, Ruby on Rails, ActionScript3, Flex MXML)",
          "Experience with JQuery and Prototype JavaScript web frameworks",
          "Experience designing software for heavily-MVC frameworks such as Ruby on Rails"]
build_points languages, points

# Skills >> Software
points = ["Linux Server and Desktop Administration and Maintenance",
          "Windows 98 to Windows 7 Administration and Maintenance",
          "Oracle 9i/10 experience",
          "Microsoft Word, Excel, PowerPoint, Outlook, Access, Visual Studio (6.0 to 2010)",
          "Adobe Photoshop/Adobe Flex/Adobe Flash",
          "Emacs text editor",
          "Apache/SSH/mySQL Repair and Troubleshooting",
          "PegaRULES Process Commander 4.2 SP5, SP6"]
build_points software, points

# Build the "projects" section
python    = Section.create(title: "Python", ordering: 0, parent_id: projects.id)
java      = Section.create(title: "Java",   ordering: 1, parent_id: projects.id)
ruby      = Section.create(title: "Ruby",   ordering: 2, parent_id: projects.id)
web       = Section.create(title: "Web",    ordering: 3, parent_id: projects.id)

# Projects >> Python
points = ["PyAnn - Python Neural Network implementation",
          '<a href="http://www.pyweek.org/e/xasm_pw6/">invention</a> - PyWeek6 Solo Entry 1st place!',
          '<a href="http://www.pyweek.org/e/xasm/">Melty Twist</a> - PyWeek5 Solo Entry!']
build_points python, points
# Projects >> Java
build_points java, ['<a href="https://github.com/Diamond/ThreePrism">ThreePrism</a> - One Game a Month entry for January']
# Projects >> Ruby
build_points ruby, ['<a href="https://github.com/Diamond/ThreePrismRuby">ThreePrism Ruby</a> - Ruby translation of my One Game a Month entry for January']
# Projects >> Web
points = ['<a href="http://brandonrichey.com/htmlpreview/">HTML Preview Tool</a> - (custom code, PHP, Prototype.js)',
          '<a href="http://kunstlercast.com">KunstlerCast.com</a> - WordPress Freelance development and design (Photoshop, PHP, WordPress)',
          '<a href="http://cosmeticlasermd.com">Cosmetic Laser MD</a> - WordPress Freelance development and design (Photoshop, PHP, WordPress)']
build_points web, points

# Build the "education" section
masters   = Section.create(title: "Masters of Science",
                           aside: "The College of Saint Rose, Albany, New York",
                           ordering: 0,
                           parent_id: education.id)
bachelor  = Section.create(title: "Bachelor of Science",
                           aside: "The College of Saint Rose, Albany, New York",
                           ordering: 1,
                           parent_id: education.id)

# Build the "jobs" section
webdev    = Section.create(title: "Freelance Web Developer",
                           aside: "May 2011 - Present",
                           ordering: 0,
                           parent_id: jobs.id)
lecturer  = Section.create(title: "Adjunct Lecturer",
                           aside: "The College of Saint Rose, Albany, New York (September 2009 - Present)",
                           ordering: 1,
                           parent_id: jobs.id)
xls       = Section.create(title: "Senior Application Developer",
                           aside: "Xerox Litigation Services, Albany, New York (March 2007 - Present)",
                           ordering: 2,
                           parent_id: jobs.id)
xasm      = Section.create(title: "Administrator for Xasm.net",
                           aside: "Web-based Business (January 1999 - Present)",
                           ordering: 3,
                           parent_id: jobs.id)
blueslate = Section.create(title: "Consulting Software Engineer",
                           aside: "Blue Slate Solutions, LLC, Albany, New York (January 2006 - March 2007)",
                           ordering: 4,
                           parent_id: jobs.id)
sharp     = Section.create(title: "Web Programmer for Sharpplayer.net",
                           aside: "Web-based Business (May 2004 - June 2006)",
                           ordering: 5,
                           parent_id: jobs.id)

# Jobs >> Freelance
points = ["Designed website using Photoshop, HTML, CSS, and JavaScript",
          "Implemented custom templates for WordPress sites",
          "Interacted with clients and intermediaries to determine client expectations and specifications",
          "Built custom Ruby on Rails websites from scratch utilizing multiple techniques to improve code quality and efficiency, including utilizing Rspec for unit and functional tests with Capybara, Sorcery for authorization, and experience using TestUnit and testing frameworks similar to TestUnit",
          "Examples include: http://kunstlercast.com/, http://cosmeticlasermd.com/"]
build_points webdev, points

# Jobs >> Adjunct Lecturer
points = ["Two semesters teaching Educational Computing",
          "Engaged students in topics relating to education and software/web integration",
          "Four semesters teaching Introduction to Computer Science",
          "Engaged students in topics related to the general field of computing, HTML, CSS, JavaScript, and Scratch"]
build_points lecturer, points

# Jobs >> Senior Application Developer
points = ["Developed high-use web-based software for use by law firms and corporations using PHP/Oracle/JavaScript",
          "Developed multiple new features utilizing heavy JavaScript and Ruby on Rails-style PHP MVC Framework",
          "Developed multiple process-optimizing internal use websites and tools",
          "Designed and developed a dynamic front-end interface for customer data using Adobe Flex",
          "Designed and developed a brand new mobile front end for a successful web application",
          "Implemented and maintained unit and functional tests to maintain code and application integrity",
          "Analyzed existing frameworks and code base for optimization",
          "Developed new alternatives for legacy codebase to improve security and remove multiple vulnerabilities",
          "Built a custom DSL in Ruby to autogenerate SQL files based on customer needs to significantly improve developer efficiency",
          "Participated in group code reviews and individually reviewed and approved code for testing and release",
          "Participated in requirements gathering, design, development, and testing plan creation"]
build_points xls, points

# Jobs >> Xasm.net
points = ["Designed and created new websites using HTML and CSS",
          "Administered HTTP, FTP, SSH, and mySQL servers",
          "Successfully secured the server machine via kernel upgrades and security patches for software",
          "Provided customer care and support",
          "Programmed custom Ruby on Rails/PHP/HTML/CSS/mySQL code for customers",
          "Installed new services and maintained pre-existing services",
          "Maintained and controlled multiple databases"]
build_points xasm, points

# Jobs >> Blue Slate
points = ["Developed Preprocessors and Postprocessors for Fortune 10 company using Java",
          "Administered and maintained Websphere and installed/deployed new web applications",
          "Improved business process and development utilizing BPM software (PegaRULES Process Commander)",
          "Provided significant process and development improvements for multiple large clients",
          "Designed applications for high-priority processes",
          "Engaged with client development teams to introduce new techniques and processes to significantly improve productivity and lower error rate"]
build_points blueslate, points

# Jobs >> Sharpplayer.net
points = ["Developed a community-based forum in PHP, HTML, CSS, and MySQL",
          "Managed multiple MySQL databases",
          "Provided troubleshooting and customer care",
          "Successfully secured the website via security patches and custom programming"]
build_points sharp, points
