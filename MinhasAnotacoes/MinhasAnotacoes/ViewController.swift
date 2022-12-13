//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Luis Lima on 04/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var TextFieldAnotacao: UITextView!
    let chave = "minhaAnotacao"
    @IBAction func salvarTexto(_ sender: Any) {
        view.endEditing(true)
        
        if let texto = TextFieldAnotacao.text{
            //UserDefaults.standart.set(texto, forkey: “minhaAnotacao”)
            UserDefaults.standard.set(texto, forKey: chave)
        }
        
    }
    
    func recuperarAnotacao() -> String {
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TextFieldAnotacao.text = recuperarAnotacao()
        
    }


}

