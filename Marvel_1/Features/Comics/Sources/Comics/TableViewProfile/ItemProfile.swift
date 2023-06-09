//
//  File.swift
//  
//
//  Created by NMAS Amaral on 11/05/23.
//

import Foundation

struct ItemProfile: Identifiable {
    let id = UUID()
    let title: String
}

let items = [
    ItemProfile(title: "Editar Perfil"),
    ItemProfile(title: "Alterar Senha"),
    ItemProfile(title: "Sair")
]
