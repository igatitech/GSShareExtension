//
//  ShareViewController.swift
//  GSExt
//
//  Created by Gati on 13/02/20.
//  Copyright © 2020 iGatiTech. All rights reserved.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {
    
    override func viewDidLoad() {
        self.title = "iOS Share Extension"
        self.placeholder = "This is placeholder text"
        self.textView.text = "Yeahh!! We have successfully integrated iOS Share Extension!!!"
        let defaults = UserDefaults(suiteName: "group.com.iGatiTech.GSShareExtension") // Your App Group name
        let restoredValue = defaults!.string(forKey: "user_token")
        print(restoredValue ?? "")
    }

    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        return true
    }

    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
        // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
        self.extensionContext!.completeRequest(returningItems: [], completionHandler: nil)
    }

    override func configurationItems() -> [Any]! {
        // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
        return []
    }

}
