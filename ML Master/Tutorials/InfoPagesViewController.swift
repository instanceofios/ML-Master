//
//  InfoPagesViewController.swift
//  ML Master
//
//  Created by Prasanna kumar on 22/04/18.
//  Copyright © 2018 Prasanna kumar. All rights reserved.
//

import UIKit

class InfoPagesViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var pageVc = UIPageViewController()
    
    var pages = [UIViewController]()
    let pageControl = UIPageControl()
    //var btnNext = UIButton()
    var initialPage = NSInteger()
    //var lbl_info = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isHidden = true
        
        UserDefaults.standard.set(true, forKey: "firstlogin")
        UserDefaults.standard.synchronize()
        
        pageVc.dataSource = self
        pageVc.delegate = self
        initialPage = 0
        let page1 = ViewController1()
        let page2 = ViewController2()
        let page3 = ViewController3()
        
        // add the individual viewControllers to the pageViewController
        pages.append(page1)
        pages.append(page2)
        pages.append(page3)
        pageVc.setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
        
        // pageControl
        self.pageControl.frame = CGRect()
        self.pageControl.currentPageIndicatorTintColor = themeColor
        self.pageControl.pageIndicatorTintColor = UIColor.lightGray
        self.pageControl.numberOfPages = self.pages.count
        self.pageControl.currentPage = initialPage
        
        //self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        //self.pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        //self.pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
        //self.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //self.pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.pageControl.backgroundColor = UIColor.clear
        
        

        self.view.addSubview(pageVc.view)
        self.view.addSubview(self.pageControl)
        
        
        
//        btnNext.frame = CGRect(x: 50, y: 600 * HEIGHTTHEME, width:self.view.frame.size.width - 100, height:40)
//        btnNext.titleLabel?.text = "NEXT"
//        btnNext.titleLabel?.font = PKTheme.Regular16
//        btnNext.titleLabel?.textColor = themeColor
//        btnNext.addTarget(self, action: #selector(nextMethod), for: UIControlEvents.touchUpInside)
//        btnNext.backgroundColor = UIColor.red
//        self.view.addSubview(btnNext)
//        lbl_info.text = "<-- Swipe"
//        lbl_info.font = PKTheme.Regular20
//        lbl_info.textColor = UIColor.white
//        lbl_info.textAlignment = .center
//        lbl_info.frame = CGRect(x: 20, y: 570 * HEIGHTTHEME, width:self.view.frame.size.width - 40, height:100)
//        self.view.addSubview(lbl_info)
    }

//    @objc func nextMethod() {
//        self.pageControl.currentPage = (initialPage + 1)
//    }
    
    override func viewWillLayoutSubviews() {
        pageVc.view.frame = CGRect(x: 0, y: 0, width:self.view.frame.size.width, height:self.view.frame.size.height)
        pageControl.frame = CGRect(x: 0, y: self.view.frame.size.height - 140, width: self.view.frame.size.width, height:30)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex == 0 {
                // wrap to last page in array
                return self.pages.last
            } else {
                // go to previous page in array
                return self.pages[viewControllerIndex - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex < self.pages.count - 1 {
                // go to next page in array
                return self.pages[viewControllerIndex + 1]
            } else {
                if(viewControllerIndex == (self.pages.count - 1)) {
                    let gridVC = MLHomeViewController(nibName:nil, bundle: nil)
                    self.navigationController?.pushViewController(gridVC, animated: true)
                } else {
                    // wrap to first page in array
                    return self.pages.first
                }
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        // set the pageControl.currentPage to the index of the current viewController in pages
        if let viewControllers = pageViewController.viewControllers {
            if let viewControllerIndex = self.pages.index(of: viewControllers[0]) {
                self.pageControl.currentPage = viewControllerIndex
            }
        }
    }

}
