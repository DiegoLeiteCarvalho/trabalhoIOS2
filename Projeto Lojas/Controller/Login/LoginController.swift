//
//  LoginController.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 12/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class LoginController
{
    let realm = try! Realm()
    
    func Login(login: String, senhaLogin: String ) -> Bool {
        
        var usuarios = realm.objects(Usuario.self).filter("email = %@", login)

        if (usuarios.count > 0) {

            let usuario = usuarios.first ?? Usuario()
            
            if(usuario.senha == senhaLogin)
            {
                return true
            }else
            {
                return false
            }
        }
        
        return false
    }
}
