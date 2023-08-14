//
//  TeamFixturesViewController.swift
//  EFL Grounds
//
//  Created by Macbook Pro on 15/08/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import WebKit

class TeamFixturesViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var loadingText: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    
    func loadFixturesData() {
        loadingText.isHidden = true
        loadingSpinner.startAnimating()
        loadingSpinner.isHidden = false
        let fixturesURL = (parent as! TeamViewController).teamFixtures
        let myURL = URL(string: fixturesURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loadingSpinner.stopAnimating()
        loadingSpinner.isHidden = true
        loadingText.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                          didFailProvisionalNavigation navigation: WKNavigation!,
                          withError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet) {
            NSLog("No Internet Connection")
            loadingSpinner.stopAnimating()
            loadingSpinner.isHidden = true
            loadingText.text = "ERROR: No Internet Connection"
            loadingText.isHidden = false
        }
        loadingText.text = "ERROR: Unable to load page"
        loadingText.isHidden = false
        loadingSpinner.stopAnimating()
        loadingSpinner.isHidden = true
        NSLog("Error Loading:")
        print(error._code)
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        loadingSpinner.stopAnimating()
        loadingSpinner.isHidden = true
        loadingText.text = "ERROR: Unable to load page"
        loadingText.isHidden = false
        NSLog("Error Loading: Navigation Error")
        print(error._code)
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
        loadFixturesData()
        // Do any additional setup after loading the view.
    }
    
}
