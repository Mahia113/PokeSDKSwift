//
//  PokemonTypesModels.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation

public struct PokemonTypesModel: Codable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [TypeNameUrlModel]
}

public struct PokemonTypeModel: Codable, Identifiable {
    public let id: Int
    public let name: String
    public let damage_relations: DamageRelationsModel
    public let move_damage_class: TypeNameUrlModel
    public let pokemon: [TypePokemonModel]
    public let moves: [TypeNameUrlModel]
}

public struct TypeNameUrlModel: Codable {
    public let name: String
    public let url: String
}

public struct DamageRelationsModel: Codable {
    public let no_damage_to: [TypeNameUrlModel]
    public let half_damage_to: [TypeNameUrlModel]
    public let double_damage_to: [TypeNameUrlModel]
    public let no_damage_from: [TypeNameUrlModel]
    public let half_damage_from: [TypeNameUrlModel]
    public let double_damage_from: [TypeNameUrlModel]
}

public struct TypePokemonModel: Codable {
    public let slot: Int
    public let pokemon: TypeNameUrlModel
}
