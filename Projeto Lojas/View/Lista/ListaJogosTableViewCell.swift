//
//  ListaJogosTableViewCell.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 23/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ListaJogosTableViewCell: UITableViewCell {

    @IBOutlet weak var logoLoja: UIImageView!
    
    @IBOutlet weak var nomeLoja: UILabel!
    
    @IBOutlet weak var vendeJogos: UIImageView!
    
    @IBOutlet weak var vendeComputador: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
