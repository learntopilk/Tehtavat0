Kayttaja->Selain: Kirjoittaa osoitekenttään 
note right of Kayttaja:
https://fullstack-exampleapp.herokuapp.com/spa
end note
Selain->Palvelin: GET https://fullstack-exampleapp.herokuapp.com/spa
Palvelin->Selain: Status 200, index.html
Selain->Palvelin: GET main.css
Palvelin->Selain: Status 200, main.css
Selain->Palvelin: Get main.js
Palvelin->Selain: Status 200, main.js
Note left of Selain:
    Sivu voidaan näyttää käyttäjälle
    esim. latausanimaation kera
end note
Selain->Kayttaja: Sivu piirretään
Selain->Palvelin: Get data.json
Palvelin->Selain: Status 200, data.json
Selain->Kayttaja: Muistiinpanot renderöidään käyttäjälle