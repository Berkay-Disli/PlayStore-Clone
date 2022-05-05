//
//  ContentView.swift
//  AppStore
//
//  Created by Berkay Disli on 15.04.2022.
//

import SwiftUI

struct Home: View {
    @StateObject var productViewModel = ProductViewModel()
    @State private var selectedCategory: Categories = .sizeOzel
    @State private var searchText = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.gray.opacity(0.28).ignoresSafeArea()
            
            VStack {
                HeaderView(searchText: $searchText, selectedCategory: $selectedCategory)

                if selectedCategory == .sizeOzel {
                    SizeOzel(productViewModel: productViewModel)
                } else if selectedCategory == .ustSıralar {
                    UstSiralar(productViewModel: productViewModel)
                } else if selectedCategory == .etkinlikler {
                    Etkinlikler(productViewModel: productViewModel)
                } else if selectedCategory == .kategoriler {
                    Text("kategoriler")
                        .transition(.opacity)
                } else if selectedCategory == .editorunSecimi {
                    Text("editörün seçimi")
                        .transition(.opacity)
                }
            }
        }
        .preferredColorScheme(.dark)
        .onTapGesture {
            hideKeyboard()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
