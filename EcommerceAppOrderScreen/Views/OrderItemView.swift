//
//  OrderItemView.swift
//  EcommerceAppOrderScreen
//
//  Created by Raphael Cerqueira on 29/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct OrderItemView: View {
    var item: OrderItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.6159710288, green: 0.7940852046, blue: 0.9519942403, alpha: 1)))
                
                Text(item.subtitle)
                    .foregroundColor(Color(#colorLiteral(red: 0.6159710288, green: 0.7940852046, blue: 0.9519942403, alpha: 1)).opacity(0.7))
                    .padding(.top, 8)
            }
            
            Spacer()
            
            HStack {
                Text("x")
                    .fontWeight(.bold)
                
                Text(item.quantity)
                    .font(.system(size: 28, weight: .bold))
            }
            .padding(8)
            .padding(.horizontal)
            .frame(maxWidth: 100)
            .foregroundColor(Color(#colorLiteral(red: 0.6159710288, green: 0.7940852046, blue: 0.9519942403, alpha: 1)))
            .background(Color(#colorLiteral(red: 0.04383201897, green: 0.2162753642, blue: 0.4509806633, alpha: 1)))
            .clipShape(Capsule())
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
    }
}

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView(item: orderData[0])
    }
}
