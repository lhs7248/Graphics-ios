//
//  LSBaseCirlcelViewController.swift
//  Graphics-ios
//
//  Created by lhs7248 on 2020/4/23.
//  Copyright © 2020 lhs7248. All rights reserved.
//

import Foundation
import UIKit

class LSBaseCirlcelViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title  = "关于弧线绘制"
        
        
        let lineView1 = LSBaseCirlceView1(frame: CGRect(x: 0, y: 88, width: UIScreen.main.bounds.size.width, height: 200))
        self.view .addSubview(lineView1)
        
        let lineView2 = LSBaseCirlceView2(frame: CGRect(x: 0, y: 300, width: UIScreen.main.bounds.size.width, height: 200))
        self.view .addSubview(lineView2)
        
        
        let lineView3 = LSBaseCirlceView3(frame: CGRect(x: 0, y: 520, width: UIScreen.main.bounds.size.width, height: 200))
        self.view .addSubview(lineView3)
    }
}


class LSBaseCirlceView1: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
//        let context = UIGraphicsGetCurrentContext()
//        context?.setLineWidth(4.0)
//        context?.setStrokeColor(UIColor.blue.cgColor)
//        let rectangle = CGRect(x: 60,y: 10,width: 200,height: 80)
//        context?.addEllipse(in: rectangle)
//        context?.strokePath()
        
        let context = UIGraphicsGetCurrentContext()
        let myShadowOffset = CGSize (width: -10,  height: 15)

        context?.saveGState()
        context?.setShadow (offset: myShadowOffset, blur: 5)
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        let rectangle = CGRect(x: 60,y: 10,width: 200,height: 80)
        context?.addEllipse(in: rectangle)
        context?.strokePath()
        context?.restoreGState()
        
    }
}
class LSBaseCirlceView2: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.move(to: CGPoint(x: 100, y: 0))
        context?.addArc(tangent1End: CGPoint(x: 100, y: 100),
           tangent2End: CGPoint(x: 300, y: 200), radius: 150)
        context?.strokePath()
    }
}

class LSBaseCirlceView3: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.move(to: CGPoint(x: 10, y: 10))
        context?.addCurve(to: CGPoint(x: 0, y: 50),
                  control1: CGPoint(x: 300, y: 190),
                  control2: CGPoint(x: 300, y: 40))
        context?.strokePath()
        
    }
}

class LSBaseCirlceView4: UIView {
    
    override func draw(_ rect: CGRect) {
    
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.move(to: CGPoint(x:100, y: 0))
        context?.addLine(to: CGPoint(x: 150, y: 50))
        context?.addLine(to: CGPoint(x: 100, y: 100))
        context?.addLine(to: CGPoint(x: 50, y: 50))
        context?.addLine(to: CGPoint(x: 100, y: 0))
        
        context?.fillPath()
    }
    
}
    
class LSBaseCirlceView5: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        let rectangle = CGRect(x: 60,y: 170,width: 200,height: 80)
        context?.addEllipse(in: rectangle)
        context?.strokePath()
        
    }
    
}
