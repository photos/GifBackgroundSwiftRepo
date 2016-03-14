//
//  ViewController.swift
//  gifPaper
//
//  Created by Forrest Collins on 7/24/15.
//  Copyright (c) 2015 Forrest Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //-------------------
    // MARK: - UI Outlets
    //-------------------
    @IBOutlet var gifWebview: UIWebView!
    
    //----------------------
    // MARK: - View Did Load
    //----------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filePath = NSBundle.mainBundle().pathForResource("starsky", ofType: "gif")
        let gif = NSData(contentsOfFile: filePath!)
        
        let webViewBG: UIWebView = gifWebview
        webViewBG.loadData(gif!, MIMEType: "image/gif", textEncodingName: "UTF-8", baseURL: NSURL(string: "http://localhost/")!)
        webViewBG.userInteractionEnabled = false;
        
        // add black filter to make buttons stand out better
        let filter = UIView()
        filter.frame = self.gifWebview.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.05
        self.gifWebview.addSubview(filter)
    }
}

