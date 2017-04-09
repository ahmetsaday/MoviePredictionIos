//
//  Cell_Header.swift
//  MovieProjection
//
//  Created by osx on 7.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_Header: UITableViewCell {
    
    var lbl_test = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        setCreateHeaderUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateHeaderUI(){
        
        self.addSubview(lbl_test)
        lbl_test.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(10)
        }
        lbl_test.text = "deneme"
        
        
        self.contentView.setNeedsLayout()
        self.contentView.setNeedsDisplay()
        self.contentView.layoutIfNeeded()
    }
}
