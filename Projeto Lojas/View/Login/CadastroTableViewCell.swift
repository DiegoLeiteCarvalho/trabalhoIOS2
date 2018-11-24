//
//  CadastroTableViewCell.swift
//  Projeto Lojas
//
//  Created by Diego L Carvalho on 20/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class CadastroTableViewCell: UITableViewCell {

    @IBOutlet weak var txtLable: UITextField!
    @IBOutlet weak var lnView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
