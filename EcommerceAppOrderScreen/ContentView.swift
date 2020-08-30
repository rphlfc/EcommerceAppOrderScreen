//
//  ContentView.swift
//  EcommerceAppOrderScreen
//
//  Created by Raphael Cerqueira on 29/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.04062459618, green: 0.2538208365, blue: 0.5527300835, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        
                    }) {
                        Arrow()
                        .stroke(lineWidth: 1)
                        .frame(width: 35, height: 80)
                        .foregroundColor(Color(#colorLiteral(red: 0.6159710288, green: 0.7940852046, blue: 0.9519942403, alpha: 1)))
                    }
                    
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("JENNIFER")
                    
                    Text("ORDER Nº 15")
                }
                .font(.system(size: 46, weight: .bold))
                .foregroundColor(Color(#colorLiteral(red: 0.6159710288, green: 0.7940852046, blue: 0.9519942403, alpha: 1)))
                
                VStack {
                    ForEach(orderData) { item in
                        OrderItemView(item: item)
                    }
                    
                    HStack {
                        Text("TOTAL:")
                        .font(.system(size: 24, weight: .regular))
                        
                        Spacer()
                        
                        Text("$137.5")
                        .font(.system(size: 32, weight: .semibold))
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.6159710288, green: 0.7940852046, blue: 0.9519942403, alpha: 1)))
                    .padding()
                }
                .padding(.vertical, 30)
                .frame(maxWidth: .infinity)
                .background(Color(#colorLiteral(red: 0.114597179, green: 0.3253192902, blue: 0.6326295137, alpha: 1)))
                .cornerRadius(30)
                .padding(.top)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
