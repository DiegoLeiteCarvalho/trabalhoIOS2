//
//  MinhasListasTableViewController.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 16/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class MinhasListasTableViewController: UITableViewController {


    let controller = MinhasListasControler()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "minhaListaIdentifier", for: indexPath)

        if let cellLista = cell as? MinhasListasTableViewCell {
            cellLista.txtNomeBtn.text = controller.recoverTitle(indexPath.row)
            cellLista.txtComentario.text = controller.recoverComent(indexPath.row)
            
            
        }
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }

}
