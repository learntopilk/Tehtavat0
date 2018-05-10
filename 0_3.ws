title Pyyntö osoitteeseen /notes

Kayttaja->Selain: kirjoittaa osoiteriville

note right of Kayttaja:
    https://fullstack-exampleapp.herokuapp.com/notes
    end note
Selain->Palvelin: GET https://fullstack-exampleapp.herokuapp.com/notes
Palvelin->Selain: Status 200, HTML-tiedosto
Selain->Palvelin: GET main.css
Palvelin->Selain: Status 200, main.css
Selain->Palvelin: Get main.js
Palvelin->Selain: Status 200, main.js
Selain->Palvelin: Get data.json
Palvelin->Selain: Status 200, data.json
note left of Selain:
    Selain piirtää käyttäjälle sivun: HTML on ladattu, 
    CSS ladattu, JavaScript ladataan. JS-koodi pyytää datan,
    ja piirtää vastauksena saadun tiedon näytölle.
    end note