//
//  ViewController.swift
//  EFL Grounds
//
//  Created by Macbook Pro on 13/08/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showAppReviewPopover()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: App Store Review code
    func showAppReviewPopover() {
        var count = UserDefaults.standard.integer(forKey: "userAppLoadCount")
        count += 1
        UserDefaults.standard.set(count, forKey: "userAppLoadCount")
       
        // Get the current bundle version for the app
        let infoDictionaryKey = kCFBundleVersionKey as String
        guard let currentVersion = Bundle.main.object(forInfoDictionaryKey: infoDictionaryKey) as? String
            else { fatalError("Expected to find a bundle version in the info dictionary") }
        
        let lastVersionPromptedForReview = UserDefaults.standard.string(forKey: "lastVersionPromptedForReview")
     
        // Has the process been completed several times and the user has not already been prompted for this version?
        if count >= 15 && currentVersion != lastVersionPromptedForReview {
            SKStoreReviewController.requestReview()
            UserDefaults.standard.set(currentVersion, forKey: "lastVersionPromptedForReview")
        }
    }
}
