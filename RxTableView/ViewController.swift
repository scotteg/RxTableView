//
//  ViewController.swift
//  RxTableView
//
//  Created by Scott Gardner on 4/7/16.
//  Copyright © 2016 Scott Gardner. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  let dataSource$ = Observable.just(SurveyQuestion.allValues)
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    dataSource$
      .bindTo(tableView.rx_itemsWithCellIdentifier("SurveyQuestionCell")) { (row, surveyQuestion: SurveyQuestion, cell: SurveyQuestionCell) in
        
        cell.questionLabel.text = surveyQuestion.rawValue
        
      }.addDisposableTo(disposeBag)
    
    tableView.rx_setDelegate(self).addDisposableTo(disposeBag)
  }
  
}

extension ViewController: UITableViewDelegate {
  
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let label = UILabel()
    label.text = "Section \(section)"
    label.backgroundColor = UIColor.lightGrayColor()
    return label
  }
  
}
