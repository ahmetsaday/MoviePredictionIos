//
//  Cell_Photo.swift
//  MovieProjection
//
//  Created by osx on 9.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_Photo: UICollectionViewCell {
    
    var img_Photo = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.selected = false
        self.setCreateVideoUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateVideoUI(){
        
        self.addSubview(img_Photo)
        img_Photo.snp_makeConstraints { (make) in
            make.size.equalTo(self)
            make.center.equalTo(self)
        }
        img_Photo.backgroundColor = UIColor.clearColor()
        img_Photo.layer.masksToBounds = true
        img_Photo.contentMode = UIViewContentMode.ScaleAspectFill
        
    }
}
