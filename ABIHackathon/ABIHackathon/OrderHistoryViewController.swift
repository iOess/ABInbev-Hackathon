//
//  OrderHistoryViewController.swift
//  ABIHackathon
//
//  Created by Daniel Nomura on 3/26/17.
//  Copyright © 2017 ABIHack. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class OrderHistoryViewController: UIViewController {
    
    @IBOutlet weak var orderList: UITableView!
    var pastOrders = [PastOrder]()
    
    override func viewDidLoad() {
        loadPastOrders()
    }
    
    private func loadPastOrders() {
        if let jsonPath = Bundle.main.path(forResource: "pastOrders", ofType: "json"),
            let jsonData = NSData.init(contentsOfFile: jsonPath) {
            pastOrders = JSON(data: jsonData as Data).arrayValue.map { return PastOrder(withJSON: $0) }
        } else {
            print("Unable to open past order json")
            return
            
        }

    }
}
