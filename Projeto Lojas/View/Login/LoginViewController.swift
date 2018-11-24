//
//  LoginViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var viewLogo: UIView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cadastrar(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let cadastro = storyBoard.instantiateViewController(withIdentifier: "CadastroID")
        self.navigationController?.pushViewController(cadastro, animated: true)
    }
    
    @IBAction func btnEntrar(_ sender: Any) {
        
        //verificar se os campos estão preenchidos
        if validateData()
        {
            return
        }
    
        var controler = LoginController()
        var result = controler.Login(login: txtEmail.text!, senhaLogin: txtSenha.text!)
        
        if(result)
        {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let perfil = storyBoard.instantiateViewController(withIdentifier: "PerfilID")
            self.navigationController?.pushViewController(perfil, animated: true)
        }
    }
    
    func validateData() -> Bool {
        if let senha = txtSenha.text, !senha.isEmpty
        {
            return false
        }
        
        if let email = txtEmail.text, !email.isEmpty
        {
            return false
        }
        
        return true
    }
    
}
