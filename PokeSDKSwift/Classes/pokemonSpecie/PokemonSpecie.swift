//
//  PokemonSpecies.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation
import Combine

/**
 PokemonSpecie struct contains all functions to request specie information(s).
 */
public struct PokemonSpecie {
    
    public init(client: PokeSDK) {
        self.client = client
    }
    
    private let client: PokeSDK
    private let networkHandler: NetworkHandler = NetworkHandler()
    private let pokemonSpecieURL = "pokemon-species/"
    
    /**
     Request all types of  species of pokemons of PokeAPI.
     - Returns: PokemonSpeciesModel model struct.
     */
    public func getAllSpecies() -> Future <PokemonSpeciesModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonSpecieURL) {
                switch $0 {
                case .success(let data):
                    if let species: PokemonSpeciesModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(species))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request all types of  species of pokemons of PokeAPI by URL. For pagination way.
     - Parameters:
     - url: url of next or previous page of species pagination
     - Returns: PokemonSpeciesModel model struct.
     */
    public func getAllSpeciesByURL(url: String) -> Future <PokemonSpeciesModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByURL(url: url) {
                switch $0 {
                case .success(let data):
                    if let species: PokemonSpeciesModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(species))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request specie by id.
     - Parameters:
     - id: id of the specie.
     - Returns: PokemonSpecieModel  model struct.
     */
    public func getSpecieById(id: Int) -> Future <PokemonSpecieModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonSpecieURL+String(id)) {
                switch $0 {
                case .success(let data):
                    if let specie: PokemonSpecieModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(specie))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request specie by name.
     - Parameters:
     - name: name of the specie.
     - Returns: PokemonSpecieModel  model struct.
     */
    public func getSpecieByName(name: String) -> Future <PokemonSpecieModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonSpecieURL+name) {
                switch $0 {
                case .success(let data):
                    if let specie: PokemonSpecieModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(specie))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
}
