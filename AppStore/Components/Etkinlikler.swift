//
//  Etkinlikler.swift
//  AppStore
//
//  Created by Berkay Disli on 17.04.2022.
//

import SwiftUI

struct Etkinlikler: View {
    let productViewModel: ProductViewModel
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(productViewModel.eventsProducts) { item in
                    VStack(alignment: .leading) {
                        HStack(alignment: .top, spacing: 15) {
                            Spacer()
                            Image(item.logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .cornerRadius(20)
                            .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                            
                            VStack(alignment: .leading) {
                                Text(item.name)
                                Text(item.owner)
                                    .foregroundColor(.white.opacity(0.6))
                                HStack(spacing: 15) {
                                    HStack(spacing: 0) {
                                        Text("\(item.rating.formatted())")
                                            .font(.subheadline)
                                        Image(systemName: "star.fill")
                                            .font(.system(size: 10))
                                    }
                                    Text("PEGI 7").font(.subheadline)
                                }.foregroundColor(.white.opacity(0.6))
                                Text("Reklam içerir")
                                    .font(.subheadline).italic()
                                    .foregroundColor(.white.opacity(0.6))
                                Text("Uygulama içi satın alma")
                                    .font(.subheadline)
                                    .foregroundColor(.white.opacity(0.6))
                            }
                            Button {
                                print("Yükle butonuna basıldı!..")
                            } label: {
                                Text("Yükle")
                                    .font(.title3)
                                    .foregroundColor(.green)
                                    .padding(.horizontal).padding(.vertical, 5)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.white.opacity(0.6), lineWidth: 1))
                                    .padding(.top).padding(.horizontal)
                                    
                            }
                        }
                        .padding(.top)
                        
                        Image(item.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                        
                        HStack(spacing: 25) {
                            Text("Etkinlik")
                            Text("\(item.expiresIn) gün içinde sona eriyor")
                        }
                        .font(.subheadline).foregroundColor(.white.opacity(0.6))
                        .padding(.leading)
                        
                        Text(item.slogan)
                            .padding(.vertical, 1)
                            .padding(.leading)
                        
                        Text(item.description)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.bottom).padding(.leading)
                    }
                    
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.white.opacity(0.6), lineWidth: 1))
                    .padding(.horizontal, 20)
                }
            }
        }
        .transition(.opacity)
    }
}

/*struct Etkinlikler_Previews: PreviewProvider {
    static var previews: some View {
        Etkinlikler()
    }
}
*/
