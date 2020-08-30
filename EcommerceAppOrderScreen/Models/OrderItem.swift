//
//  OrderItem.swift
//  EcommerceAppOrderScreen
//
//  Created by Raphael Cerqueira on 29/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct OrderItem: Identifiable {
    let id = UUID().uuidString
    let title: String
    let subtitle: String
    let quantity: String
}

let orderData = [
    OrderItem(title: "AFRICAN STAR APPLE", subtitle: "1 UNIT (0.01 KG TO 0.15 KG)", quantity: "2"),
    OrderItem(title: "SHARON FRUIT", subtitle: "1 UNIT (0.01 KG TO 0.15 KG)", quantity: "6"),
    OrderItem(title: "TAMARILLO - AMBER", subtitle: "1 UNIT (0.01 KG TO 0.15 KG)", quantity: "10"),
    OrderItem(title: "CACTUS FIG", subtitle: "1 UNIT (1.0 KG)", quantity: "1"),
    OrderItem(title: "GUINEAP", subtitle: "1 PC (0.2 KG)", quantity: "5")
]
