//
//  respostasAutomaticas.swift
//  projetoFinalSwiftExplorations
//
//  Created by Aluno24 on 21/03/22.
//  Copyright © 2022 Aluno24. All rights reserved.
//

import Foundation

func respostaAutomatica(pergunta: String) -> String {
    if pergunta.lowercased() == "localização" {
        return "Buscando informações sobre a localização..."
    }else if pergunta.lowercased() == "ementa" {
        return "Buscando informações sobre a ementa..."
    }else if pergunta.lowercased() == "contatos" {
        return "Buscando informações sobre contatos..."
    }else {
        let numeroAleatorio = Int.random(in: 0...2)
        if numeroAleatorio == 0 {
            return "Ainda não temos essa opção"
        }else if numeroAleatorio == 1 {
            return "Hum... Não encontrei algo relacionado"
        }else {
            return "Essa eu não sei"
        }
    }
}


