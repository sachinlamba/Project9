//
//  DetailViewController.swift
//  Project7
//
//  Created by Sachin Lamba on 24/06/16.
//  Copyright © 2016 LambaG. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    
    var detailItem: [String: String]! {
        didSet {
            collectData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectData() {
        guard detailItem != nil else {return}
        
        if let body = detailItem["body"], title = detailItem["title"] {
            var html = "<html>"
            html += "<head>"
            html += "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
            html += "<style> body { font-size: 150%; } </style>"
            html += "</head>"
            html += "<body>"
            html += "<h2>" + title + "</h2>"
            html += body
            //sigs = detailItem["sigs"]
           // html += "<h4>Signatures: " + sigs + "</h4>"
            html += "</body>"
            html += "</html>"
            
            let webView = UIWebView()
            webView.loadHTMLString(html, baseURL: nil)
            view = webView
        }
        
    
    }
}
