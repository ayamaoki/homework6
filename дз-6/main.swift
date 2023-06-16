//
//  main.swift
//  дз-6
//
//  Created by Алтынай Айтназарова on 5/6/23.
//

import Foundation

//1. Составить замыкание, которое считает кол-во букв в нашем предложении, которое мы вводим в консоли.

var cyrylica =  ["а","б","в","г","д","е","ё","ж","з","и","й","к","л","н","м","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я"]

var latinica = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

func counterLetter(str: String, closure: (Character) -> Bool) -> Int {
    
    var sum = 0
    for i in str {
        if closure(i) {
            sum += 1
        }
    }
    return sum
}

print("введите предложение ")
let str1 = readLine()!

let result = counterLetter(str: str1) { letter in
    for i in cyrylica {
        
        if letter == Character(i) || letter == Character(i.uppercased()){
            return true
        }
    }
    for i in latinica {
        if letter == Character(i) || letter == Character(i.uppercased()) {
            return true
        }
    }
    return false
}
print("\(result) букв")


//2. Составить замыкание, которое переводит наши деньги в курс доллара.

let exchange: Double = 0.0088
let convertToDollar: (Double) -> Double = { amount in
    return amount * exchange
}

let amountInCurrency: Double = 5000
let amountInDollars = convertToDollar(amountInCurrency)
print(amountInDollars)

print("new code")
