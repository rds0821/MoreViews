//
//  ViewController.swift
//  MoreViews
//
//  Created by Forrest Filler on 6/8/16.
//  Copyright © 2016 ForrestFiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func imagesButtonTapped(btn: UIButton){
        print("imagesButtonTapped:")    
    }
    @IBAction func scrollButtonTapped(btn: UIButton){
        print("scrollButtonTapped:")
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

