//
//  Pokemon.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation
import Combine
import UIKit

/**
 Pokemon struct contains all functions to request pokemon(s) information(s).
 */

public struct Pokemon {
    
    public init(client: PokeSDK) {
        self.client = client
    }
    
    private let client: PokeSDK
    private let networkHandler: NetworkHandler = NetworkHandler()
    
    private let pokemonURL = "pokemon/"
    
    /**
     Request all pokemons of PokeAPI.
     - Returns: PokemonsModel model struct.
     */
    public func getAllPokemons() -> Future <PokemonsModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonURL) {
                switch $0 {
                case .success(let data):
                    if let pokemons: PokemonsModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(pokemons))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request all pokemons of PokeAPI.
     - Parameters:
     - url: url of next or previous page of pokemons pagination
     - Returns: PokemonsModel model struct.
     */
    public func getAllPokemonsByUrl(url: String) -> Future <PokemonsModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByURL(url: url){
                switch $0 {
                case .success(let data):
                    if let pokemons: PokemonsModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(pokemons))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Pokemon by id.
     - Parameters:
     - id: ID of the pokemon.
     - Returns: Pokemon  model struct.
     */
    public func getPokemonByID(id: Int) -> Future <PokemonModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonURL+String(id)) {
                switch $0 {
                case .success(let data):
                    if let pokemon: PokemonModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(pokemon))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Pokemon by id.
     - Parameters:
     - name: name of the pokemon.
     - Returns: Pokemon  model struct.
     */
    public func getPokemonByName(name: String) -> Future <PokemonModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonURL+name) {
                switch $0 {
                case .success(let data):
                    if let pokemon: PokemonModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(pokemon))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
}
