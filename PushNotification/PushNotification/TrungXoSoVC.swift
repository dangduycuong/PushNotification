//
//  TrungXoSoVC.swift
//  PushNotification
//
//  Created by Dang Duy Cuong on 10/13/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit

class TrungXoSoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let test = "l"
        UserDefaults.standard.set(test, forKey: "test")
    }
    
}
