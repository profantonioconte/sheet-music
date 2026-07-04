\version "2.22.0"

\header {
  title = "Feuerwehr-Galopp"
  subtitle = "dall'appendice di 'Flick und Flock's Abenteuer' - Op. 33"
  composer = "P. Hertel"
  disser = "LA MUSICA RITROVATA - Base per Arrangiamento Jazz"
}

global = {
  \time 2/4
}

% =====================================================================
% MANO DESTRA (Treble Clef)
% =====================================================================
pianoRight = \relative c'' {
  \global
  \key f \major
  \tempo "Allegro"
  
  % --- INTRODUCTION (Image 8) ---
  % Nota: Le note acute isolate rappresentano i tocchi di Glocke/Pfeife
  r8\p a16( b c8) r |
  \tuplet 3/2 { b16( c b } \tuplet 3/2 { a b a } g8) r |
  \tuplet 3/2 { a16( b a } \tuplet 3/2 { g a g } f8) r |
  \tuplet 3/2 { g16( a g } \tuplet 3/2 { fis g fis } e8) r |
  
  r8 a16( b c8) r |
  \tuplet 3/2 { b16( c b } \tuplet 3/2 { a b a } g8) r |
  \tuplet 3/2 { a16( b a } \tuplet 3/2 { g a g } f8) r |
  \tuplet 3/2 { e16( f e } \tuplet 3/2 { dis e dis } d8) r |
  
  r8 a'16(\cresc b c8) r |
  \tuplet 3/2 { b16( c b } \tuplet 3/2 { a b a } g8) r |
  r8 b16( c d8) r |
  \tuplet 3/2 { cis16( d cis } \tuplet 3/2 { b c b } a8) r |
  
  \tuplet 3/2 { a16(\f bes a } \tuplet 3/2 { g a g } f8) c' |
  \tuplet 3/2 { a16( bes a } \tuplet 3/2 { g a g } f8) c' |
  \tuplet 3/2 { a16( bes a } \tuplet 3/2 { g a g } f8) <e g c> |
  <f a f'>4 r \bar "||" 

  % --- GALOP (Image 9) ---
  \key d \major
  \repeat volta 2 {
    <d' f a d>8\ff^\marcato r <a d f a> r |
    <f a d f>4. <d f a d>8 |
    <e g a cis>8 r <g a cis e> r |
    <a cis e g>4. <e g a cis>8 |
    <d f a d>8 r <a d f a> r |
    <f a d f>4. <d f a d>8 |
    <e g a cis>8 r <a cis e g> r |
    <d f a d>4 r |
    
    % Sezione Cromatica centrale (Piano e Crescendo)
    <bis d fis a>8\p r <bis d fis a> r |
    <cis e g a>4. r8 |
    <cis e g a>8 r <cis e g a> r |
    <d f a>4. r8 |
    <d f b>8 r <d f b> r |
    <c e c'>4. r8 |
    <ais c e g>8 r <ais c e g> r |
    <b d f b>4 r |
  }
  
  % --- TRIO (Image 10) ---
  \key g \major
  \repeat volta 2 {
    <b d g>4.\mf b8 |
    a8( g) g4 |
    <c e a>4. c8 |
    b8( a) a4 |
    <d fis b>4. d8 |
    c8( b) b4 |
    <a c fis>8 r <a c fis> r |
    <g b g'>4 r |
    
    <b d g>4. b8 |
    a8( g) g4 |
    <c e a>4. c8 |
    b8( a) a4 |
    <d fis b>4. d8 |
    \tuplet 3/2 { cis16( d cis } \tuplet 3/2 { b c b } a8) r |
    <a c fis>8 r <a c fis> r |
  }
  \alternative {
    { <g b g'>4 r }
    { <g b g'>4 r^\markup { \italic "D.C. al Fine" } }
  } \bar "||"

  % --- FINALE / CODA (Image 11 & 12) ---
  \key d \major
  <d' f a d>8\ff r <a d f a> r |
  <f a d f>4. <d f a d>8 |
  <e g a cis>8 r <g a cis e> r |
  <a cis e g>4. <e g a cis>8 |
  
  \tempo "Più mosso"
  % Accellerazione conclusiva con ottave ribattute
  <d f a d>8 r r4 |
  \repeat unfold 4 { \tuplet 3/2 { d'16 e d } b8 } |
  \tempo "Pressez"
  <d, f a d>8 <f a d f> <a d f a> <d f a d> |
  <d f a d>4 <d f a d> |
  <d f a d>2\fermata \bar "|."
}

% =====================================================================
% MANO SINISTRA (Bass Clef)
% =====================================================================
pianoLeft = \relative c {
  \global
  \key f \major
  \clef bass
  
  % --- INTRODUCTION ---
  f8 <a c> r <a c> |
  e8 <g c> r <g c> |
  d8 <f b> r <f b> |
  c8 <e g> r <e g> |
  f8 <a c> r <a c> |
  e8 <g c> r <g c> |
  d8 <f b> r <f b> |
  g,8 <f' g b> r <f g b> |
  
  f8 <a c> r <a c> |
  e8 <g c> r <g c> |
  g8 <b d> r <b d> |
  a8 <c e> r <c e> |
  
  f,8 <a c> bes, <g' bes c> |
  f8 <a c> bes, <g' bes c> |
  c,4 <c, c'> |
  <f f'>4 r \bar "||"

  % --- GALOP ---
  \key d \major
  \repeat volta 2 {
    d8 <f' a d> a, <f'' a d> |
    d,8 <f' a d> a, <f'' a d> |
    a,,8 <g'' a cis> e, <g'' a cis> |
    a,,8 <g'' a cis> e, <g'' a cis> |
    d,8 <f' a d> a, <f'' a d> |
    d,8 <f' a d> a, <f'' a d> |
    a,,8 <g'' a cis> a,, <g'' a cis> |
    <d f a d>4 r |
    
    fis,8 <a' d fis> r <a d fis> |
    g,8 <a' cis g'>4 r8 |
    g,8 <a' cis g'> r <a cis g'> |
    f,8 <a' d f>4 r8 |
    gis,8 <b' d f> r <b d f> |
    a,8 <c' e c'>4 r8 |
    c,8 <e' g c> r <e g c> |
    g,,8 <d'' f b>4 r8 |
  }
  
  % --- TRIO ---
  \key g \major
  \repeat volta 2 {
    g,,8 <b' d g> d, <b'' d g> |
    g,,8 <b' d g> d, <b'' d g> |
    d,,8 <c'' d fis> fis,, <c'' d fis> |
    d,,8 <c'' d fis> fis,, <c'' d fis> |
    g,,8 <b' d g> d, <b'' d g> |
    g,,8 <b' d g> d, <b'' d g> |
    d,,8 <c'' d fis> d,, <c'' d fis> |
    <g b d g>4 r |
    
    g,,8 <b' d g> d, <b'' d g> |
    g,,8 <b' d g> d, <b'' d g> |
    d,,8 <c'' d fis> fis,, <c'' d fis> |
    d,,8 <c'' d fis> fis,, <c'' d fis> |
    g,,8 <b' d g> d, <b'' d g> |
    e,,8 <g'' a cis>4 r8 |
    d,,8 <c'' d fis> d,, <c'' d fis> |
  }
  \alternative {
    { <g b d g>4 r }
    { <g b d g>4 r }
  } \bar "||"

  % --- FINALE / CODA ---
  \key d \major
  d8 <f' a d> a, <f'' a d> |
  d,8 <f' a d> a, <f'' a d> |
  a,,8 <g'' a cis> e, <g'' a cis> |
  a,,8 <g'' a cis> e, <g'' a cis> |
  
  % Più mosso & Pressez bassi tellurici
  d,8 r r4 |
  d4 g |
  a4 a' |
  <d,, d'>8 r r4 |
  <d d'>4 <d d'> |
  <d d'>2\fermata \bar "|."
}

% =====================================================================
% LAYOUT E OUTPUT
% =====================================================================
\score {
  \new PianoStaff <<
    \new Staff = "right" \pianoRight
    \new Staff = "left" \pianoLeft
  >>
  \layout { }
  \midi { }
}