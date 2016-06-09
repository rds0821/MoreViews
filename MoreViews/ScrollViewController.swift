//
//  ScrollViewController.swift
//  MoreViews
//
//  Created by Forrest Filler on 6/8/16.
//  Copyright © 2016 ForrestFiller. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var imagesScrollView: UIScrollView!
    @IBOutlet var teamLabel: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var textField: UITextField!
    var teamsArray = Array<Dictionary<String, AnyObject>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagesScrollView.showsHorizontalScrollIndicator = false
        self.imagesScrollView.pagingEnabled = true
        self.imagesScrollView.delegate = self
        
        let acc = ["name": "ACC", "image": "acc.png"]
        self.teamsArray.append(acc)
        let accLogo = UIImageView(image: UIImage(named: "acc.png"))
        accLogo.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imagesScrollView.addSubview(accLogo)
        
        let bird = ["name": "Bird", "image": "bird.png"]
        self.teamsArray.append(bird)
        let birdLogo = UIImageView(image: UIImage(named: "bird.png"))
        birdLogo.frame = CGRect(x: 200, y: 0, width: 200, height: 200)
        self.imagesScrollView.addSubview(birdLogo)
        
        let cubs = ["name": "Cubs", "image": "cubs.png"]
        self.teamsArray.append(cubs)
        let cubsLogo = UIImageView(image: UIImage(named: "cubs.png"))
        cubsLogo.frame = CGRect(x: 400, y: 0, width: 200, height: 200)
        self.imagesScrollView.addSubview(cubsLogo)

        self.imagesScrollView.contentSize = CGSizeMake(600, 0)
        
        self.pageControl.numberOfPages = self.teamsArray.count
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        func scrollViewDidEndDecelerating(scrollView: UIScrollView){
            print("scrollViewDidEndDecelerating: \(scrollView.contentOffset.x)")
            
            if (scrollView.contentOffset.x == 0){
                self.teamLabel.text = "ACC"
                self.pageControl.currentPage = 0
            }
            if (scrollView.contentOffset.x == 200){
                self.teamLabel.text = "Bird"
                self.pageControl.currentPage = 1
            }
            if (scrollView.contentOffset.x == 400){
                self.teamLabel.text = "cubs"
                self.pageControl.currentPage = 2
            }
            

            
        }
    
//    
//    
//    
//    
//    
    
    
}

