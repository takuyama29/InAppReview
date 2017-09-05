//
//  ViewController.swift
//  InAppReview
//
//  Created by 山田卓 on 2017/09/05.
//  Copyright © 2017 TakuYamada. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    
    @IBAction func requestReviewButton(_ sender: UIButton) {
        // レビューページへ遷移
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        }
            // iOS 10.3未満の処理
        else if let url = URL(string: "itms-apps://itunes.apple.com/app/id1274048262?action=write-review") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            }
            else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

