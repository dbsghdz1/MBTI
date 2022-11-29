//
//  Model.swift
//  MBTI
//

import Foundation

struct Question {
    let question: String
    let answerOne: String
    let answerTwo: String
    let choiceOne: Int
    let choiceTwo: Int
    init(q: String, a1: String, a2: String, c1: Int, c2: Int) {
        question = q
        answerOne = a1
        answerTwo = a2
        choiceOne = c1
        choiceTwo = c2
    }
}

