//
//  Users.swift
//  Users
//
//  Created by Shahrukh Alam on 25/09/21.
//

import Foundation
import Combine

protocol APIService {
    func getUsers1() -> AnyPublisher<[User], Error>
    func getUsers2() -> AnyPublisher<[User], Error>
    func getUsers3() -> AnyPublisher<[User], Error>
    func getUsers4() -> AnyPublisher<[User], Error>
    func getUsers5() -> AnyPublisher<[User], Error>
    func getUsers6() -> AnyPublisher<[User], Error>
    func getUsers7() -> AnyPublisher<[User], Error>
    func getUsers8() -> AnyPublisher<[User], Error>
    func getUsers9() -> AnyPublisher<[User], Error>
    func getUsers10() -> AnyPublisher<[User], Error>
}
