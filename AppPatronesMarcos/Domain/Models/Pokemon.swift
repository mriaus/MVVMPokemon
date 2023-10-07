//
//  Pokemon.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 6/10/23.
//

import Foundation

typealias PokemonsModel = [PokemonModel]

struct PokemonModel {
    
    var name: String
    var id: String
    var type: [String]
    var evolutionNumber: String
    var description: String
    var image: String?
    
}

var mockedData: PokemonsModel = [
    PokemonModel(name: "Bulbasaur", id: "0001", type: ["Planta","Veneno"], evolutionNumber: "1/3", description: "Este Pokémon nace con una semilla en el lomo, que brota con el paso del tiempo.", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"),
    PokemonModel(name: "Ivysaur", id: "0002", type: ["Planta","Veneno"], evolutionNumber: "2/3", description: "La luz del sol lo fortalece y hace que le crezca el capullo que tiene en el lomo", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png"),
    PokemonModel(name: "Venusaur", id: "0003", type: ["Planta","Veneno"], evolutionNumber: "3/3", description: "La flor que tiene en el lomo libera un delicado aroma, que tiene un efecto relajante en combate", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png"),
    PokemonModel(name: "Charmander", id: "0004", type: ["Fuego"], evolutionNumber: "1/3", description: "Prefiere las cosas calientes. Dicen que cuando llueve le sale vapor de la punta de la cola.", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png"),
    PokemonModel(name: "Charmeleon", id: "0005", type: ["Fuego"], evolutionNumber: "2/3", description: "Si se exalta en combate, expulsa intensas llamaradas que incineran todo a su alrededor.", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png"),
    PokemonModel(name: "Charizard", id: "0006", type: ["Fuego","Volador"], evolutionNumber: "3/3", description: "Se dice que el fuego de Charizard arde con más fuerza cuantas más duras batallas haya vivido.", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png"),
    PokemonModel(name: "Squirtle", id: "0007", type: ["Agua"], evolutionNumber: "1/3", description: "Cuando se siente en peligro, se esconde en su caparazón y escupe chorros de agua por la boca.", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png"),
    PokemonModel(name: "Wartortle", id: "0008", type: ["Agua"], evolutionNumber: "2/3", description: "Se lo considera un símbolo de longevidad. Los ejemplares más ancianos tienen musgo sobre el caparazón.", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png"),
    PokemonModel(name: "Blastoise", id: "0009", type: ["Agua"], evolutionNumber: "3/3", description: "Dispara chorros de agua a través de los cañones de su caparazón, capaces de agujerear incluso el acero.",
                image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png"),
    PokemonModel(name: "Caterpie",id: "0010", type: ["Bicho"], evolutionNumber: "1/3", description: "Para protegerse, despide un hedor horrible por las antenas con el que repele a sus enemigos.", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png" ),
    PokemonModel(name: "Metapod",id: "0011", type: ["Bicho"], evolutionNumber: "2/3", description: "Como en este estado solo puede endurecer su coraza, permanece inmóvil a la espera de evolucionar", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png"),
    PokemonModel(name: "Butterfree",id: "0012", type: ["Bicho","Volador"], evolutionNumber: "3/3", description: "Adora el néctar de las flores. Una pequeña cantidad de polen le basta para localizar prados floridos.", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png"),
    PokemonModel(name: "Vulpix",id: "0037", type: ["Fuego"], evolutionNumber: "1/2", description: "Su pelaje se va volviendo más suave, lustroso y bello a medida que le crecen las seis colas. Al abrazarlo, emana una ligera calidez.", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/037.png"),
    PokemonModel(name: "Diglett",id: "0050", type: ["Tierra"], evolutionNumber: "1/2", description: "Debido al terreno rico en metales, le crecen en la cabeza unos filamentos metálicos.", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/050.png"),
    PokemonModel(name: "Ditto aka: El mejor",id: "0132", type: ["Normal"], evolutionNumber: "-", description: "Su habilidad para transformarse es perfecta, pero, si se le hace reír, perderá la fuerza y no podrá mantenerse transformado.", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/132.png"),
    PokemonModel(name: "Eevee",id: "0133", type: ["Normal"], evolutionNumber: "ª", description: "De código genético irregular, puede mutar si se le expone a la radiación de piedras evolutivas. ", image:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png"),
    
    

    
]


   
