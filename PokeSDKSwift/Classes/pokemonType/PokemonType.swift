//
//  PokemonTypes.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation
import Combine

/**
 PokemonTypes struct contains all functions to request type(s) of pokemons information(s).
 */
public struct PokemonType {
    
    public init(client: PokeSDK) {
        self.client = client
    }
    
    private let client: PokeSDK
    private let networkHandler: NetworkHandler = NetworkHandler()
    private let pokemonTypeURL = "type/"
    
    /**
     Request all types of pokemons of PokeAPI.
     - Returns: PokemonTypesModel model struct.
     */
    public func getAllTypes() -> Future <PokemonTypesModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonTypeURL) {
                switch $0 {
                case .success(let data):
                    if let types: PokemonTypesModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(types))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Type by id.
     - Parameters:
     - id: id of the type.
     - Returns: PokemonTypeModel  model struct.
     */
    public func getTypeById(id: Int) -> Future <PokemonTypeModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonTypeURL+String(id)) {
                switch $0 {
                case .success(let data):
                    if let type: PokemonTypeModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(type))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Type by name.
     - Parameters:
     - name: name of the type.
     - Returns: PokemonTypeModel  model struct.
     */
    public func getTypeByName(name: String) -> Future <PokemonTypeModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonTypeURL+name) {
                switch $0 {
                case .success(let data):
                    if let type: PokemonTypeModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(type))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
}
