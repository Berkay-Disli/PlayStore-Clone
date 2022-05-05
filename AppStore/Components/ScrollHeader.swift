//
//  ScrollHeader.swift
//  AppStore
//
//  Created by Berkay Disli on 16.04.2022.
//

import SwiftUI

struct ScrollHeader: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                    .font(.title2)
                    .foregroundColor(.white.opacity(0.9))
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Image(systemName: "arrow.right")
                .font(.title2)
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
    }
}

/*struct ScrollHeader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollHeader()
    }
}
*/
