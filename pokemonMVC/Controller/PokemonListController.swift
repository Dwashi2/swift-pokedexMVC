//
//  PokemonListController.swift
//  pokemonMVC
//
//  Created by Daniel Washington Ignacio on 28/07/21.
//

import Foundation



class PokemonListController {
    
    private var pokemonArray: [Pokemon] = []
    
    var count: Int{
        return self.pokemonArray.count
    }
    
    func loadCurrentPokemon(indexPath: IndexPath) -> Pokemon{
        return self.pokemonArray[indexPath.row]
    }
    
    func loadPokemon(completionHandler: (_ result: Bool, _ error: Error?) -> Void) {
        if let path = Bundle.main.path(forResource: "pokemon", ofType: "json"){

            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let _jsonResult = jsonResult as? Dictionary<String,AnyObject>, let pokemon = _jsonResult["pokemon"] as? [[String: Any]]{
                    for value in pokemon {
                        self.pokemonArray.append(Pokemon.init(dictionary: value))
                    }
                }
                completionHandler(true,nil)
            }catch{
                completionHandler(false,error)
            }
        }
}
}
