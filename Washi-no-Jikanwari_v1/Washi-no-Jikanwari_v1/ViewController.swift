//
//  ViewController.swift
//  Washi-no-Jikanwari_v1
//
//  Created by Kawai Ryusei on 2021/10/08.
//  Copyright © 2021 Kawai Ryusei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timeTableName = "テスト前期時間割"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = "Test"
        
        // 1.真ん中に配置したいボタンをコードで作る ---------
        
        let sampleButton = UIButton(type: .system)
        
        sampleButton.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        sampleButton.backgroundColor = UIColor.blue
        sampleButton.setTitle(timeTableName, for: .normal)
        sampleButton.setTitleColor(UIColor.white, for: .normal)
        sampleButton.layer.cornerRadius = 5
        sampleButton.addTarget(self, action: #selector(ViewController.tappedButton), for: .touchUpInside)
        
        navigationItem.titleView = sampleButton
        
        // ----------------------------------------
        
        super.viewDidLoad()
        
        let viewWidth = self.view.frame.width
        let viewHeight = self.view.frame.height
        
        let custumBtn = FrameButton()
        custumBtn.frame = CGRect(x: viewWidth * 0.4, y: viewHeight * 0.4, width: viewWidth * 0.4, height: viewHeight * 0.2)
        custumBtn.addTarget(self, action: #selector(FrameBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(custumBtn)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @objc func tappedButton() {
        print("Button tapped.")
    }
    @objc func FrameBtnClicked(sender:UIButton) {
        print("ボタンが押されたよ")
    }
}

