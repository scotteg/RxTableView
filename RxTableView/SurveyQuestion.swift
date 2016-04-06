//
//  SurveyQuestion.swift
//  RxTableView
//
//  Created by Scott Gardner on 4/7/16.
//  Copyright © 2016 Scott Gardner. All rights reserved.
//

import Foundation

enum SurveyQuestion: String {
  
  case Age       = "How old are you?"
  case Hometown  = "Where did you grow up?"
  case Food      = "What is your favorite food?"
  case Superhero = "Who is your favorite superhero?"
  
  static let allValues: [SurveyQuestion] = [.Age, .Hometown, .Food, .Superhero]
  
}
