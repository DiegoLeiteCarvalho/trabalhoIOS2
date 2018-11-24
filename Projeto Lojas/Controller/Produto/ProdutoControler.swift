//
//  ProdutoControler.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 23/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class ProdutoControler{
    
    let realm = try! Realm()
    
    func recuperarListaProduto()->List<Produto>{
        var produto = realm.objects(Produto.self)
        
        let listaProduto = produto.reduce(List<Produto>()){(list,element)->List<Produto> in list.append(element)
            return list
        }
        
        return listaProduto
    }
    
    func recoverTitle(_ index: Int) -> String {
        // melhorar isso
        let minhaLista = recuperarListaProduto()
        
        return minhaLista[index].titulo
        
    }
    
    func recoverDescrip(_ index: Int) -> String {
        // melhorar isso
        let minhaLista = recuperarListaProduto()
        
        return minhaLista[index].descricao
        
    }
    
    func recoverImg(_ index: Int) -> String {
        // melhorar isso
        let minhaLista = recuperarListaProduto()
        
        return minhaLista[index].imagem
        
    }
    
    
}

