//
//  MainTabView.swift
//  AppStore
//
//  Created by Berkay Disli on 15.04.2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 1
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            Home()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Oyunlar")
                }
                .tag(1)
            
            Apps()
                .tabItem {
                    Image(systemName: "app.gift")
                    Text("Uygulamalar")
                }
                .tag(2)
            
            Movies()
                .tabItem {
                    Image(systemName: "apps.ipad")
                    Text("Filmler")
                }
                .tag(3)
            
            Books()
                .tabItem {
                    Image(systemName: "book.closed")
                    Text("Kitaplar")
                }
                .tag(4)
        }
        .accentColor(.green)
        //.edgesIgnoringSafeArea(.all)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
