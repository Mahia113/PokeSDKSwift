//
//  PokemonStats.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation
import Combine

/**
 PokemonStats struct contains all functions to request stat(s) information(s).
 */

public struct PokemonStat {
    
    public init(client: PokeSDK) {
        self.client = client
    }
    
    private let client: PokeSDK
    private let networkHandler: NetworkHandler = NetworkHandler()
    
    private let pokemonStatsURL = "stat/"
    
    /**
     Request all stats of PokeAPI.
     - Returns: PokemonStatsModel model struct.
     */
    public func getAllStats() -> Future <PokemonStatsModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonStatsURL) {
                switch $0 {
                case .success(let data):
                    if let stats: PokemonStatsModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(stats))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Stat by id.
     - Parameters:
     - id: ID of the stat.
     - Returns: PokemonStatModel  model struct.
     */
    public func getDescriptionOfStatById(id: Int) -> Future <PokemonStatModel, Error>  {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonStatsURL+String(id)) {
                switch $0 {
                case .success(let data):
                    if let stat: PokemonStatModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(stat))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
    
    /**
     Request Stat by name.
     - Parameters:
     - name: name of the stat.
     - Returns: PokemonStat  model struct.
     */
    public func getDescriptionOfStatByName(name: String) -> Future <PokemonStatModel, Error> {
        return Future() { promise in
            networkHandler.performAPIRequestByMethod(method: pokemonStatsURL+name) {
                switch $0 {
                case .success(let data):
                    if let stat: PokemonStatModel = self.networkHandler.decodeJSONData(data: data) {
                        promise(.success(stat))
                    }
                case .failure(let error):
                    promise(.failure(error))
                }
            }
        }
    }
}
