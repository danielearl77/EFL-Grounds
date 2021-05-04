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
        loadingText.text = "Loading Fixtures"
        let fixturesURL = (parent as! TeamViewController).teamFixtures
        let myURL = URL(string: fixturesURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        loadFixturesData()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loadingText.isHidden = true
        loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet) {
            loadingSpinner.isHidden = true
            loadingText.text = "ERROR: No Internet Connction"
        }
        print("Error Loading:")
        print(error._code)
    }
        
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        print("Error Loading: Navigation Error")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
