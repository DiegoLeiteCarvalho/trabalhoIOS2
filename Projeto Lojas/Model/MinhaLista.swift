//
//  MinhaLista.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 16/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class MinhaLista: Object {
    @objc var title: String = ""
    @objc var coment: String = ""
    
    convenience init(title: String, coment: String){
        self.init()
        self.title = title
        self.coment = coment
    }
    
}

