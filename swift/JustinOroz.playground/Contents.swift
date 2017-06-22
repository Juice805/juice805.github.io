//: Playground - noun: a place where people can play

import Foundation

class Person {
	var name: String
	var about = About()
	var skills = [String]()
	var projects: Projects?
	var social = [String: String]()

	init(_ name: String) {
		self.name = name
	}
}

struct Projects {
	let description = "Here are some of the things I have worked on."
	var projects = [[String: String]]()
}


struct About {
	var me: String?
	var likes: [String]?
	var skills: [String]?
	var resume: Data?
}


// Person Struct goes here

let justin = Person("Justin")
justin.about.me = "Fresh Electrical Engineering Graduate, Embedded Software Developer, Indie iOS Developer"
justin.skills = ["C++", "C", "Linux", "Swift", "Java"]
justin.projects = Projects()
justin.social = ["github": "Juice805",
                 "email": "justin.oroz@me.com",
                 "steam": "Juice805",
                 "facebook": "juice805",
                 "linkedin": "Justin Oroz"]



// Projects Struct goes here

var some = justin.projects!

some.projects.append(["name": "justinoroz.me",
                    "date": "Today",
                    "description": "My webpage"])

justin.projects = some


// About Structure goes here

justin.about.resume = FileManager.default.contents(atPath: "resume.pdf")
