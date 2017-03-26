//
//  Keg.swift
//  ABIHackathon
//
//  Created by Daniel Nomura on 3/25/17.
//  Copyright © 2017 ABIHack. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Keg {
    var brand: String?
    var type: String?
    var dateTapped: String?
    var freshnessScore: String?
    var volume: Int?
    var didFinishFresh: Bool?
    init(pastKegWithJSON json: JSON) {
        self.brand = json["beerName"].stringValue
        self.type = json["beerType"].stringValue
        self.volume = json["liters"].intValue
        self.didFinishFresh = json["finishedFresh"].boolValue
    }
}

struct PastOrder {
    var date: String?
    var kegs: [Keg]?
    init(withJSON json: JSON) {
        self.date = json["date"].stringValue
        self.kegs = json["kegs"].arrayValue.map { return Keg(pastKegWithJSON: $0) }
    }
}
