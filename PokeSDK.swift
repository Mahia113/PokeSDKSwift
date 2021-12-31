//
//  PokeSDK.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation

/**
 API SDK for Pokemon API.
 */
public struct PokeSDK {
    
    public init(){}
    
    /**
     Access Pokemon struct.
     - Returns: Pokemon struct.
     */
    public func Pokemon() -> Pokemon {
        let pokemon = PokeSDKSwift.Pokemon(client: self)
        return pokemon
    }
    
    /**
     Access PokemonStat struct.
     - Returns: PokemonStat struct.
     */
    public func PokemonStat() -> PokemonStat {
        let pokemonStats = PokeSDKSwift.PokemonStat(client: self)
        return pokemonStats
    }
    
    /**
     Access PokemonType struct.
     - Returns: PokemonType struct.
     */
    public func PokemonType() -> PokemonType {
        let pokemonType = PokeSDKSwift.PokemonType(client: self)
        return pokemonType
    }
    
    /**
     Access PokemonHabitat struct.
     - Returns: PokemonHabitat struct.
     */
    public func PokemonHabitat() -> PokemonHabitat {
        let pokemonHabitat = PokeSDKSwift.PokemonHabitat(client: self)
        return pokemonHabitat
    }
    
    /**
     Access PokemonSpecie struct.
     - Returns: PokemonSpecie struct.
     */
    public func PokemonSpecie() -> PokemonSpecie {
        let pokemonSpecie = PokeSDKSwift.PokemonSpecie(client: self)
        return pokemonSpecie
    }
    
    /**
     Access PokemonColor struct.
     - Returns: PokemonColor struct.
     */
    public func PokemonColor() -> PokemonColor {
        let pokemonColor = PokeSDKSwift.PokemonColor(client: self)
        return pokemonColor
    }
}
