//
//  File.swift
//  
//
//  Created by NMAS Amaral on 11/05/23.
//

import Foundation
import SwiftUI

struct TableViewProfile: View {
    let items: [ItemProfile]
    
    var body: some View {
        VStack(alignment: .leading, content: {
                List(items) { item in
                    ProfileCell(item: item)
                }
        }).navigationBarTitle("few")
            .edgesIgnoringSafeArea(.top)
    }
}

struct ProfileCell: View {
    let item: ItemProfile
    var body: some View {
        NavigationLink(destination: EditProfile()) {
            Text(item.title)
                .font(.subheadline)
        }
    }
}
