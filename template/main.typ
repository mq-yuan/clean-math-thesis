// global
#import "lib.typ": template

//local
#import "customization/colors.typ": *


#show: template.with(
  // personal/subject related stuff
  author: "Student Name, Student ID",
  title: "My Very Fancy and Good-Looking Thesis About Interesting Stuff",
  program: "Advanced Optimization",
  university: "Nanjing University",
  institute: "School of Intelligence Science and Technology",
  deadline: datetime.today(),
  city: "Suzhou",

  // file paths for logos etc.
  uni-logo: image("images/nju_all.svg", width: 100%),
  institute-logo: none,

  // formatting settings
  body-font: "Libertinus Serif",
  cover-font: "Libertinus Serif",

  // chapters that need special placement
  abstract: include "chapter/abstract.typ",

  // equation settings
  equate-settings: (breakable: true, sub-numbering: true, number-mode: "label"),
	equation-numbering-pattern: "(1.1)",

  // colors
  cover-color: color1,
  heading-color: color2,
  link-color: color3,

  subtype: "report"
)

// ------------------- content -------------------
#include "chapter/introduction.typ"
#include "chapter/dummy_chapter.typ"
#include "chapter/conclusions_outlook.typ"
#include "chapter/appendix.typ"

// ------------------- bibliography -------------------
#bibliography("References.bib")

// ------------------- declaration -------------------
#include "chapter/declaration.typ"
