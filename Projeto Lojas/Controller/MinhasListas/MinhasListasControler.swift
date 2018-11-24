//
//  MinhasListasControler.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 16/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift


class MinhasListasControler: Object{
    
    
    
    func recuperarLista()->List<MinhaLista>{
        var minhaLista = List<MinhaLista>()
        var iten1: MinhaLista = MinhaLista(title: "Lojas Jogos", coment: "10 Lojas")
        var iten2: MinhaLista = MinhaLista(title: "Mercado", coment: "20 Lojas")
        minhaLista.insert(iten1, at: 0)
        minhaLista.insert(iten2, at: 1)
        
        return minhaLista
    }
    
    func recoverTitle(_ index: Int) -> String {
        // melhorar isso
        let minhaLista = recuperarLista()
        
        return minhaLista[index].title
        
    }
    
    func recoverComent(_ index: Int) -> String {
        // melhorar isso
        let minhaLista = recuperarLista()
        
        return minhaLista[index].coment
        
    }
}
