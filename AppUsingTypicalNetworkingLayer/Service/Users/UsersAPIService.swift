//
//  UsersAPIService.swift
//  UsersAPIService
//
//  Created by Shahrukh Alam on 25/09/21.
//

import Foundation
import Combine
import TypicalNetworking

class UsersAPIService: APIService {
    let client = APIClient()
    
    func getUsers1() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest1(), with: [User].self)
    }
    
    func getUsers2() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest2(), with: [User].self)
    }
    
    func getUsers3() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest3(), with: [User].self)
    }
    
    func getUsers4() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest4(), with: [User].self)
    }
    
    func getUsers5() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest5(), with: [User].self)
    }
    
    func getUsers6() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest6(), with: [User].self)
    }
    
    func getUsers7() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest7(), with: [User].self)
    }
    
    func getUsers8() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest8(), with: [User].self)
    }
    
    func getUsers9() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest9(), with: [User].self)
    }
    
    func getUsers10() -> AnyPublisher<[User], Error> {
        client.fetch(for: UsersRequest10(), with: [User].self)
    }
}
