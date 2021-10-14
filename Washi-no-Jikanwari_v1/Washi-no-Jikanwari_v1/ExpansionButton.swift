//
//  ExpansionButton.swift
//  Washi-no-Jikanwari_v1
//
//  Created by Kawai Ryusei on 2021/10/08.
//  Copyright © 2021 Kawai Ryusei. All rights reserved.
//

import UIKit

final class ExpansionButton: UIButton {
    
    @IBInspectable var top: CGFloat {
        get { return insets.top }
        set { insets.top = newValue }
    }
    @IBInspectable var left: CGFloat {
        get { return insets.left }
        set { insets.left = newValue }
    }
    @IBInspectable var bottom: CGFloat {
        get { return insets.bottom }
        set { insets.bottom = newValue }
    }
    @IBInspectable var right: CGFloat {
        get { return insets.right }
        set { insets.right = newValue }
    }
    
    var insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var rect = bounds
        rect.origin.x -= insets.left
        rect.origin.y -= insets.top
        rect.size.width += insets.left + insets.right
        rect.size.height += insets.top + insets.bottom
        
        return rect.contains(point)
    }
}
