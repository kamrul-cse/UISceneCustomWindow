//
//  ViewController.swift
//  UISceneCustomWindow
//
//  Created by Md. Kamrul Hasan on 23/5/20.
//  Copyright © 2020 MKHG Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "UIScene Window"
    }

    class func getViewController() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        return viewController
    }

}

