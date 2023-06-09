//
//  File.swift
//  
//
//  Created by NMAS Amaral on 11/05/23.
//

import Domain
import Common
import Foundation
import SwiftUI

public class SignOutViewModel: ObservableObject {
    
    private var coordinator: SignOutCoordinating?
    
    public init(coordinator: SignOutCoordinating) {
        self.coordinator = coordinator
    }
}

extension SignOutViewModel: SignOutModelling {}
