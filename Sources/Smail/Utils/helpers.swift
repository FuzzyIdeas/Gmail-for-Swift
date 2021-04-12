//
//  helpers.swift
//  gmail-client
//
//  Created by Praneet S on 09/04/21.
//

import Foundation
import Combine

extension Encodable {
  var dictionary: [String: Any]? {
    guard let data = try? JSONEncoder().encode(self) else { return nil }
    return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
  }
}

extension Gmail.UsersMessages {
    
    static func decodeToMessageList(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<MessagesList, Error> {
        publisher
            .decode(type: MessagesList.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func decodeToMessage(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<Message, Error> {
        publisher
            .decode(type: Message.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

}

extension Gmail.UsersThreads {
    
    static func decodeToThread(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<Thread, Error> {
        publisher
            .decode(type: Thread.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func decodeToThreadList(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<ThreadList, Error> {
        publisher
            .decode(type: ThreadList.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

}

extension Gmail.UsersLabels {
    
    static func decodeToLabel(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<Label, Error> {
        publisher
            .decode(type: Label.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func decodeToLabelList(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<LabelList, Error> {
        publisher
            .decode(type: LabelList.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
}

extension Gmail.UsersDrafts {
    static func decodeToDraftList(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<DraftList, Error> {
        publisher
            .decode(type: DraftList.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}

extension Gmail.UsersSettings {
    
    static func decodeToAutoForwarding(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<AutoForwarding, Error> {
        publisher
            .decode(type: AutoForwarding.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func decodeToImapSetttings(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<ImapSettings, Error> {
        publisher
            .decode(type: ImapSettings.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func decodeToLanguageSettings(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<LanguageSettings, Error> {
        publisher
            .decode(type: LanguageSettings.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func decodeToPopSettings(publisher: AnyPublisher<Data, URLError>) -> AnyPublisher<PopSettings, Error> {
        publisher
            .decode(type: PopSettings.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}