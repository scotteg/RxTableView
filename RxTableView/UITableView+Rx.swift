//
//  UITableView+Rx.swift
//  RxTableView
//
//  Created by Scott Gardner on 4/6/16.
//  Copyright © 2016 Scott Gardner. All rights reserved.
//

import UIKit
import RxCocoa

extension UITableView {
  
  var rx_didEndDisplayingCell: ControlEvent<(cell: UITableViewCell, indexPath: NSIndexPath)> {
    let source$ = rx_delegate.observe(#selector(UITableViewDelegate.tableView(_:didEndDisplayingCell:forRowAtIndexPath:)))
      .map { ($0[1] as! UITableViewCell, $0[2] as! NSIndexPath) }
    return ControlEvent(events: source$)
  }
  
}
