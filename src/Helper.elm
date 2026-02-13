module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- LANGUAGES


language : List { name : String, releaseYear : Int, currentVersion : String }
language =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]



-- ✅ NOMBRE CORREGIDO


languageNames :
    List { name : String, releaseYear : Int, currentVersion : String }
    -> List String
languageNames inData =
    List.map .name inData



-- USERS


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Paola"
      , uType = "Student"
      }
    , { name = "Mit"
      , uType = "Teacher"
      }
    ]


onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        userList



-- VIDEOGAMES


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 12
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 2022
      , available = False
      , downloads = 19
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



-- COMPUTER


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "24"
    , model = "Thinkpad"
    , brand = "Lenovo"
    , screenSize = "13"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.ul []
            [ Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]
            , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]
            , Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]
            , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
            ]
        ]
