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


languageFuzzer : List { name : String, releaseYear : Int, currentVersion : String }
languageFuzzer =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascrip", releaseYear = 1995, currentVersion = "ECMAScrip 2025" }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames inData =
    List.map .name inData


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = " Paola"
      , uType = "Student"
      }
    , { name = "Mit", uType = "Teacher" }
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
    , { title = "Ocaring of time"
      , releaseYear = 2022
      , available = False
      , downloads = 19
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


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
        [ Html.h1 []
            [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ .ram myLaptop) ]
                , Html.li [] [ Html.text ("Modelo: " ++ .model myLaptop) ]
                , Html.li [] [ Html.text ("Marca: " ++ .brand myLaptop) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
