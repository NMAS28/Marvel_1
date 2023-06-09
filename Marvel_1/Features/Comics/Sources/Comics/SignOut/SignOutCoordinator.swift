//
//  File.swift
//  
//
//  Created by NMAS Amaral on 11/05/23.
//

import Foundation
import UIKit
import Common
import SwiftUI

public class SignOutCoordinator: Coordinator {
    
    public var childCoordinators: [Coordinator] = []
    public var navigationController = UINavigationController()
    public var tabBarController: UITabBarController?
    
    public init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    @MainActor public func start() {
        let viewModel = SignOutViewModel(coordinator: self)
        let signOutView = SignOutView(viewModel: viewModel)
        
        let hostingController = UIHostingController(rootView: signOutView)
        hostingController.tabBarItem.title = "Perfil"
        hostingController.tabBarItem.image = UIImage(systemName: "person.circle")
        
        navigationController.pushViewController(hostingController, animated: true)
    }
}

extension SignOutCoordinator: SignOutCoordinating {
    
}
