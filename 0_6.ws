title POST to /notes
note right of Kayttaja:
    Kayttaja kirjoittaa muistiinpanon 
    ja painaa tallennuspainiketta
    end note
Kayttaja->Selain: Painallus Tallenna-nappiin 


Selain->Palvelin: POST /new_note_spa
note right of Selain:
    POST-pyyntö sisältää request 
    bodyssa muistiinpanon
    end note
note left of Palvelin:
    Palvelin päivittää tietokantaan uuden viestin
    end note
Palvelin->Selain: Status 201 created
note right of Kayttaja
    Näkymä voi päivittyä jo 
    ennen palvelimen vastausta.
    Päivitys tapahtuu selaimen 
    muistissa olevan tiedon pohjalta
end note
Selain->Kayttaja: Selain päivittää näkymin
