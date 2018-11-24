//
//  CadastroTableViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 06/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class CadastroTableViewController: UITableViewController {

    
//    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var txtTel: UITextField!
    @IBOutlet weak var txtIdade: UITextField!
    
    
    @IBOutlet weak var botaoCadastro: UIButton!
    
    
    
    let cadastroControler = CadastroController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botaoCadastro.layer.cornerRadius = 16.5
    }

    @IBAction func fecharCadastro() {
        self.dismiss(animated: true, completion: nil)
        let idade: Int? = Int(txtIdade.text!)
        
//        cadastroControler.salvarCadastro(nome: txtNome.text!, email: txtEmail.text!, senha: txtSenha.text!, telefone: txtTel.text!, idade: idade!)
    }
}
