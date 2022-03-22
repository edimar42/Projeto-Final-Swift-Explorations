//
//  ViewControllerContatos.swift
//  projetoFinalSwiftExplorations
//
//  Created by Aluno24 on 15/03/22.
//  Copyright © 2022 Aluno24. All rights reserved.
//

import UIKit

class ViewControllerContatos: UIViewController {

    @IBOutlet weak var botaoDiretoria: UIButton!
    @IBOutlet weak var botaoCoordenacao: UIButton!
    @IBOutlet weak var botaoExtensao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        arredondarBotao(botao: botaoDiretoria, pintarBorda: false)
        arredondarBotao(botao: botaoCoordenacao, pintarBorda: false)
        arredondarBotao(botao: botaoExtensao, pintarBorda: false)
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
