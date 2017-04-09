//
//  Cell_Video.swift
//  MovieProjection
//
//  Created by osx on 9.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_Video: UICollectionViewCell {
    
    var img_Video = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.selected = false
        self.setCreateVideoUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateVideoUI(){
        
        self.addSubview(img_Video)
        img_Video.snp_makeConstraints { (make) in
            make.size.equalTo(self)
            make.center.equalTo(self)
        }
        img_Video.backgroundColor = UIColor.clearColor()
        img_Video.layer.masksToBounds = true
        img_Video.contentMode = UIViewContentMode.ScaleAspectFill
        
    }
}
