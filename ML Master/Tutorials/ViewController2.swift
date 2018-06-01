//
//  ViewController2ViewController.swift
//  pageViewBlog
//
//  Created by Paul Tangen on 1/26/17.
//  Copyright © 2017 Paul Tangen. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var labelInst2 = UILabel()
    var labelDesc2 = UILabel()
    var label2 = UILabel()
    var imageVc2 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        // label
        labelInst2.text = "Gallery"
        labelInst2.font = PKTheme.Regular36
        labelInst2.textColor = themeColor
        labelInst2.textAlignment = .center
        //labelInst2.frame = CGRect(x: 20, y: 80 * HEIGHTTHEME, width:self.view.frame.size.width - 40, height:100)
        
        labelDesc2.text = "Get name from image by using gallery."
        labelDesc2.font = PKTheme.Regular16
        labelDesc2.textColor = themeColor
        labelDesc2.numberOfLines = 3
        labelDesc2.textAlignment = .center
        //labelDesc2.frame = CGRect(x: 100*WIDTHTHEME, y: 100 * HEIGHTTHEME, width:self.view.frame.size.width - (200*WIDTHTHEME), height:200*HEIGHTTHEME)
        
        //imageVc2.frame = CGRect(x: (self.view.frame.size.width-200)/2, y: 280 * HEIGHTTHEME, width: 200, height:160)
        imageVc2.backgroundColor = UIColor.clear
        imageVc2.image = UIImage.init(named: "gallery_icon.png")
        
        //label2.frame = CGRect(x: 50, y: 560 * HEIGHTTHEME, width:self.view.frame.size.width - 100, height:1)
        label2.backgroundColor = themeColor
        
        self.view.addSubview(labelInst2)
        self.view.addSubview(labelDesc2)
        self.view.addSubview(imageVc2)
        self.view.addSubview(label2)
    }
    
    override func viewWillLayoutSubviews() {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let SCREENHEIGHT2 = screenSize.height
        let HEIGHTTHEME2 = (SCREENHEIGHT2 / 667)
        
        if (deviceIdiom1 == .pad) {
            labelInst2.font = PKTheme.Regular48
            labelDesc2.font = PKTheme.Regular36
            labelInst2.frame = CGRect(x: 20, y: 110 * HEIGHTTHEME2, width:self.view.frame.size.width - 40, height:100 * HEIGHTTHEME2)
            labelDesc2.frame = CGRect(x: 100, y: 100 * HEIGHTTHEME2, width:self.view.frame.size.width - 200, height:200*HEIGHTTHEME2)
            imageVc2.frame = CGRect(x: (self.view.frame.size.width-100)/2, y: 280 * HEIGHTTHEME2, width: 100, height:100)
            label2.frame = CGRect(x: 50, y: 580 * HEIGHTTHEME2, width:self.view.frame.size.width - 100, height:1)
        } else {
            labelInst2.frame = CGRect(x: 20, y: 80 * HEIGHTTHEME, width:self.view.frame.size.width - 40, height:100)
            labelDesc2.frame = CGRect(x: 100*WIDTHTHEME, y: 100 * HEIGHTTHEME, width:self.view.frame.size.width - (200*WIDTHTHEME), height:200*HEIGHTTHEME)
            imageVc2.frame = CGRect(x: (self.view.frame.size.width-100)/2, y: 280 * HEIGHTTHEME, width: 100, height:100)
            label2.frame = CGRect(x: 50, y: 580 * HEIGHTTHEME, width:self.view.frame.size.width - 100, height:1)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
