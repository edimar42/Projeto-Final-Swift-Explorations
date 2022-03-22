//
//  ViewController.swift
//  projetoFinalSwiftExplorations
//
//  Created by Aluno24 on 11/03/22.
//  Copyright © 2022 Aluno24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var auxiliarView: UIView!
    
    @IBOutlet weak var botaoLocalizacao: UIButton!
    @IBOutlet weak var botaoContatos: UIButton!
    @IBOutlet weak var botaoDuvidas: UIButton!
    @IBOutlet weak var botaoConversa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        auxiliarView.roundCorners([.topLeft, .topRight], radius: 25)
        
        arredondarBotao(botao: botaoLocalizacao, pintarBorda: true)
        arredondarBotao(botao: botaoContatos, pintarBorda: true)
        arredondarBotao(botao: botaoDuvidas, pintarBorda: true)
        arredondarBotao(botao: botaoConversa, pintarBorda: true)
        
    }
    
    
    
    


}

extension UIView {

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
    }

}



