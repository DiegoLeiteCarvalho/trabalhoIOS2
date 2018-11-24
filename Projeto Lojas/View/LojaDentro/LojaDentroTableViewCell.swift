//
//  LojaDentroTableViewCell.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 20/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class LojaDentroTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var txtComent: UILabel!
    @IBOutlet weak var txtTitulo: UILabel!
    @IBOutlet weak var ImgNome: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
