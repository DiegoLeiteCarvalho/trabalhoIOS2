//
//  CadastroControler.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 16/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift
import Realm


class CadastroController{
    let realm = try! Realm()

    func salvarCadastro(nome: String, email: String, senha: String, telefone: String, idade: Int) -> Bool {
        
        var usuario = Usuario()
        
        usuario.email = email
        usuario.nome = nome
        usuario.senha = senha
        usuario.telefone = telefone
        usuario.idade = idade
        
        try! realm.write {
            usuario
        }
        
        return true
        
    }
    
    func recuperarListaCampo()->List<String>{
        var minhaLista = List<String>()
        var iten1: String = "Nome"
        var iten2: String = "Email"
        var iten3: String = "Senha"
        var iten4: String = "Telefone"
        var iten5: String = "Idade"
        
        minhaLista.insert(iten1, at: 0)
        minhaLista.insert(iten2, at: 1)
        minhaLista.insert(iten3, at: 2)
        minhaLista.insert(iten4, at: 3)
        minhaLista.insert(iten5, at: 4)
        
        return minhaLista
    }
    func recoverField(_ index: Int) -> String {
        // melhorar isso
        let minhaLista = recuperarListaCampo()
        
        return minhaLista[index]
        
    }
    
}
