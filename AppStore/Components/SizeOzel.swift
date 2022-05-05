//
//  SizeOzel.swift
//  AppStore
//
//  Created by Berkay Disli on 17.04.2022.
//

import SwiftUI

struct SizeOzel: View {
    let productViewModel: ProductViewModel
    var body: some View {
        ScrollView {
            LazyVStack {
                ScrollHeader(title: "Herkes oynuyor", subtitle: "Bu oyunları deneyin")
                
                HScrollProducts(productViewModel: productViewModel)
                
                ScrollHeaderSingle(title: "Sizin için önerilenler")
                
                HScrollProducts(productViewModel: productViewModel)
                
                ScrollHeaderSingle(title: "Önerilen oyunları keşfedin")
                
                HScrollProducts(productViewModel: productViewModel)
                
                ScrollHeaderSingle(title: "Çevrimdışı oyunları keşfedin")
                
                HScrollProducts(productViewModel: productViewModel)
            }
        }
        .transition(.opacity)
    }
}

/*struct SizeOzel_Previews: PreviewProvider {
    static var previews: some View {
        SizeOzel()
    }
}
*/
