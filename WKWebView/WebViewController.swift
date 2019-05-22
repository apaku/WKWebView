//
//  WebViewController.swift
//  WKWebView
//
//  Created by Marco Barnig on 17/11/2016.
//  See LICENSE for details.
//  Copyright © 2016 Marco Barnig.
//  Copyright © 2019 Marcel Kummer (froglogic GmbH).
//

import Cocoa
import WebKit

class WebViewController: NSObject, WKUIDelegate, WKNavigationDelegate {
    func webView(_ myWebView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("didStartProvisionalNavigation")
    }
    
    func webView(_ myWebView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError: Error) {
        print("didFailProvisionalNavigation")
    }
    
    func webView(_ myWebView: WKWebView, didCommit navigation: WKNavigation!) {
        print("didCommit")
    }
    
    func webView(_ myWebView: WKWebView, didFinish navigation: WKNavigation!) {
        print("didFinish")
    }
    
    func webView(_ myWebView: WKWebView, didFail navigation: WKNavigation!, withError: Error) {
        print("didFail")
    }
    
    func webView(_ myWebView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil {
            let newLink = navigationAction.request
            openSafari(newLink.url!)
        }
        return nil
    }
    
    func openSafari(_ url: URL) {
        NSWorkspace.shared.open(url)
    }
}
