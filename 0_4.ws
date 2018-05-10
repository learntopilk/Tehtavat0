title POST to /notes

Kayttaja->Selain: Painallus Tallenna-nappiin 
note right of Kayttaja:
    Kayttaja kirjoittaa muistiinpanon 
    ja painaa tallennuspainiketta
    end note

Selain->Palvelin: POST /new_note
note right of Selain:
    POST-pyyntö sisältää request 
    bodyssa muistiinpanon
    end note
note left of Palvelin:
    Palvelin päivittää 
    data.json-tiedoston 
    ja ohjaa selaimen 
    lataamaan sivun uudelleen
    end note
Palvelin->Selain: Status 302, redirect /notes
Selain->Palvelin: GET /notes
note left of Selain:
    HTML-tiedosto sisältää pyynnöt tiedostoihin
    main.css, main.js, data.json
    end note
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