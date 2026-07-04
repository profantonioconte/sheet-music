\version "2.22.0"

\header {
  title = "Flick e Flock"
  subtitle = "Gli Orfanelli - Duettino"
  composer = "G. F. Buongiovanni"
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
  % Ingresso Flik
  r4 r8 c |
  a8 f16 f a8 c |
  bes8 g r g16 bes |
  a8 f r f16 a |
  g8 c r c |
  a8 f16 f a8 c |
  bes8 g r g16 bes |
  a8 c f, a |
  g4 r |
}

flikLyrics = \lyricmode {
  Siam due no -- bi -- li_or -- fa -- nel -- li, 
  e per giun -- ta ric -- chi_e bel -- li, 
  o -- v'è Flik? 
  o -- v'è Flik?
}

% --- VOCE 2: FLOK ---
flokVoice = \relative c'' {
  \global
  \clef treble
  R2*16 | % Intro
  % Risposta Flok (entra poco dopo)
  R2 |
  r4 r8 c |
  bes8 g16 g bes8 d |
  c8 a r a16 c |
  bes8 g r g16 bes |
  a8 c r c |
  bes8 g16 g bes8 d |
  c8 a r c |
  b4 r |
}

flokLyrics = \lyricmode {
  ed io son Flok. 
  Siam due no -- bi -- li_or -- fa -- nel -- li 
  e per giun -- ta ric -- chi_e bel -- li 
  e -- sem -- pio Flok.
}

% --- PIANOFORTE: MANO DESTRA ---
pianoRight = \relative c'' {
  \global
  \clef treble
  % Tema dell'introduzione
  c16(\f d c b c8) a' |
  g16( a g fis g8) e |
  f16( g f e f8) d |
  c4 r |
  c16( d c b c8) a' |
  g16( a g fis g8) cis, |
  d16( e d cis d8) b' |
  c4 r |
  
  % Seconda parte intro (battute 9-16 sbiadite, ricostruzione armonica)
  c,8 <f a> c <f a> |
  c8 <e g> c <e g> |
  d8 <f b> d <f b> |
  c8 <e g> c4 |
  c8 <f a> c <f a> |
  bes,8 <g' bes> c, <g' c> |
  <f a c>4 <e g c> |
  <f a f'>4 r \bar "||"
  
  % Accompagnamento sotto il canto (Strofa)
  c8 <f a> c <f a> |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  c8 <f a> c <f a> |
  c8 <e g> c <e g> |
  c8 <f a> c <f a> |
  <g c>4 r |
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
  
  f,8 c' a c |
  c,8 c' g c |
  g8 d' b d |
  c,8 c' g4 |
  f8 c' a c |
  e,8 c' g c |
  c,4 c' |
  f,,4 r |
  
  % Accompagnamento strofa
  f'8 <a c> f <a c> |
  f8 <a c> f <a c> |
  c,8 <e g> c <e g> |
  f8 <a c> f <a c> |
  c,8 <e g> c <e g> |
  f8 <a c> f <a c> |
  c,8 <e g> c <e g> |
  f8 <a c> a, <c f> |
  <c e g>4 r |
}

% --- STRUTTURA DELLO SPARTITO ---
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
    \new PianoStaff \with { instrumentName = "Pianoforte" } <<
      \new Staff = "right" \pianoRight
      \new Staff = "left" \pianoLeft
    >>
  >>
  \layout { }
  \midi { }
}