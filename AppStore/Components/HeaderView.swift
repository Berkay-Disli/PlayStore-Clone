//
//  HeaderView.swift
//  AppStore
//
//  Created by Berkay Disli on 15.04.2022.
//

import SwiftUI

struct HeaderView: View {
    @Binding var searchText: String
    @Binding var selectedCategory: Categories
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .font(.title2)
                TextField("Uygulama ve oyun arayın", text: $searchText)
                    .font(.title3)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                Button {
                    
                } label: {
                    Image(systemName: "mic")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                }

                Image("berkaydisli")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .clipShape(Circle())
            }
            .padding(.horizontal).padding(.vertical, 5)
            .background(.gray.opacity(0.3))
            .cornerRadius(10)
            .padding(.horizontal).padding(.top, 1)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 30) {
                    ForEach(Categories.allCases, id: \.self) { item in
                        VStack {
                            Text(item.title)
                                .foregroundColor(selectedCategory == item ? .green:.gray)
                            
                            Capsule().fill(selectedCategory == item ? .green:Color.gray.opacity(0.0))
                                .frame(width: 65, height: 3)
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                selectedCategory = item
                            }
                        }
                    }
                }
            }
            .frame(height: 50).padding(.leading)
            
            Capsule().fill(.gray)
                .frame(width: .infinity, height: 1)
                .padding(.top, -15.5)
        }

    }
}

/*struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}*/
