//
//  FrameButton.swift
//  Washi-no-Jikanwari_v1
//
//  Created by Kawai Ryusei on 2021/10/13.
//  Copyright © 2021 Kawai Ryusei. All rights reserved.
//

import UIKit

class FrameButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitle("TEST", for: UIControl.State.normal)
        self.setTitleColor(UIColor.white, for: UIControl.State.normal)
        self.backgroundColor = UIColor.gray
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)
    }

}
