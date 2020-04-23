//
//  LSBaseGradientsViewController.swift
//  Graphics-ios
//
//  Created by lhs7248 on 2020/4/23.
//  Copyright © 2020 lhs7248. All rights reserved.
//

import Foundation
import UIKit

class LSBaseGradientsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title  = "关于渐变色绘制"
        
        
        let lineView1 = LSBaseGradientsView1(frame: CGRect(x: 0, y: 88, width: UIScreen.main.bounds.size.width, height: 200))
        self.view .addSubview(lineView1)
        
        let lineView2 = LSBaseGradientsView2(frame: CGRect(x: 0, y: 288, width: UIScreen.main.bounds.size.width, height: 300))
        self.view .addSubview(lineView2)
        
        let lineView3 = LSBaseGradientsView3(frame: CGRect(x: 0, y: 588, width: UIScreen.main.bounds.size.width, height: 300))
        self.view .addSubview(lineView3)
    
    }
}


class LSBaseGradientsView1: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        let context = UIGraphicsGetCurrentContext()

        let locations: [CGFloat] = [ 0.0, 0.25, 0.5, 0.75]

        let colors = [UIColor.red.cgColor,
                  UIColor.green.cgColor,
                  UIColor.blue.cgColor,
                  UIColor.yellow.cgColor]

        let colorspace = CGColorSpaceCreateDeviceRGB()

        let gradient = CGGradient(colorsSpace: colorspace,
                  colors: colors as CFArray, locations: locations)

        var startPoint = CGPoint()
        var endPoint =  CGPoint()

        startPoint.x = 0.0
        startPoint.y = 0.0
        endPoint.x = UIScreen.main.bounds.size.width
        endPoint.y = 400

        context?.drawLinearGradient(gradient!,
                   start: startPoint, end: endPoint,
            options: .drawsBeforeStartLocation)
    }
}
class LSBaseGradientsView2: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()


        let locations: [CGFloat] = [0.0, 0.5, 1.0]

        let colors = [UIColor.red.cgColor,
                       UIColor.green.cgColor,
                       UIColor.cyan.cgColor]

        let colorspace = CGColorSpaceCreateDeviceRGB()

        let gradient = CGGradient(colorsSpace: colorspace,
                         colors: colors as CFArray, locations: locations)

        var startPoint =  CGPoint()
        var endPoint  = CGPoint()

        startPoint.x = 100
        startPoint.y = 100
        endPoint.x = 200
        endPoint.y = 200
        let startRadius: CGFloat = 10
        let endRadius: CGFloat = 75

        context?.drawRadialGradient(gradient!, startCenter: startPoint,
                              startRadius: startRadius, endCenter: endPoint,
                     endRadius: endRadius, options: [])
    }
}
class LSBaseGradientsView3: UIView {
    override func draw(_ rect: CGRect) {
        
        UIColor.white.setFill()
        UIRectFill(rect)
        let context = UIGraphicsGetCurrentContext()
           let locations: [CGFloat] = [0.0, 1.0]

           let colors = [UIColor.white.cgColor,
                             UIColor.blue.cgColor]

           let colorspace = CGColorSpaceCreateDeviceRGB()

           let gradient = CGGradient(colorsSpace: colorspace,
                           colors: colors as CFArray, locations: locations)

           var startPoint = CGPoint()
           var endPoint = CGPoint()
           startPoint.x = 180
           startPoint.y = 80
           endPoint.x = 200
           endPoint.y = 100
           let startRadius: CGFloat = 0
           let endRadius: CGFloat = 75

           context?.drawRadialGradient (gradient!, startCenter: startPoint,
                                startRadius: startRadius, endCenter: endPoint,
                     endRadius: endRadius,
                                options: .drawsBeforeStartLocation)
    }
}
