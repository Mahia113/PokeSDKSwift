//
//  PokemonColorModels.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation

public struct PokemonColorsModel: Codable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [ColorNameUrlModel]
}

public struct ColorNameUrlModel: Codable {
    public let name: String
    public let url: String
}

public struct PokemonColorModel: Codable, Identifiable {
    public let id: Int
    public let name: String
    public let pokemon_species: [ColorNameUrlModel]
}
