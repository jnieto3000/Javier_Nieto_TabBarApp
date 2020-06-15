//
//  webVC.swift
//  JavierNieto_TabBarApp
//
//  Created by X on 6/15/20.
//  Copyright © 2020 X. All rights reserved.
//

import UIKit

class webVC: UIViewController {

    @IBOutlet weak var videoView: UIWebView!

        
        override func viewDidLoad() {
            super.viewDidLoad()
           // https://youtu.be/1A4-6hDARQc
            let youtubeURL = "https://www.youtube.com/embed/sEydyLJ-wjw"
            let url = "<iframe width=\"\(videoView.frame.width)\" height=\"\(videoView.frame.height)\" src=\"\(youtubeURL)/?playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>"
            
            // inline with width and height
            videoView.allowsInlineMediaPlayback = true
            videoView.loadHTMLString(url, baseURL: nil)
        }
    
}
