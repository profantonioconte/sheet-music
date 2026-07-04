\version "2.22.0"

\header {
  title = "Marsch der Bersaglieri"
  subtitle = "Base per Arrangiamento Jazz (LA MUSICA RITROVATA)"
  composer = "Rich. Eilenberg - Op. 99"
  arranger = "arr. v. Rob. Wohlfahrt"
}

global = {
  \time 2/4
  \tempo "Tempo di Marcia"
}

% --- LINEA SOLISTA (Violino / Flauto / Mandolino) ---
solistaMelody = \relative c'' {
  \global
  \key g \major
  \clef treble

  % --- INTRODUZIONE ED ENTRATA (Image 13, 18) ---
  d16(\ff e d cis d8) b' |
  a16( b a gis a8) fis |
  g16( a g fis g8) e |
  d4 r |
  
  % Primo Tema (in piano)
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

  % --- SVILUPPO E VARIAZIONE CROMATICA (Image 14) ---
  b8.\ff b16 b8 b |
  b8 ais16 b c8 b |
  a8. a16 a8 a |
  a8 gis16 a b8 a |
  g8\mf fis16 g a8 g |
  fis8 eis16 fis g8 fis |
  e8 dis16 e fis8 e |
  d4 r\ff |

  % --- TRIO (Image 15, 19) ---
  \key c \major
  \repeat volta 2 {
    e4.\mdolce g8 |
    c4. e8 |
    g2 |
    f4. r8 |
    d4. f8 |
    b4. d8 |
    f2 |
    e4. r8 |
    
    % Frase di risposta del Trio
    e,4. g8 |
    c4. e8 |
    g8 f16( e) d8 c |
    b4. r8 |
    d8 c16( b) a8 g |
    f8 e16( d) c8 b |
    c4 r8 g' |
    c4 r |
  }
}

% --- ACCOMPAGNAMENTO PIANOFORTE (Mano Destra - Guida Armonica) ---
pianoRight = \relative c'' {
  \global
  \key g \major
  \clef treble

  % Intro
  <b d g>16\ff r <b d g> r <g b d>8 r |
  <c e a>16 r <c e a> r <a c e>8 r |
  <d fis c'>16 r <d fis c'> r <c fis a>8 r |
  <b d g>4 r |

  % Accordi in levare della marcia (Mano Destra)
  \repeat volta 2 {
    r8 <g b d>\p r <g b d> |
    r8 <g b d> r <g b d> |
    r8 <g c e> r <g b d> |
    r8 <d fis a> r <d fis a> |
    r8 <d fis a> r <d fis a> |
    r8 <d fis a> r <d fis a> |
    r8 <d fis c'> r <d fis a> |
    r8 <g b d> r <g b d> |
  }

  % Variazione
  r8 <g b d>\ff r <g b d> |
  r8 <g b d> r <g b d> |
  r8 <d fis a> r <d fis a> |
  r8 <d fis a> r <d fis a> |
  r8 <g b d>\mf r <g b d> |
  r8 <d fis a> r <d fis a> |
  r8 <g a cis> r <g a cis> |
  <f a d>4 r\ff |

  % Trio
  \key c \major
  \repeat volta 2 {
    r8 <c e g>\mdolce r <c e g> |
    r8 <c e g> r <c e g> |
    r8 <c e g> r <c e g> |
    r8 <d f g> r <d f g> |
    r8 <d f g> r <d f g> |
    r8 <d f g> r <d f g> |
    r8 <d f g> r <d f g> |
    r8 <c e g> r <c e g> |
    
    r8 <c e g> r <c e g> |
    r8 <c e g> r <c e g> |
    r8 <c e g> r <c e g> |
    r8 <d f g> r <d f g> |
    r8 <d f g> r <d f g> |
    r8 <g, b d f> r <g b d f> |
    <c e g c>4 r |
    <c e g c>4 r |
  }
}

% --- ACCOMPAGNAMENTO PIANOFORTE (Mano Sinistra - Linea dei Bassi) ---
pianoLeft = \relative c {
  \global
  \key g \major
  \clef bass

  % Intro
  g8 r g' r |
  a,8 r a' r |
  d,,8 r d' r |
  g,4 r |

  % Bassi alternati (In due)
  \repeat volta 2 {
    g4 d |
    g4 d |
    c4 g' |
    d4 a |
    d4 a |
    d4 a |
    d4 d' |
    g,4 d |
  }

  % Variazione
  g4 d |
  g4 d |
  d4 a |
  d4 a |
  g4 d' |
  d4 a |
  a4 a' |
  d,4 r |

  % Trio
  \key c \major
  \repeat volta 2 {
    c4 g |
    c4 g |
    c4 e |
    g4 d |
    g4 d |
    g4 d |
    g4 b |
    c4 g |
    
    c4 g |
    c4 g |
    c4 c' |
    g4 d |
    g4 b, |
    g4 g' |
    c,4 r |
    c,4 r |
  }
}

% --- STRUTTURA DEL PROGETTO ---
\score {
  <<
    \new Staff \with { instrumentName = "Solista" } \solistaMelody
    \new PianoStaff \with { instrumentName = "Piano" } <<
      \new Staff = "right" \pianoRight
      \new Staff = "left" \pianoLeft
    >>
  >>
  \layout { }
  \midi { }
} 