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

let notifyKeyOutput = "output"

var outputText = "Welcome.\n"

class ViewController: NSViewController, feedBack {
    
    // Delegation from WebViewController to ViewController works for the "dummy" function react, 
    // but not for the native delegate functions of WKWebView.
    // For this reason we use notifications to request text output in this ViewController.
    
    let webViewController = WebViewController()  
    

    
    @objc func output() {
        myTextView.string = outputText
    }  // end func

    @IBOutlet var myTextView: NSTextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         NotificationCenter.default.addObserver(self, selector: #selector(output), name: NSNotification.Name(rawValue: notifyKeyOutput), object: nil)           
        outputText += "ViewController View loaded.\n"
        output()
        // register delegation
        webViewController.delegate = self
        webViewController.react()
        
    }  // end func

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}  // end class

