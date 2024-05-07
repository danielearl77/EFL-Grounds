//
//  TeamTrainsViewController.swift
//  EFL Grounds
//
//  Created by Macbook Pro on 15/08/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import WebKit

class TeamTrainsViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var backButtonSetting: UIButton!
    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    
    func loadStationData() {
        errorMsg.isHidden = true
        loadingSpinner.startAnimating()
        loadingSpinner.isHidden = false
        let station = (parent as! TeamViewController).stationCode
        if station == "XXX" {
            loadingSpinner.stopAnimating()
            loadingSpinner.isHidden = true
            errorMsg.text = "This ground is not close\nto any National Rail Station.\nPlease check the public\ntransport section for other options."
            errorMsg.isHidden = false
        } else {
            var stationURL = "http://m.nationalrail.co.uk/pj/ldbboard/dep/"
            stationURL.append(station)
            let myURL = URL(string: stationURL)
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loadingSpinner.stopAnimating()
        loadingSpinner.isHidden = true
        errorMsg.isHidden = true
        let allowBack = webView.canGoBack
        if allowBack == true {
            backButtonSetting.isHidden = false
        } else {
            backButtonSetting.isHidden = true
        }
    }
    
    func webView(_ webView: WKWebView,
                          didFailProvisionalNavigation navigation: WKNavigation!,
                          withError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet) {
            NSLog("No Internet Connection")
            loadingSpinner.stopAnimating()
            loadingSpinner.isHidden = true
            errorMsg.text = "ERROR: No Internet Connection"
            errorMsg.isHidden = false
        }
        errorMsg.text = "ERROR: Unable to load page"
        errorMsg.isHidden = false
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
        errorMsg.text = "ERROR: Unable to load page"
        errorMsg.isHidden = false
        NSLog("Error Loading: Navigation Error")
        print(error._code)
    }
   
    @IBAction func backButton(_ sender: Any) {
            webView.goBack()
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
        loadStationData()
        // Do any additional setup after loading the view.
    }
}
