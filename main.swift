//
//  main.swift
//  SwiftGrundlagenLernen
//
//  Created by Oswin Joseph Ziervogel on 24.04.25.
//
//a sample for classes and objects
/*
⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣤⣤⣤⣤⣤⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⣠⣤⣤⣾⠟⠛⠛⠛⠛⠛⠛⠛⠻⣦⣤⣤⣄⠀⠀⠀⠀⠀
⠀⠀⣠⣾⡿⠟⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠟⠿⣿⣦⣄⠀⠀⠀
⣠⣼⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀
⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣶⡄⠀
⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⣀⣀⠀⠀⠀⣿⣿⡇⠀
⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⣿⣿⠀⠀⠀⣯⣿⡇⠀
⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠇⠀⠀⠀⠿⣿⠤⣤⣧⣧⣿⡇⡀
⠿⢿⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⡀⠀⠀⠀⠁⣠⣼⣿⠟⠃
⠀⠀⠿⢷⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣁⣀⣀⣀⣤⣿⠿⠁⠀⠀
⠀⠀⠀⠘⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠁⠁⠀⠀⠀

*/

import Foundation

class slime {
    var name: String = "Friedrich"
    var color: String = "green"
    var size: Double = 1.0
    var number: Int = 0
    
    func sayHello() -> String {
        return "Hello, my name is \(name) and I am \(color)! My size is \(size*100) cm!"
    }
    
    func feed(_ food: Double) ->Double {
        print("I (\(name)) just got fed \(food) kcal!")
        self.size += food
        return self.size
    }
    
    func split() -> slime{
        print("PLOP! I (\(name)) just split!")
        let oldSize = self.size
        self.size /= 2
        return slime(name: self.name + "_" + String(self.number+1), color: self.color, size: oldSize/2, number: self.number+1)
    }
    
    init(name: String, color: String, size: Double, number: Int) {
        self.name = name
        self.color = color
        self.size = size
        self.number = number
    }
}

class waterSlime: slime {
    override func sayHello() -> String {
        return "Hello, my name is \(name) and I am \(color)! My size is \(size*100) cm and I can swim!"
    }
    override func split() -> waterSlime {
        print("SPLOO! I (\(name)) just split!")
        let oldSize = self.size
        self.size /= 2
        return waterSlime(name: self.name + "_" + String(self.number+1), color: self.color, size: oldSize/2, number: self.number+1)
    }
}

class frozenSlime: slime {
    override func sayHello() -> String {
        return "Hello, my name is \(name) and I am \(color)! My size is \(size*100) cm and I am cool!"
    }
    override func split() -> frozenSlime {
        print("CRINK! I (\(name)) just split!")
        let oldSize = self.size
        self.size /= 2
        return frozenSlime(name: self.name + "_" + String(self.number+1), color: self.color, size: oldSize/2, number: self.number+1)
    }
}

class soapSlime: slime {
    override func sayHello() -> String {
        return "Hello, my name is \(name) and I am \(color)! My size is \(size*100) cm and I am slippery!"
    }
    override func split() -> soapSlime {
        print("BLUP! I (\(name)) just split!")
        let oldSize = self.size
        self.size /= 2
        return soapSlime(name: self.name + "_" + String(self.number+1), color: self.color, size: oldSize/2, number: self.number+1)
    }
}

print("""

                ██████████                
        ████████░░░░░░░░░░████████        
      ██░░░░░░░░░░░░░░░░░░░░░░░░░░██      
    ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██    
  ██░░░░░░░░░░░░░░░░░░            ░░██    
  ██░░░░░░░░░░░░░░                  ░░██  
██░░░░░░░░░░                        ░░░░██
██░░░░░░░░░░                        ░░░░██
██░░░░░░░░░░        ██        ██      ░░██
██░░░░░░░░          ██        ██      ░░██
██░░░░░░░░          ██        ██      ░░██
██░░░░░░░░                            ░░██
██░░░░░░░░░░                          ░░██
██░░░░░░░░░░░░                        ░░██
██░░░░░░░░░░░░░░                      ░░██
██░░░░░░░░░░░░░░░░░░                ░░░░██
████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████
    ██████████████████████████████████    

CONSOLE SLIMES

""")

var sl0im = slime(name: "Hans", color: "green", size: 0.1, number: 0)

print(sl0im.sayHello())
sl0im.feed(0.1)
print(sl0im.sayHello())

var sl0im2 = sl0im.split()

print(sl0im.sayHello())
print(sl0im2.sayHello())

var slOim = waterSlime(name: "Walter", color: "blue", size: 0.7, number: 0)
var sliperySloim = soapSlime(name: "Heinrich", color: "yellow", size: 0.13, number: 0)
var frozSlime = frozenSlime(name: "Reinhardt", color: "white", size: 0.3, number: 0)

print(slOim.sayHello())
print(sliperySloim.sayHello())
print(frozSlime.sayHello())

sl0im.feed(0.1)
sl0im2.feed(0.1)
slOim.feed(0.1)
sliperySloim.feed(0.1)
frozSlime.feed(0.1)

print(sl0im.sayHello())
print(sl0im2.sayHello())
print(slOim.sayHello())
print(sliperySloim.sayHello())
print(frozSlime.sayHello())
