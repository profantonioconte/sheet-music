\version "2.22.0"

\header {
  title = "Marsch der Bersaglieri"
  subtitle = "Restauro Filologico del Tema Principale"
  composer = "Richard Eilenberg - Op. 99"
}

global = {
  \time 2/4
  \key g \major
  \tempo "Allegro"
}

themeVoice = \relative c'' {
  \global
  % Indicazione dello strumento principale come da spartito originale
  \set Staff.instrumentName = #"Violine / Flöte"
  
  % --- INTRODUZIONE (Image 13 / 18) ---
  d16(\ff e d cis d8) b' |
  a16( b a gis a8) fis |
  g16( a g fis g8) e |
  d4 r |
  
  % --- PARTE I: TEMA PRINCIPALE (In Piano) ---
  \repeat volta 2 {
    b4.\p d8 |
    g4. b8 |
    d8 c16( b) a8 g |
    fis4. r8 |
    a4. c8 |
    fis4. a8 |
    c8 b16( a) g8 fis |
    g4. r8 |
  }
  
  % --- PARTE II: SVILUPPO CROMATICO (Image 14 / 18) ---
  b8.\ff b16 b8 b |
  b8 ais16 b c8 b |
  a8. a16 a8 a |
  a8 gis16 a b8 a |
  g8\mf fis16 g a8 g |
  fis8 eis16 fis g8 fis |
  e8 dis16 e fis8 e |
  d4 r |
  
  % --- TRIO (Image 15 / 19) ---
  \key c \major
  \repeat volta 2 {
e4.\p^\markup { \italic "dolce" } g8 |
    c4. e8 |
    g2 |
    f4. r8 |
    d4. f8 |
    b4. d8 |
    f2 |
    e4. r8 |
    
    e,4. g8 |
    c4. e8 |
    g8 f16( e) d8 c |
    b4. r8 |
    d8 c16( b) a8 g |
    f8 e16( d) c8 b |
    c4 r |
    c4 r |
  }
}

\score {
  \new Staff \themeVoice
  \layout { }
  \midi { }
}