//
//  SearchViewController.swift
//  ML Master
//
//  Created by Prasanna kumar on 05/05/18.
//  Copyright © 2018 Prasanna kumar. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var webViewController = UIWebView()
    var searchText = NSString()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.view.backgroundColor = UIColor.white

        let button1 = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backAction))
        button1.tintColor = themeColor
        self.navigationItem.leftBarButtonItem  = button1
        
        //Do any additional setup after loading the view.
        self.view.addSubview(webViewController)
        searchTextOnGoogle(searchText as String)
        
    }

    override func viewWillLayoutSubviews() {
        webViewController.frame = CGRect(x: 0, y: 65 , width: self.view.frame.size.width, height: self.view.frame.size.height)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @objc func backAction() {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func searchTextOnGoogle(_ text: String) {
        // check if text contains more then one word separated by space
        let textComponents = text.components(separatedBy: " ")
        
        // we replace space with plus to validate the string for the search url
        let searchString = textComponents.joined(separator: "+")
        
        guard let url = URL(string: "https://www.google.com/search?q=" + searchString) else { return }
        
        let urlRequest = URLRequest(url: url)
        webViewController.loadRequest(urlRequest)
    }
    
    /*
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     
     guard let urlString = urlTextField.text else { return true }
     
     if urlString.starts(with: "http://") || urlString.starts(with: "https://") {
     loadUrl(urlString)
     } else if urlString.contains(“www”) {
     loadUrl("http://\(urlString)")
     } else {
     searchTextOnGoogle(urlString)
     }
     
     textField.resignFirstResponder()
     //...
     
     return true
     }
     
     func loadUrl(_ urlString: String) {
     guard let url = URL(string: urlString) else { return }
     
     let urlRequest = URLRequest(url: url)
     webView.load(urlRequest)
     }
     
     func searchTextOnGoogle(_ text: String) {
     // check if text contains more then one word separated by space
     let textComponents = text.components(separatedBy: " ")
     
     // we replace space with plus to validate the string for the search url
     let searchString = textComponents.joined(separator: "+")
     
     guard let url = URL(string: "https://www.google.com/search?q=" + searchString) else { return }
     
     let urlRequest = URLRequest(url: url)
     webView.load(urlRequest)
     }

     */

}
