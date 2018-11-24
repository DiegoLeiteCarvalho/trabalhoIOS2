//
//  ListaJogosTableViewController.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 23/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ListaJogosTableViewController: UITableViewController {

    let controller = ListaJogosController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.buscarTodasLojas().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lojasCellIdentifier", for: indexPath)
        if let cellLoja = cell as? ListaJogosTableViewCell {
            cellLoja.nomeLoja.text = controller.nomeDaLoja(indexPath.row)
            cellLoja.logoLoja.image = UIImage(named: controller.nomeLogoLoja(indexPath.row))
            let nomeImagemFavorita = controller.isLojaFavorita(indexPath.row) ? "liked" : "like"
            
            cellLoja.vendeJogos.image = controller.vendeJogos(indexPath.row) ? UIImage(named: "video-game") : nil
            cellLoja.vendeComputador.image = controller.vendeComputadores(indexPath.row) ? UIImage(named: "pc") : nil
            
            return cellLoja
        }
        
        return cell
    }

}
