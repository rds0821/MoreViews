//
//  ImgesViewController.swift
//  MoreViews
//
//  Created by Forrest Filler on 6/8/16.
//  Copyright © 2016 ForrestFiller. All rights reserved.
//
import UIKit

class ImgesViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var teamLabel: UILabel!
    var imageIndex = 0
    var teamsArray = Array<Dictionary<String, AnyObject>>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let acc = ["name": "ACC", "image": "acc.png"]
        self.teamsArray.append(acc)
 
        let bird = ["name": "Bird", "image": "bird.png"]
        self.teamsArray.append(bird)

        let cubs = ["name": "Cubs", "image": "cubs.png"]
        self.teamsArray.append(cubs)
 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rotateImages(btn: UIButton){
        print("rotateImages: ")

        self.imageIndex += 1
        
        let team = self.teamsArray[self.imageIndex % self.teamsArray.count]
        self.teamLabel.text = team["name"] as? String
        
        let imageName = team["image"] as!  String
        self.imageView.image = UIImage(named: imageName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
