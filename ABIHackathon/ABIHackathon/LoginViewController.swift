//
//  ViewController.swift
//  ABIHackathon
//
//  Created by Daniel Nomura on 3/25/17.
//  Copyright © 2017 ABIHack. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var barNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    let landingViewControllerID = "landingViewController"
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.createBorder()
        navigationController?.navigationBar.backgroundColor = UIColor(red: 35, green: 44, blue: 61, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func login(_ sender: Any) {
        if let tabViewController = storyboard?.instantiateViewController(withIdentifier: landingViewControllerID) as? LandingViewController {
            navigationController?.pushViewController(tabViewController, animated: true)
        }

//        if let barName = barNameTextField.text {
//            AWSNetworking().loginWithUsername(barName, completion: { (bar) in
//                if let bar = bar,
//                    let tabViewController = storyboard?.instantiateViewController(withIdentifier: landingViewControllerID) as? LandingViewController{
//                    tabViewController.bar = bar
//                    navigationController?.pushViewController(tabViewController, animated: true)
//                } else {
//                    let alertVC = UIAlertController(title: "Error", message: "Unable to login with bar named \(barName)", preferredStyle: .alert)
//                    alertVC.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//                    present(alertVC, animated: true, completion: nil)
//                }
//            })
//        }
    }
}

