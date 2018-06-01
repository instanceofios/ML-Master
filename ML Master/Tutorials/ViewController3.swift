//
//  ViewController3.swift
//  pageViewBlog
//
//  Created by Paul Tangen on 1/26/17.
//  Copyright © 2017 Paul Tangen. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    var labelInst3 = UILabel()
    var labelDesc3 = UILabel()
    var label3 = UILabel()
    var imageVc3 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        // label
        labelInst3.text = "Live Video"
        labelInst3.font = PKTheme.Regular36
        labelInst3.textColor = themeColor
        labelInst3.textAlignment = .center
        
        labelDesc3.text = "Get Name from image by using live camera."
        labelDesc3.font = PKTheme.Regular16
        labelDesc3.textColor = themeColor
        labelDesc3.numberOfLines = 3
        labelDesc3.textAlignment = .center
        
        imageVc3.backgroundColor = UIColor.clear
        imageVc3.image = UIImage.init(named: "video_icon1.png")
        label3.backgroundColor = themeColor
        
        self.view.addSubview(labelInst3)
        self.view.addSubview(labelDesc3)
        self.view.addSubview(imageVc3)
        self.view.addSubview(label3)
        
    }

    override func viewWillLayoutSubviews() {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let SCREENHEIGHT1 = screenSize.height
        let HEIGHTTHEME1 = (SCREENHEIGHT1 / 667)
        
        if (deviceIdiom1 == .pad) {
            labelInst3.font = PKTheme.Regular48
            labelDesc3.font = PKTheme.Regular36
            labelInst3.frame = CGRect(x: 20, y: 110 * HEIGHTTHEME1, width:self.view.frame.size.width - 40, height:100 * HEIGHTTHEME1)
            labelDesc3.frame = CGRect(x: 100, y: 100 * HEIGHTTHEME1, width:self.view.frame.size.width - 200, height:200*HEIGHTTHEME1)
            imageVc3.frame = CGRect(x: (self.view.frame.size.width-100)/2, y: 280 * HEIGHTTHEME1, width: 100, height:100)
            label3.frame = CGRect(x: 50, y: 580 * HEIGHTTHEME1, width:self.view.frame.size.width - 100, height:1)
        } else {
            labelInst3.frame = CGRect(x: 20, y: 80 * HEIGHTTHEME, width:self.view.frame.size.width - 40, height:100)
            labelDesc3.frame = CGRect(x: 100*WIDTHTHEME, y: 100 * HEIGHTTHEME, width:self.view.frame.size.width - (200*WIDTHTHEME), height:200*HEIGHTTHEME)
            imageVc3.frame = CGRect(x: (self.view.frame.size.width-100)/2, y: 280 * HEIGHTTHEME, width: 100, height:100)
            label3.frame = CGRect(x: 50, y: 580 * HEIGHTTHEME, width:self.view.frame.size.width - 100, height:1)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
