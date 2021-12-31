//
//  Models.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation

/**
 Pokemon struct for decoding pokemon json response.
 ### Properties
 - **id**: The id of the pokemon.
 - **name**: The name of the pokemon.
 - **base_experience**: The base experience gained for defeating this Pokémon.
 - **height**: Height of the pokemon.
 - **weight**: Weight of the pokemon.
 - **is_default**:Set for exactly one Pokémon used as the default for each species.
 - **order**: Order for sorting. Almost national order, except families are grouped together.
 - **abilities**: A list of abilities this Pokémon could potentially have.
 - **species**: The species this Pokémon belongs to.
 - **stats**: A list of base stat values for this Pokémon.
 */
public struct PokemonModel: Codable, Identifiable {
    public let id: Int
    public let name: String
    public let base_experience: Int
    public let height: Int
    public let weight: Int
    public let is_default: Bool
    public let order: Int
    public let abilities: [AbilitiesModel]
    public let species: SpeciesModel
    public let stats: [StatsModel]
}
                
public struct AbilitiesModel: Codable {
    public let is_hidden: Bool
    public let slot: Int
    public let ability: AbilityModel
}

public struct AbilityModel: Codable {
    public let name: String
    public let url: String
}
        
public struct SpeciesModel: Codable {
    public let name: String
    public let url: String
}

public struct StatsModel: Codable {
    public let base_stat: Int
    public let effort: Int
    public let stat: StatModel
}

public struct StatModel: Codable {
    public let name: String
    public let url: String
}

public struct PokemonsModel: Codable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [PokemonNameUrlModel]
}

public struct PokemonNameUrlModel: Codable {
    public let name: String
    public let url: String
}
