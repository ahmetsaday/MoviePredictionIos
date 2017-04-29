//
//  Cell_Video.swift
//  MovieProjection
//
//  Created by osx on 9.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_Content: UITableViewCell {
    
    
    var collection : View_Media?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selected = false
        setCreateVideoUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateVideoUI(){
      
        collection = View_Media(frame: CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height/10), collectionViewLayout: UICollectionViewFlowLayout())
        collection?.backgroundColor = UIColor.brownColor()
        
        self.addSubview(collection!)
        
        
        
        
        
        self.contentView.layoutIfNeeded()
        self.contentView.layoutSubviews()
        
        
    }
}
