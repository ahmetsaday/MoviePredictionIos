//
//  Cell_Actor_Label.swift
//  MovieProjection
//
//  Created by osx on 20.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SnapKit

class Cell_Actor_Label: UITableViewCell {
    
    var lbl_actor_tag = UILabel()
    var lbl_role_tag = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        setCreateUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCreateUI(){
        
        self.addSubview(lbl_actor_tag)
        lbl_actor_tag.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(20)
            make.left.equalTo(self.snp_left).offset(20)
        }
        lbl_actor_tag.text = "Oyuncular"
        
        
        self.addSubview(lbl_role_tag)
        lbl_role_tag.snp_makeConstraints{ (make) in
            make.top.equalTo(self.snp_top).offset(20)
            make.left.equalTo(self.snp_left).offset(200)
        }
        lbl_role_tag.text = "Roller"
        
    }
}
