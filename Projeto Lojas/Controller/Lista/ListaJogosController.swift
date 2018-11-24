//
//  ListaJogosController.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 23/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class ListaJogosController {
    
    let realm = try! Realm()
    
    func buscarTodasLojas() -> List<Loja> {
        
        
        var loja = realm.objects(Loja.self).filter("favorita = %@", true)
        
        
        
        let listaLoja = loja.reduce(List<Loja>()){(list,element)->List<Loja> in list.append(element)
            return list
        }
        return listaLoja
    }
    
    func nomeDaLoja(_ index: Int) -> String {
        
            let lojaEspecifica = buscarTodasLojas()[index]
            return lojaEspecifica.nome
        
    }
    
    func nomeLogoLoja(_ index: Int) -> String {
        do {
            
            let lojaEspecifica = buscarTodasLojas()[index]
            return lojaEspecifica.iconePequeno
        } catch {
            return "exit"
        }
    }
    
    func isLojaFavorita(_ index: Int) -> Bool {
        do {
            
            let lojaEspecifica = buscarTodasLojas()[index]
            return lojaEspecifica.favorita
        } catch {
            return false
        }
    }
    
    func vendeJogos(_ index: Int) -> Bool {
        do {
            
            let lojaEspecifica = buscarTodasLojas()[index]
            return lojaEspecifica.vendeJogos
        } catch {
            return false
        }
    }
    
    func vendeComputadores(_ index: Int) -> Bool {
        do {
            
            let lojaEspecifica = buscarTodasLojas()[index]
            return lojaEspecifica.vendeComputador
        } catch {
            return false
        }
    }
    
    
    
}
