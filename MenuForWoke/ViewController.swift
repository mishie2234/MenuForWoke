//
//  ViewController.swift
//  MenuForWoke
//
//  Created by GWC project on 8/17/16.
//  Copyright © 2016 GWC project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet var Open: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

        
        
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

