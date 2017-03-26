//
//  LandingViewController.swift
//  ABIHackathon
//
//  Created by Daniel Nomura on 3/25/17.
//  Copyright © 2017 ABIHack. All rights reserved.
//

import UIKit

class LandingViewController: UITabBarController {

    var bar: Bar?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inventoryViewController = segue.destination as? CurrentInventoryViewController {
            inventoryViewController.kegs = bar?.currentKegs
        } else if let recommendationsViewController = segue.destination as? NextOrderRecommendationsViewController{
            recommendationsViewController.recommendations = bar?.nextOrderRecommendations
        }
    }
}
