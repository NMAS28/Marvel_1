//
//  File.swift
//  
//
//  Created by NMAS Amaral on 21/03/23.
//

import Foundation

public protocol LoginPersistenceUseCaseProtocol {
    
    var userID: String? { get }
    var isLogged: Bool { get }
    
    func loginValidation()
    func logout()
}
