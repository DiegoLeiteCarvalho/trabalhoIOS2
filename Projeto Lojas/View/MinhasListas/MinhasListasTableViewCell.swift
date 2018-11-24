//
//  MinhasListasTableViewCell.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 16/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class MinhasListasTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var txtNomeBtn: UILabel!
    @IBOutlet weak var txtComentario: UILabel!
    @IBOutlet weak var btnListas: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
