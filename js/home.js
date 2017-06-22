var Person = class {
  constructor(name) {
    this.name = name;
    this.about = "";
    this.skills = [];
    this.projects = require("projects");
  }
}

var harry = new Person("Harry");
harry.about = "Mentally stable!";
harry.skills = ["C++", "Linux", "NodeJS", "MongoDB"];
harry.projects = require("projects");
harry.social = [{'github': 'h313'},
               {'facebook': 'wanghaoda'},
               {'email': 'mailto:arandomawesomegeek@gmail.com'}];

module.exports = harry;
