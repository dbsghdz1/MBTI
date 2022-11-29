//
//  QuestionList.swift
//  MBTI
//
//
//

import Foundation

struct QuestionList {
    
    var questionIndex = 0
    
    let MbtiQuestion = [
    /*0*/  Question(q: "만남을 주도하고 혼자 쉬는것 보단 친구들과 어울리는게 좋다.", a1: "네", a2: "아니오", c1: 1, c2: 16),
    /*1*/   Question(q: "만약 갑자기 죽게 된다면?", a1: "죽으면 죽는거지", a2: "환생할수 있을까? 귀신이 될까?", c1: 2, c2: 9),
    /*2*/ Question(q: "친구가 우울하다고 화분을 샀다면 당신의 답변은?", a1: "우울한데 화분을 왜 사?", a2: "왜 우울해? 무슨일 있었어?", c1: 3, c2: 6),
    /*3*/ Question(q: "어떤 일을 하기 전에 당신은 계획을 하는 편인가요?", a1: "네", a2: "아니오", c1: 4, c2: 5),
    /*4*/ Question(q: "ESTJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*5*/ Question(q: "ESTP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*6*/ Question(q: "어떤 일을 하기 전에 당신은 계획을 하는 편인가요?", a1: "네", a2: "아니오", c1: 7, c2: 8),
    /*7*/ Question(q: "ESFJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*8*/ Question(q: "ESFP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*9*/ Question(q: "친구가 우울하다고 화분을 샀다면 당신의 답변은?", a1: "우울한데 화분을 왜 사?", a2: "왜 우울해? 무슨일 있었어?", c1: 10, c2: 13),
    /*10*/    Question(q: "어떤 일을 하기 전에 당신은 계획을 하는 편인가요?", a1: "네", a2: "아니오", c1: 11, c2: 12),
    /*11*/Question(q: "ENTJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*12*/      Question(q: "ENTP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*13*/     Question(q: "어떤 일을 하기 전에 당신은 계획을 하는 편인가요?", a1: "네", a2: "아니오", c1: 14, c2: 15),
    /*14*/      Question(q: "ENFJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*15*/     Question(q: "ENFP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*16*/     Question(q: "만약 갑자기 죽게 된다면?", a1: "죽으면 죽는거지", a2: "환생할수 있을까? 귀신이 될까?", c1: 17, c2: 24),
    /*17*/     Question(q: "친구가 우울하다고 화분을 샀다면 당신의 답변은?", a1: "우울한데 화분을 왜 사?", a2: "왜 우울해? 무슨일 있었어?", c1: 18, c2: 21),
    /*18*/     Question(q: "어떤 일을 하기 전에 당신은 계획을 하는편인가요?", a1: "네", a2: "아니오", c1: 19, c2: 20),
    /*19*/     Question(q: "ISTJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*20*/     Question(q: "ISTP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*21*/    Question(q: "어떤 일을 하기 전에 당신은 계획을 하는편인가요?", a1: "네", a2: "아니오", c1: 26, c2: 27),
    /*22*/    Question(q: "ISFJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*23*/     Question(q: "ISFP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*24*/     Question(q: "친구가 우울하다고 화분을 샀다면 당신의 답변은?", a1: "우울한데 화분을 왜 사?", a2: "왜 우울해? 무슨일 있었어?", c1: 25, c2: 28),
    /*25*/     Question(q: "어떤 일을 하기 전에 당신은 계획을 하는편인가요?", a1: "네", a2: "아니오", c1: 26, c2: 27),
    /*26*/     Question(q: "INTJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*27*/    Question(q: "INTP", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*28*/    Question(q: "어떤 일을 하기 전에 당신은 계획을 하는편인가요?", a1: "네", a2: "아니오", c1: 29, c2: 30),
    /*29*/    Question(q: "INFJ", a1: "확인", a2: "확인", c1: 0, c2: 0),
    /*30*/    Question(q: "INFP", a1: "확인", a2: "확인", c1: 0, c2: 0)
    ]
    mutating func getTitle() -> String {
        return MbtiQuestion[questionIndex].question
    }
    mutating func nextQuestion(userChoice: String) -> Int {
        if userChoice == MbtiQuestion[questionIndex].answerOne {
            questionIndex = MbtiQuestion[questionIndex].choiceOne
            return questionIndex
        } else {
            questionIndex = MbtiQuestion[questionIndex].choiceTwo
            return questionIndex
        }
    }
    mutating func getChoice1Button() -> String {
        return MbtiQuestion[questionIndex].answerOne
    }
    mutating func getChoice2Button() -> String {
        return MbtiQuestion[questionIndex].answerTwo
    }
}
