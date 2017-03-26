//
//  Bar.swift
//  ABIHackathon
//
//  Created by Daniel Nomura on 3/25/17.
//  Copyright © 2017 ABIHack. All rights reserved.
//

import Foundation
import CoreLocation
import SwiftyJSON

struct Bar {
    var id: String?
    var name: String?
    var location: CLLocationCoordinate2D?
    var type: String?
    var currentKegs: [Keg]?
    var nextOrderRecommendations: [Keg]?
}
