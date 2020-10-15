//
//  NewsModel.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/14/20.
//

import Foundation

struct DataResponse: Decodable {
    var title: String
    var thumbnail: String
    var score: Int
}

struct DataObject: Decodable {
    var data: DataResponse
}

struct Children: Decodable {
    var children: [DataObject]
}

struct DataMainResponse: Decodable {
    var data: Children
}

