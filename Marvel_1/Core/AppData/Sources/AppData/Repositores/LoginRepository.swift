//
//  File.swift
//  
//
//  Created by NMAS Amaral on 22/03/23.
//

import Foundation
import Domain
import SwiftUI

public struct LoginRepository {
    private let remote: LoginDataSource
    
    public init(remote: LoginDataSource) {
        self.remote = remote
    }
}

extension LoginRepository: Domain.LoginRepository {
    public func loginAuthentication(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        remote.loginAuthentication(email: email, password: password) { result in
            switch result {
            case .success(_):
                completion(.success(()))
            case .failure(let error):
                print("\(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}
