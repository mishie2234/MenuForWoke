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
        
        let topColor = UIColor(red: 0.3529, green: 0.7843, blue: 0.9294, alpha: 1.0)
        let bottomcolor = UIColor(red: 0.5451, green: 0.8314, blue: 0.9294, alpha: 1.0)
        
        let gradientColors: [CGColor] = [topColor.CGColor, bottomcolor.CGColor]
        let gradietLocations: [Float]=[0.0,1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradietLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

