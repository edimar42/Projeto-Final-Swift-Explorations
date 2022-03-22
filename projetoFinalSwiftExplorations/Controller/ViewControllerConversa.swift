//
//  ViewControllerConversa.swift
//  projetoFinalSwiftExplorations
//
//  Created by Aluno24 on 15/03/22.
//  Copyright © 2022 Aluno24. All rights reserved.
//

import UIKit

class ViewControllerConversa: UIViewController {

    @IBOutlet weak var messagem: UITextField!
    
    @IBOutlet weak var balaoBoasVindas: UIView!
    @IBOutlet weak var balaoPergunta: UIView!
    @IBOutlet weak var balaoResposta: UIView!
    
    @IBOutlet weak var textoPergunta: UILabel!
    @IBOutlet weak var textoResposta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messagem.becomeFirstResponder()
        
        balaoBoasVindas.layer.cornerRadius = 25
        balaoPergunta.layer.cornerRadius = 25
        balaoResposta.layer.cornerRadius = 25
        
        balaoPergunta.isHidden = true
        balaoResposta.isHidden = true
    }
    
    @IBAction func botaoEnviar(_ sender: Any) {
        textoPergunta.text = messagem.text
        messagem.text?.removeAll()
        balaoPergunta.isHidden = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.textoResposta.text = respostaAutomatica(pergunta: self.textoPergunta.text ?? "")
            self.balaoResposta.isHidden = false
        }
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            if self.textoPergunta.text?.lowercased() == "localização" {
                let localizacaoViewController = storyboard.instantiateViewController(withIdentifier: "localizacao")
                self.present(localizacaoViewController, animated: true, completion: nil)
            }else if self.textoPergunta.text?.lowercased() == "contatos" {
                let contatosViewController = storyboard.instantiateViewController(withIdentifier: "contatos")
                self.present(contatosViewController, animated: true, completion: nil)
            }else if self.textoPergunta.text?.lowercased() == "ementa" {
                let ementaViewController = storyboard.instantiateViewController(withIdentifier: "ementa")
                self.present(ementaViewController, animated: true, completion: nil)
            }

        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
