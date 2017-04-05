//
//  Cell_ListScreen.swift
//  MovieProjection
//
//  Created by osx on 28.03.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_ListScreen: UITableViewCell {
    
    var label = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        //setCreateUI()
        
        setCreateUI()
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateUI(){
        
        self.addSubview(label)
        label.snp_makeConstraints { (make) in
            make.top.equalTo(self)
            make.bottom.equalTo(self)
            make.right.equalTo(self)
            make.left.equalTo(self)
        }
        label.textColor = UIColor.blueColor()
        label.textAlignment = NSTextAlignment.Center
        
        
        
        
       // self.backgroundColor = UIColor.whiteColor()
        
        self.contentView.setNeedsLayout()
        self.contentView.setNeedsDisplay()
        self.contentView.layoutIfNeeded()

    }
}
