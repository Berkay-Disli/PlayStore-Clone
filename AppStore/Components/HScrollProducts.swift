//
//  HScrollProducts.swift
//  AppStore
//
//  Created by Berkay Disli on 16.04.2022.
//

import SwiftUI

struct HScrollProducts: View {
    
    let productViewModel: ProductViewModel
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top) {
                ForEach(productViewModel.products) { item in
                    VStack {
                        Image(item.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 150)
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                        
                        HStack(alignment: .top, spacing: 15) {
                            Image(item.logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(item.name)
                                
                                Text(item.type)
                                    .foregroundColor(.white.opacity(0.6))
                                    .font(.subheadline)
                                
                                HStack {
                                    HStack(spacing: 0) {
                                        Text("\(item.rating.formatted())")
                                            .font(.subheadline)
                                        Image(systemName: "star.fill")
                                            .font(.system(size: 10))
                                    }
                                    Text("₺\(item.price)")
                                        .font(.subheadline)
                                }
                                .foregroundColor(.white.opacity(0.6))
                            }
                            
                            Spacer()
                        }
                    }
                }
                .padding(.trailing)
            }
        }
        .frame(width: .infinity, height: 240)
        .padding(.leading)
    }
}

/*struct HScrollProducts_Previews: PreviewProvider {
    static var previews: some View {
        HScrollProducts(productViewModel: <#Binding<ProductViewModel>#>)
    }
} */
