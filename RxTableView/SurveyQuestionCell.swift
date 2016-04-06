//
//  SurveyQuestionCell.swift
//  RxTableView
//
//  Created by Scott Gardner on 4/7/16.
//  Copyright © 2016 Scott Gardner. All rights reserved.
//

import UIKit
import RxSwift

class SurveyQuestionCell: UITableViewCell {
  
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var questionLabelWidthConstraint: NSLayoutConstraint!
  
  var disposeBag = DisposeBag()
  
}
