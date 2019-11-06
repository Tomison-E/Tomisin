import '../model/skills.dart';

class SkillsViewModel {
  List<Skill> skills;

  SkillsViewModel();

  getSkills() {
    return skills = <Skill>[
      Skill(
          skill: "Flutter",
          skillDetails: "Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android and iOS.",
      skillData: "assets/flutter.png"),
      Skill(
          skill: "React",
          skillDetails: "React is a JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies.",
          skillData: "assets/react.png"),
      Skill(
          skill: "Java",
          skillDetails: "Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.",
          skillData: "assets/java.png"),
      Skill(
          skill: "CSS",
          skillDetails: "DescriptionCascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language like HTML.",
          skillData: "assets/css.png"),
      Skill(
          skill: "Firebase",
          skillDetails: "Firebase is a mobile and web application development platform developed by Firebase, Inc. in 2011, then acquired by Google in 2014.",
          skillData: "assets/firebase.png"),
      Skill(
          skill: "Graphql",
          skillDetails: "GraphQL is an open-source data query and manipulation language for APIs, and a runtime for fulfilling queries with existing data. ",
          skillData: "assets/graphql.png"),
      Skill(
          skill: "Html",
          skillDetails: "Hypertext Markup Language is the standard markup language for documents designed to be displayed in a web browser.",
          skillData: "assets/html.png"),
      Skill(
          skill: "Intellij Idea",
          skillDetails: "IntelliJ IDEA is a Java integrated development environment for developing computer software.",
          skillData: "assets/ij.png"),
      Skill(
          skill: "JavaScript",
          skillDetails: "JavaScript, often abbreviated as JS, is a high-level, interpreted programming language that conforms to the ECMAScript specification.",
          skillData: "assets/js.png"),
      Skill(
          skill: "MongoDB",
          skillDetails: "MongoDB is a cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with schema.",
          skillData: "assets/mongoDB.png"),
      Skill(
          skill: "MySQL",
          skillDetails: "MySQL is an open-source relational database management system.",
          skillData: "assets/mysql.png"),
      Skill(
          skill: "PHP",
          skillDetails: "PHP: Hypertext Preprocessor is a general-purpose programming language originally designed for web development.",
          skillData: "assets/php.png"),
      Skill(
          skill: "Next.js",
          skillDetails: "Next.js is a JavaScript framework created by Zeit. It lets you build server-side rendering and static web applications using React.",
          skillData: "assets/next.png"),
      Skill(
          skill: "Node.js",
          skillDetails: "Node.js is an open-source, cross-platform JavaScript run-time environment that executes JavaScript code outside of a browser.",
          skillData: "assets/node.png"),
      Skill(
          skill: "Twillio",
          skillDetails: "Twilio allows software developers to programmatically make and receive phone calls, send and receive text messages.",
          skillData: "assets/twillio.png"),
      Skill(
          skill: "Visual Studio Code",
          skillDetails: "Visual Studio Code is a source-code editor developed by Microsoft for Windows, Linux and macOS.",
          skillData: "assets/visual.png"),
      Skill(
        skill:"Dialogflow",
        skillDetails: "Dialogflow is a Google-owned developer of human–computer interaction technologies based on natural language conversations.",
        skillData: "assets/dialog.png"
      ),
      Skill(
        skill: "Africa's Talking",
        skillDetails: "Powering Communications Solutions Across Africa With simplified access to telco infrastructure, with use of powerful SMS, USSD, Voice, Airtime APIs.",
        skillData: "assets/at.png"
      )
    ];
  }
}
