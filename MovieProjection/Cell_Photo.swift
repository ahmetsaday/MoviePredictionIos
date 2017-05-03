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
    var testText = UILabel()
    
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
        img_Photo.backgroundColor = UIColor.whiteColor()
        img_Photo.layer.masksToBounds = true
        img_Photo.contentMode = UIViewContentMode.ScaleAspectFill
        
        self.addSubview(testText)
        testText.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(10)
            make.left.equalTo(self.snp_left).offset(10)
        }
        testText.text = "test text"
        
    }
}
