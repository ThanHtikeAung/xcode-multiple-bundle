//
//  ViewController.swift
//  CBPay
//
//  Created by Than Htike Aung on 1/28/18.
//  Copyright © 2018 PromptNow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var env: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadEnvironment()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadEnvironment() {
        let currentConfig = Bundle.main.object(forInfoDictionaryKey: "Config") as! String
        let path = Bundle.main.path(forResource: "settings", ofType: "plist")
        let data = NSDictionary(contentsOfFile: path!)
        let settings = data?.value(forKey: currentConfig) as! Dictionary<String, String>
        env.text = settings["API"]
    }
}

