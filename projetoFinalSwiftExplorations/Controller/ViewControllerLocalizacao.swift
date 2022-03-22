//
//  ViewControllerLocalizacao.swift
//  projetoFinalSwiftExplorations
//
//  Created by Aluno24 on 14/03/22.
//  Copyright © 2022 Aluno24. All rights reserved.
//

import UIKit

class ViewControllerLocalizacao: UIViewController {
    @IBOutlet weak var botaoSaladeAula: UIButton!
    @IBOutlet weak var botaoSaladosProfessores: UIButton!
    @IBOutlet weak var botaoLaboratorios: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arredondarBotao(botao: botaoSaladeAula, pintarBorda: false)
        arredondarBotao(botao: botaoSaladosProfessores, pintarBorda: false)
        arredondarBotao(botao: botaoLaboratorios, pintarBorda: false)

        // Do any additional setup after loading the view.
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
