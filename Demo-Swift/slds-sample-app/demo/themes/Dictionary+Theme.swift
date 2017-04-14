//
//  Theme.swift
//  slds-sample-app
//
//  Created by Joe Andolina on 4/13/17.
//  Copyright © 2017 Salesforce.com. All rights reserved.
//

import UIKit

public struct SalesforceTheme<Key: Hashable, Value: AnyObject>: Collection {
    public typealias DictionaryType = Dictionary<Key, Value>
    private var dictionary: DictionaryType
    
    //Collection: these are the access methods
    public typealias IndexDistance = DictionaryType.IndexDistance
    public typealias Indices = DictionaryType.Indices
    public typealias Iterator = DictionaryType.Iterator
    public typealias SubSequence = DictionaryType.SubSequence
    
    public var startIndex: Index { return dictionary.startIndex }
    public var endIndex: DictionaryType.Index { return dictionary.endIndex }
    public subscript(key: Key)->Value? {
        get { return dictionary[key] }
        set { dictionary[key] = newValue }
    }
    public func index(after i: Index) -> Index {
        return dictionary.index(after: i)
    }
    
    //Sequence: iteration is implemented here
    public func makeIterator() -> DictionaryIterator<Key, Value> {
        return dictionary.makeIterator()
    }
    
    //IndexableBase
    public typealias Index = DictionaryType.Index
}
