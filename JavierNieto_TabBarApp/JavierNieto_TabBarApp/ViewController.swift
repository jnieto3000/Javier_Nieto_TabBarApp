//
//  ViewController.swift
//  JavierNieto_TabBarApp
//
//  Created by X on 6/14/20.
//  Copyright © 2020 X. All rights reserved.
// ** M06 Assignment: Tab or Toolbar App
// 1) Select some data that is not hierarchical in nature (e.g., a collection of items or topics).
// 2) Create a tab- or toolbar-based app that will allow your user to navigate through some information in an intuitive fashion.
// 3)Be sure to create some custom icons for your tab or toolbar.
// 3a) Worked on Arduino MCU ESP8266 with 2 DHT11 temperture sensors. ESP8266 read and created a webpage to host with dns

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {

    var webView: WKWebView!
    var links: String = "http://192.168.43.92"
      
      
      override func loadView() {
         webView = WKWebView()
         webView.navigationDelegate = self
          view = webView
      }

      override func viewDidLoad() {
          super.viewDidLoad()
          
      // setting up myURL links with WebView http://192.168.43.249/
          let myURL = URL(string: links)!
          //webView.allowsBackForwardNavigationGestures = true
          //webView.allowsLinkPreview = true
          webView.load(URLRequest(url: myURL))
      }
  }
