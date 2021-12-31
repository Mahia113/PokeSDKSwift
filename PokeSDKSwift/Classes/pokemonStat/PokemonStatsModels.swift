//
//  PokemonStatsModels.swift
//  pokeSdkApp
//
//  Created by Anzen on 28/12/21.
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
public struct PokemonStatModel: Codable, Identifiable {
    public let id: Int
    public let name: String
    public let is_battle_only: Bool
    public let affecting_moves: AffectingMovesModel
    public let affecting_natures: AffectingNaturesModel
    public let characteristics: [CharacteristicsModel]
    public let move_damage_class: NameUrlModel
}

public struct AffectingMovesModel: Codable {
    public let increase: [IncreaseDecreaseModel]
    public let decrease: [IncreaseDecreaseModel]
}

public struct IncreaseDecreaseModel: Codable {
    public let change: Int
    public let move: NameUrlModel
}

public struct NameUrlModel: Codable {
    public let name: String
    public let url: String
}

public struct AffectingNaturesModel: Codable {
    public let increase: [NameUrlModel]
    public let decrease: [NameUrlModel]
}

public struct CharacteristicsModel: Codable {
    public let url: String
}


public struct PokemonStatsModel: Codable {    
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [NameUrlModel]
}
