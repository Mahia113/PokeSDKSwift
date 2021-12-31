//
//  PokemonSpeciesModels.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation

public struct PokemonSpeciesModel: Codable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [SpeciesNameUrlModel]
}

public struct SpeciesNameUrlModel: Codable {
    public let name: String
    public let url: String
}

public struct PokemonSpecieModel: Codable, Identifiable {
    public let id: Int
    public let name: String?
    public let order: Int
    public let gender_rate: Int
    public let capture_rate: Int
    public let base_happiness: Int
    public let is_baby: Bool
    public let is_legendary: Bool
    public let is_mythical: Bool
    public let hatch_counter: Int
    public let has_gender_differences: Bool
    public let forms_switchable: Bool
    public let color: SpeciesNameUrlModel
    public let evolution_chain: EvolutionChainModel
    public let varieties: [VarietiesModel]
}

public struct EvolutionChainModel: Codable{
    public let url: String
}

public struct VarietiesModel: Codable{
    public let is_default: Bool
    public let pokemon: SpeciesNameUrlModel
}
