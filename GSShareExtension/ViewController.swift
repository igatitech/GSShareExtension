//
//  ViewController.swift
//  GSShareExtension
//
//  Created by Gati on 13/02/20.
//  Copyright © 2020 iGatiTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults(suiteName: "group.com.iGatiTech.GSShareExtension") // Your App Group name
        defaults?.set("This is test value sharing with share extension", forKey:"user_token")
        defaults?.synchronize()
    }


}

