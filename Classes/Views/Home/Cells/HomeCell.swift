//
//  HomeCell.swift
//  FiberNews
//
//  Created by zhubo on 16/4/11.
//  Copyright © 2016年 zhubo. All rights reserved.
//

import UIKit
import SnapKit

class HomeCell: UICollectionViewCell {
    
    var icon = UIImageView()
    var title = UILabel()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 3
        
        self.icon = UIImageView()
        self.contentView.addSubview(self.icon)
        
        self.title = UILabel()
        self.title.textColor = UIColor.whiteColor()
        self.contentView.addSubview(self.title)
        
        
        self.icon.snp_makeConstraints { (make) in
            
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).offset(-10)
        }
        self.title.snp_makeConstraints(closure: { (make) in
            
            make.top.equalTo(self.icon.snp_bottom)
            make.centerX.equalTo(self)
        })
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
