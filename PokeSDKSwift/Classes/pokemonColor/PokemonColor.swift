//
//  PokemonColor.swift
//  pokeSdkApp
//
//  Created by Mahia114
//

import Foundation
import Combine

/**
 PokemonColor struct contains all functions to request color of pokemons.
 */
public struct PokemonColor {
    
    public init(client: PokeSDK) {
        self.client = client
    }
    
    private let client: PokeSDK
    private let networkHandler: NetworkHandler = NetworkHandler()
    private let pokemonColorURL = "pokemon-color/"
    
    /**
     Request all types of  colors of pokemons of PokeAPI.
     - Returns: PokemonColorsModel model struct.
     */
    public func getAllColors() -> Future <PokemonColorsModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonColorURL) {
                switch $0 {
                case .success(let data):
                    if let colors: PokemonColorsModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(colors))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request color by id.
     - Parameters:
     - id: id of the color.
     - Returns: PokemonColorModel  model struct.
     */
    public func getColorById(id: Int) -> Future <PokemonColorModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonColorURL+String(id)) {
                switch $0 {
                case .success(let data):
                    if let color: PokemonColorModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(color))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request color by name.
     - Parameters:
     - name: name of the color.
     - Returns: PokemonColorModel  model struct.
     */
    public func getColorByName(name: String) -> Future <PokemonColorModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonColorURL+name) {
                switch $0 {
                case .success(let data):
                    if let color: PokemonColorModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(color))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
}

