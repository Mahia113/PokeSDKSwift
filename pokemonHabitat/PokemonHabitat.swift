//
//  PokemonHabitat.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation
import Combine

/**
 PokemonTypes struct contains all functions to request habitat information(s).
 */
public struct PokemonHabitat {
    
    public init(client: PokeSDK) {
        self.client = client
    }
    
    private let client: PokeSDK
    private let networkHandler: NetworkHandler = NetworkHandler()
    private let pokemonHabitatURL = "pokemon-habitat/"
    
    /**
     Request all types of  habitats of pokemons of PokeAPI.
     - Returns: PokemonHabitatsModel model struct.
     */
    public func getAllHabitats() -> Future <PokemonHabitatsModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonHabitatURL) {
                switch $0 {
                case .success(let data):
                    if let habitats: PokemonHabitatsModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(habitats))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Habitat by id.
     - Parameters:
     - id: id of the Habitat.
     - Returns: PokemonHabitatModel  model struct.
     */
    public func getHabitatById(id: Int) -> Future <PokemonHabitatModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonHabitatURL+String(id)) {
                switch $0 {
                case .success(let data):
                    if let habitat: PokemonHabitatModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(habitat))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Habitat by name.
     - Parameters:
     - name: name of the Habitat.
     - Returns: PokemonHabitatModel  model struct.
     */
    public func getHabitatByName(name: String) -> Future <PokemonHabitatModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonHabitatURL+name) {
                switch $0 {
                case .success(let data):
                    if let habitat: PokemonHabitatModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(habitat))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
}
