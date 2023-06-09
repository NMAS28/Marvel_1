//
//  File.swift
//  
//
//  Created by NMAS Amaral on 11/05/23.
//

import Foundation
import SwiftUI

public struct SignOutView<ViewModel: SignOutModelling>: View {
    
    @ObservedObject var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        ZStack {
                TableViewProfile(items: items)
        }
    }
}
