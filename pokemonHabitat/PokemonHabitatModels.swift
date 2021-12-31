//
//  PokemonHabitatModels.swift
//  pokeSdkApp
//
//  Created by Mahi113
//

import Foundation

public struct PokemonHabitatsModel: Codable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [HabitatsNameUrlModel]
}

public struct HabitatsNameUrlModel: Codable {
    public let name: String
    public let url: String
}

public struct PokemonHabitatModel: Codable, Identifiable {
    public let id: Int
    public let name: String
    public let pokemon_species: [HabitatsNameUrlModel]
}
