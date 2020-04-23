//
//  TableViewController.swift
//  Graphics-ios
//
//  Created by lhs7248 on 2020/4/23.
//  Copyright © 2020 lhs7248. All rights reserved.
//

import Foundation
import UIKit


private struct ItemDef {
    let title: String
    let subtitle: String
    let `class`: AnyClass
}


class LSTableViewController: UITableViewController{
    
    private var dataSource:[ItemDef] = [ItemDef(title: "Graphics-line", subtitle: "关于线的绘制", class: LSBaseLineViewController.self),
                                        ItemDef(title: "Graphics-cirlcle", subtitle: "关于圆及椭圆的绘制", class: LSBaseCirlcelViewController.self),
                                        ItemDef(title: "Graphics-Gradients", subtitle: "关于渐变色", class: LSBaseGradientsViewController.self)
                                       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = 66
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectCell") ?? UITableViewCell(style:.subtitle, reuseIdentifier: "selectCell")
        
        let itemDef = self.dataSource[indexPath.row]
        cell.textLabel?.text = itemDef.title
        cell.detailTextLabel?.text = itemDef.subtitle
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let def = self.dataSource[indexPath.row]
               
       let vcClass = def.class as! UIViewController.Type
       let vc = vcClass.init()
       
       self.navigationController?.pushViewController(vc, animated: true)
       tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
}
