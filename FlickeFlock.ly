\version "2.22.0"

\header {
  title = "Flick e Flock"
  subtitle = "Gli Orfanelli - Duettino Completo"
  composer = "G. F. Buongiovanni"
  poet = "G. F. Buongiovanni"
}

global = {
  \key f \major
  \time 2/4
  \tempo "Allegretto"
}

% --- VOCE 1: FLIK ---
flikVoice = \relative c'' {
  \global
  \clef treble
  % Introduzione Pianoforte (Battute 1-16)
  R2*16 | 
  
  % [PAGINA 1] - Ingresso Flik
  r4 r8 c |
  a8 f16 f a8 c |
  bes8 g r g16 bes |
  a8 f r f16 a |
  g8 c r4 |
  R2*4 | % Aspetta la risposta di Flok
  
  % Dialogo incrociato
  r8 c c c | a4 r |
  R2 |
  r8 d d d | b4 r |
  
  % Duetto: "Molto grande è nostro amore..."
  r8 c\f c c |
  f4 e8 d |
  c4 b8 a |
  g8 c c4 |
  
  % [PAGINA 2] - Continuazione duetto
  bes8 c d c |
  a8 c f c |
  g8 c e c |
  f4 r8 c |
  
  % Sezione "Non è ver? Rispondi..."
  a'4( g8) f |
  e4. d8 |
  c8 r r4 |
  R2 |
  
  % Sezione "1° TEMPO" (Flik qua, Flik là)
  c8\mf c c c |
  c4 r |
  r8 c c c |
  c4 r |
  c8 c c c |
  c4 r |
  
  % Sezione "Poco Meno" (Finale)
  a'8\f a f f |
  g8 g c,4 |
  bes'8 bes g g |
  a4 r |
  a8 a f f |
  g8 g c,4 |
  bes'8 bes c, e |
  f4 r | \bar "|."
}

flikLyrics = \lyricmode {
  % Strofa 1
  Siam due no -- bi -- li_or -- fa -- nel -- li, 
  e per giun -- ta ric -- chi_e bel -- li.
  O -- ve Flick? 
  O -- ve Flock?
  Mol -- to gran -- de_è nos -- tro_a -- mo -- re,
  por -- ten -- to -- so, svi -- sce -- ra -- to,
  stre -- pi -- to -- so. Non è ver? Ris -- pon -- di...
  Flik qua, Flik là, non c'è Flik sen -- za Flok,
  Noi siam fi -- gli di Mam -- ma e_i -- gno -- riam chi sia pa -- pà!
  Noi siam fi -- gli di Mam -- ma e_i -- gno -- riam chi sia pa -- pà!
}

% --- VOCE 2: FLOK ---
flokVoice = \relative c'' {
  \global
  \clef treble
  R2*16 | % Intro
  
  % [PAGINA 1] - Risposta Flok
  R2 |
  r4 r8 c |
  bes8 g16 g bes8 d |
  c8 a r a16 c |
  bes8 g r g16 bes |
  a8 c r4 |
  R2*2 |
  
  % Dialogo incrociato
  R2 |
  r8 c c c | g4 r |
  R2 |
  r8 d' d d | g,4 r |
  
  % Duetto: "Molto grande è nostro amore..."
  r8 c\f c c |
  d4 c8 b |
  a4 g8 f |
  e8 e' e4 |
  
  % [PAGINA 2] - Continuazione duetto
  g,8 a bes a |
  f8 a d a |
  e8 a c a |
  d4 r8 c |
  
  % Sezione "Non è ver? Rispondi..."
  f4( e8) d |
  c4. b8 |
  a8 r r4 |
  R2 |
  
  % Sezione "1° TEMPO" (Flok qua, Flok là)
  r8 d\mf d d |
  d4 r |
  d8 d d d |
  d4 r |
  r8 d d d |
  d4 r |
  
  % Sezione "Poco Meno" (Finale)
  f8\f f d d |
  e8 e c4 |
  g'8 g e e |
  f4 r |
  f8 f d d |
  e8 e c4 |
  g'8 g c,, c |
  f4 r | \bar "|."
}

flokLyrics = \lyricmode {
  % Strofa 1
  ed io son Flok.
  Siam due no -- bi -- li_or -- fa -- nel -- li 
  e per giun -- ta ric -- chi_e bel -- li.
  E sem -- pre Flack.
  É sem -- pre Flick.
  Mol -- to gran -- de_è nos -- tro_a -- mo -- re,
  por -- ten -- to -- so, svi -- sce -- ra -- to,
  stre -- pi -- to -- so. Non è ver? Ris -- pon -- di...
  Flok qua, Flok là, non c'è Flok sen -- za Flik,
  Noi siam fi -- gli di Mam -- ma e_i -- gno -- riam chi sia pa -- pà!
  Noi siam fi -- gli di Mam -- ma e_i -- gno -- riam chi sia pa -- pà!
}

% --- PIANOFORTE: MANO DESTRA ---
pianoRight = \relative c'' {
  \global
  \clef treble
  % Introduzione (Battute 1-16)
  c16(\f d c b c8) a' |
  g16( a g fis g8) e |
  f16( g f e f8) d |
  c4 r |
  c16( d c b c8) a' |
  g16( a g fis g8) cis, |
  d16( e d cis d8) b' |
  c4 r |
  c,8 <f a> c <f a> |
  c8 <e g> c <e g> |
  d8 <f b> d <f b> |
  c8 <e g> c4 |
  c8 <f a> c <f a> |
  bes,8 <g' bes> c, <g' c> |
  <f a c>4 <e g c> |
  <f a f'>4 r \bar "||"
  
  % Accompagnamento Strofa 1 (Pagina 1)
  c8 <f a> c <f a> |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  c8 <f a> c <f a> |
  <g c>4 r |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  d8 <f b> d <f b> |
  c8 <e g> c4 |
  
  % Duetto "Molto Grande..."
  <c f a>4\f <c e g> |
  <f a d>4 <f b d> |
  <e g c>4 <d f b> |
  <c e g>4 r |
  
  % [PAGINA 2] - Continuazione accompagnamento
  <bes e g>4 <bes d f> |
  <a c f>4 <a d f> |
  <g c e>4 <g bes c> |
  <a c f>4 r |
  
  % Non è ver...
  <f' a c>4 r |
  <e g c>4 r |
  <d f b>4 <g, d' f> |
  <c e g>4 r |
  
  % Sezione 1° Tempo (Flik/Flok qua e là)
  <c f a>8\mf <c f a> <c f a> r |
  <bes e g>8 <bes e g> <bes e g> r |
  <d f b>8 <d f b> <d f b> r |
  <c e g>8 <c e g> <c e g> r |
  <c f a>8 <c f a> <c f a> r |
  <c e g>4 r |
  
  % Poco Meno (Finale speculare alle voci)
  <c f a>8\f <c f a> <a d f> <a d f> |
  <bes e g>8 <bes e g> <c e g>4 |
  <bes d g>8 <bes d g> <bes e g> <bes e g> |
  <a c f>4 r |
  <c f a>8 <c f a> <a d f> <a d f> |
  <bes e g>8 <bes e g> <c e g>4 |
  <bes d g>8 <bes d g> <bes c e> <bes c e> |
  <a c f>4 r |
}

% --- PIANOFORTE: MANO SINISTRA ---
pianoLeft = \relative c {
  \global
  \clef bass
  f8 <a c> f <a c> |
  e8 <g c> e <g c> |
  d8 <f b> d <f b> |
  c8 <e g> g, c |
  f8 <a c> f <a c> |
  e8 <g a cis> e <g a cis> |
  d8 <f g b> d <f g b> |
  c8 <e g c> c4 |
  f8 c' a c |
  c,8 c' g c |
  g8 d' b d |
  c,8 c' g4 |
  f8 c' a c |
  e,8 c' g c |
  c,4 c' |
  f,,4 r |
  
  % Accompagnamento Strofa
  f'8 <a c> f <a c> |
  f8 <a c> f <a c> |
  c,8 <e g> c <e g> |
  f8 <a c> f <a c> |
  c,8 <e g> c <e g> |
  f8 <a c> f <a c> |
  c,8 <e g> c <e g> |
  f8 <a c> a, <c f> |
  <c e g>4 r |
  f8 c' a c |
  c,8 c' g c |
  g8 d' b d |
  c,8 c' g4 |
  
  % Duetto
  f4 c |
  d4 g, |
  c4 g |
  c4 r |
  
  % Pagina 2
  c4 bes |
  f4 d |
  c4 c' |
  f,4 r |
  
  % Non è ver
  a4 r |
  c4 r |
  g4 g' |
  c,4 r |
  
  % 1° tempo
  f,4 r |
  c4 r |
  g'4 r |
  c,4 r |
  f4 r |
  c4 r |
  
  % Finale
  f4 d |
  c4 c' |
  g4 c, |
  f4 r |
  f4 d |
  c4 c' |
  g4 c, |
  f,4 r |
}

% --- STRUTTURA GENERALE ---
\score {
  <<
    \new Staff \with { vocalName = "Flik" } <<
      \new Voice = "flik" \flikVoice
      \new Lyrics \lyricsto "flik" \flikLyrics
    >>
    \new Staff \with { vocalName = "Flok" } <<
      \new Voice = "flok" \flokVoice
      \new Lyrics \lyricsto "flok" \flokLyrics
    >>
    \new PianoStaff \with { instrumentName = "Piano" } <<
      \new Staff = "right" \pianoRight
      \new Staff = "left" \pianoLeft
    >>
  >>
  \layout { }
  \midi { }
}