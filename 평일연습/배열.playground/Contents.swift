import UIKit
//1
let teamNameArray = [String]([
"seungJun",
"Yewon",
"JinHyeong",
"wonyeong",
"hyunggu",
"SeokJun",
"Ted",
])

for name in teamNameArray {
    print(name)
}

//2
let nextTeamArray = {
    "eunno",
    "jina",
    "jeonghoon",
    "minkyoung",
    "yeseul",
    "junho",
    "keunsub",
    "jonghyeon"
}

let teamFavoriteArtists = [String]([
"JOji",
"Day 6",
"jaypark",
"post malone",
"IU",
"crush",
"the weekend",
"j.cole",
])

var myTeamDictionanry = Dictionary(uniqueKeysWithValues: zip(teamNamArray, teamFavoriteArtists))

for (name, artist) in myTeamDictionary {
    print("xladnjs : \(name), 좋아하는 아티스트: \(artist)")
}


//4
let nextTeamFavoriteArtist = [
"부재중",
"rihanna",
"postmalone",
"10cm",
"부재중",
"akmu",
"jannabi",
"nerdconnection",
]

let nextTemaDictionary = Dictionary(uniqueKeysWithValues: zip(nextTeamNameArray, nextTeamFavoriteArtist))

//수정할게 많음
