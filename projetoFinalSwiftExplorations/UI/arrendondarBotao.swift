//
//  arrendondarBotao.swift
//  projetoFinalSwiftExplorations
//
//  Created by Aluno24 on 14/03/22.
//  Copyright © 2022 Aluno24. All rights reserved.
//

import Foundation
import UIKit

func arredondarBotao(botao: UIButton, pintarBorda: Bool) {
    botao.layer.cornerRadius = 12
    botao.layer.borderWidth = 1
    
    if pintarBorda == true {
        botao.layer.borderColor = UIColor.black.cgColor
    }else {
        botao.layer.borderColor = UIColor.white.cgColor
    }
}
