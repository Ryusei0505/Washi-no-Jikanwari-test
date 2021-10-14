//
//  TimeTableController.swift
//  Washi-no-Jikanwari_v1
//
//  Created by Kawai Ryusei on 2021/10/09.
//  Copyright © 2021 Kawai Ryusei. All rights reserved.
//

import UIKit
import SpriteKit

class TimeTableController: UIViewController {
    
    
    func creatTimeTable(frame: Int, week: Int) {
        let viewWidth = self.view.frame.width
        let viewHeight = self.view.frame.height
        
        let custumBtn = FrameButton()
        custumBtn.frame = CGRect(x: viewWidth * Double(1/week), y: viewHeight * 1/frame, width: viewWidth * 0.4, height: viewHeight * 0.2)
        custumBtn.addTarget(self, action: #selector(FrameBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(custumBtn)
        var timeTable: [[String]] = [[String]]()
        for i in 0..<(week){
            for j in 0..<(frame){
                
                
                
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
