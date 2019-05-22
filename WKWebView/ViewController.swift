//
//  ViewController.swift
//  WKWebView
//
//  Created by Marco Barnig on 17/11/2016.
//  See LICENSE for details.
//  Copyright © 2016 Marco Barnig.
//  Copyright © 2019 Marcel Kummer (froglogic GmbH).
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    let webViewController = WebViewController()
    @IBOutlet weak var myWebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // let myURL = URL(string: "http://localhost:8042")
        let myURL = URL(string: "https://froglogic.com")!

        myWebView.load(URLRequest(url: myURL))
   }
}

