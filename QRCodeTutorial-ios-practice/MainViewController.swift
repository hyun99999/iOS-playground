//
//  ViewController.swift
//  QRCodeTutorial-ios-practice
//
//  Created by kimhyungyu on 2021/01/12.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string:
            "https://www.naver.com")
        let requestObj = URLRequest(url: url!)
        webView.load(requestObj)
    }
    


}

