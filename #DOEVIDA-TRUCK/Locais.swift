//
//  Locais.swift
//  #DOEVIDA-TRUCK
//
//  Created by PDI on 17/02/17.
//  Copyright © 2017 BloodTruck. All rights reserved.
//

import Foundation
class Locais {
    
    let nomeDoLocal: String
    
    let longitude: Double
    let latitude: Double
    let Info: String
    let tel: Double
    
    
    init(nomeDoLocal : String, latitude: Double, longitude: Double, Info: String,tel: Double){
        self .nomeDoLocal = nomeDoLocal
        self.latitude = latitude
        self.longitude = longitude
        self.Info = Info
        self.tel = tel
        
        
    }
}


class LocaisDAO {
    static func locaisGetList() -> [Locais]{
        return [
            Locais(nomeDoLocal: "Hemose Hemocentro", latitude: -10.943982 , longitude: -37.076244, Info: " Endereço: Av. Pres Tancredo Neves, S/N - Bairro Capucho vizinho ao Hospital de Urgência de Sergipe (Huse)",
                   tel: 793225-8000),
            Locais(nomeDoLocal: "Instituto de Hematologia e Hemoterapia de Sergipe: IHHS", latitude: -10.923647, longitude:-37.051070 , Info: "Abre as 8:00 e fecha as 17:00 horas", tel: 3021-3468)
            
            
        ]
    }
}
