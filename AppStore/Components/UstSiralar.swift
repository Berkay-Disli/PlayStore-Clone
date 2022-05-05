//
//  UstSiralar.swift
//  AppStore
//
//  Created by Berkay Disli on 17.04.2022.
//

import SwiftUI

struct UstSiralar: View {
    let productViewModel: ProductViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ücretsiz en popüler")
                .foregroundColor(.green)
            
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 25) {
                    ForEach(productViewModel.products) { item in
                        HStack(alignment: .top, spacing: 15) {
                            Image(item.logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                                .padding(.leading)
                            
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
            }
        }
        .padding(.horizontal, 20)
        .transition(.opacity)
    }
}

/*struct UstSiralar_Previews: PreviewProvider {
    static var previews: some View {
        UstSiralar()
    }
}
*/
