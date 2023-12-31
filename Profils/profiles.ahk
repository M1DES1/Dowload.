SetTitleMatchMode, 2
global currentProfile = 

; Definicje profili
Profiles = {
    Profile1 pathtoscript1.ahk,
    Profile2 pathtoscript2.ahk,
    ; Dodaj inne profile według potrzeb
}

; Funkcja do przełączania profili
SwitchProfile(ProfileName) {
    global currentProfile
    
    ; Zamknij aktualny profil, jeśli istnieje
    If currentProfile
        Process, Close, % currentProfile%
    
    ; Otwórz nowy profil
    currentProfile = Profiles[ProfileName]
    Run, % currentProfile%
}