//
//  LSBaseLineViewController.swift
//  Graphics-ios
//
//  Created by lhs7248 on 2020/4/23.
//  Copyright © 2020 lhs7248. All rights reserved.
//

import Foundation
import UIKit

class LSBaseLineViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title  = "关于线条绘制"
        
        
        let lineView1 = LSBaseLineView(frame: CGRect(x: 0, y: 88, width: UIScreen.main.bounds.size.width, height: 100))
        self.view .addSubview(lineView1)
        
        let lineView2 = LSBaseLineView2(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: 100))
        self.view .addSubview(lineView2)
        
        
        let lineView3 = LSBaseLineView3(frame: CGRect(x: 0, y: 320, width: UIScreen.main.bounds.size.width, height: 100))
        self.view .addSubview(lineView3)
    }
}

class LSBaseLineView: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
           context?.setLineWidth(2.0)
           let colorSpace = CGColorSpaceCreateDeviceRGB()
           let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0]
           let color = CGColor(colorSpace: colorSpace, components: components)
           context?.setStrokeColor(color!)
           context?.move(to: CGPoint(x: 30, y: 30))
           context?.addLine(to: CGPoint(x: 100, y: 100))
           context?.strokePath()
        
    }
}
class LSBaseLineView2: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(2.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.move(to: CGPoint(x:100, y: 0))
        context?.addLine(to: CGPoint(x: 150, y: 50))
        context?.addLine(to: CGPoint(x: 100, y: 100))
        context?.addLine(to: CGPoint(x: 50, y: 50))
        context?.addLine(to: CGPoint(x: 100, y: 0))
        context?.strokePath()
        
    }
}

class LSBaseLineView3: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        let rectangle = CGRect(x: 60,y: 10,width: 200,height: 80)
        context?.addRect(rectangle)
        context?.strokePath()
        
    }
}

