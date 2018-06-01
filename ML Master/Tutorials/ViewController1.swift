//
//  ViewController.swift
//  pageViewBlog
//
//  Created by Paul Tangen on 1/26/17.
//  Copyright © 2017 Paul Tangen. All rights reserved.
//

import UIKit

let deviceIdiom1 = UIScreen.main.traitCollection.userInterfaceIdiom

class ViewController1: UIViewController {
    
    var labelInst = UILabel()
    var labelDesc = UILabel()
    var labelInst1 = UILabel()
    var imageVc = UIImageView()
    
    //Request an UITraitCollection instance
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        // label
        labelInst.text = "Camera"
        labelInst.font = PKTheme.Regular36
        labelInst.textColor = themeColor
        labelInst.textAlignment = .center
        
        
        labelDesc.text = "Get name from image by using camera."
        labelDesc.font = PKTheme.Regular16
        labelDesc.textColor = themeColor
        labelDesc.numberOfLines = 3
        labelDesc.textAlignment = .center
        
        imageVc.backgroundColor = UIColor.clear
        imageVc.image = UIImage.init(named: "camera_icon.png")

        
        labelInst1.backgroundColor = themeColor
        
        
        
        self.view.addSubview(labelInst)
        self.view.addSubview(labelDesc)
        self.view.addSubview(imageVc)
        self.view.addSubview(labelInst1)
        
//        labelInst.translatesAutoresizingMaskIntoConstraints = false
//        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
//        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
    }
    
    override func viewWillLayoutSubviews() {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let SCREENHEIGHT1 = screenSize.height
        let HEIGHTTHEME1 = (SCREENHEIGHT1 / 667)
        
        if (deviceIdiom1 == .pad) {
            labelInst.font = PKTheme.Regular48
            labelDesc.font = PKTheme.Regular36
            labelInst.frame = CGRect(x: 20, y: 110 * HEIGHTTHEME1, width:self.view.frame.size.width - 40, height:100 * HEIGHTTHEME1)
            labelDesc.frame = CGRect(x: 100, y: 100 * HEIGHTTHEME1, width:self.view.frame.size.width - 200, height:200*HEIGHTTHEME1)
            imageVc.frame = CGRect(x: (self.view.frame.size.width-100)/2, y: 280 * HEIGHTTHEME1, width: 100, height:100)
            labelInst1.frame = CGRect(x: 50, y: 580 * HEIGHTTHEME1, width:self.view.frame.size.width - 100, height:1)
        } else {
            labelInst.frame = CGRect(x: 20, y: 80 * HEIGHTTHEME, width:self.view.frame.size.width - 40, height:100)
            labelDesc.frame = CGRect(x: 100*WIDTHTHEME, y: 100 * HEIGHTTHEME, width:self.view.frame.size.width - (200*WIDTHTHEME), height:200*HEIGHTTHEME)
            imageVc.frame = CGRect(x: (self.view.frame.size.width-100)/2, y: 280 * HEIGHTTHEME, width: 100, height:100)
            labelInst1.frame = CGRect(x: 50, y: 580 * HEIGHTTHEME, width:self.view.frame.size.width - 100, height:1)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

