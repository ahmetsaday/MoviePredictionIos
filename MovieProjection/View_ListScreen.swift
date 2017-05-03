//
//  View_Detail.swift
//  MovieProjection
//
//  Created by osx on 28.03.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit

class View_Detail: UIView {
    
    var tableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(target:Controller_ListScreen){
        
        self.backgroundColor = UIColor.clearColor()
        
        tableView.frame = self.frame
        tableView.registerClass(Cell_ListScreen.self, forCellReuseIdentifier: "Cell_ListScreen")
        tableView.rowHeight = self.frame.height/5
        tableView.delegate = target
        tableView.dataSource = target
        tableView.backgroundColor = UIColor.clearColor()
        tableView.tableFooterView = UIView(frame: CGRectZero)
        //tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.addSubview(tableView)
    }
}
