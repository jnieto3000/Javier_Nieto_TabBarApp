//
//  esp8266VC.swift
//  JavierNieto_TabBarApp
//
//  Created by X on 6/14/20.
//  Copyright © 2020 X. All rights reserved.
//
import WebKit
import UIKit

class esp8266VC: UIViewController, WKNavigationDelegate, WKUIDelegate {

    @IBOutlet weak var esp1WebView: WKWebView!

    var webView: WKWebView!
   
        var receivingLinks: String = "https://youtu.be/3cg8mhXPz2M"
        
        
        override func loadView() {
           webView = WKWebView()
           webView.navigationDelegate = self
            view = webView
            //webView = WKWebView(frame: .zero, configuration: webConfiguration)
            //webView.uiDelegate = self
            //view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
  
        
        // setting up myURL links with WebView http://192.168.43.249/
            let myURL = URL(string: "http://192.168.43.249/")!
            //esp1WebView.load(URLRequest(url: myURL))
            //webView.allowsBackForwardNavigationGestures = true
            //webView.allowsLinkPreview = true
            webView.load(URLRequest(url: myURL))
        }
    }
