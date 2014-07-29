\version "2.10.25" 
\include "english.ly"

  global = {
  \key f \major
  \time 3/4
  }

melodyOne = \relative c
  {
  \clef bass \partial 4
  f | a a f | c' c c | bf bf g | d'2 d4 | c a c8( d8) | e4 d4. c8 | c4 c 
  d8 e | f4 c bf |a f bf | g g c | a2 d4 | bf2 c4 | a g4. f8 | f4 f 
  f | a a f | c' c c | bf bf g | d'2 d4 | c a c8( d8) |e4 d4. c8 | c2
  d8( e8) | f4 c bf | a f bf | g g c | a a d | bf bf c | a g4. f8 | f2
  } 

text = \lyricmode
  {
      Man's life is but vain;
    for 'tis sub -- ject to pain,
      and sor -- row, and short as a bub -- le;
    'tis a hodge podge of busi -- ness,
    and mo -- ny, and care;
      and care, and mo -- ny, and trou -- ble.
    But we'l take no care
    when the wea -- ther proves fair,
      nor will we vex now though it rain;
    we'l ban -- ish all sor -- row,
    and sing till to -- mor -- row,
      and Ang -- le, and Ang -- le a -- gain.
  } 

melodyTwo = \relative c
  {
  \clef bass \partial 4
  f4 | f f d | c c c | g' g g | d2 e4 | f f c | g' g,4. g8 | c4 c
  bf'8 bf | a4 a g | f f d | g e c | f2 bf,4 | ef2 c4 | f c4. c8 | f,4 f
  f' | f f d | c c c | g' g g | d2 e4 | f f c | g' g,4. g8 | c2
  c'4 | a a g | f f d | g e c | f f bf, | ef ef c | f c4. c8 | f,2
  } 

bassline = \relative c
  {
  \clef bass  \partial 4
  f4 | f2 d4 | c2 c4 | g'2 g4 | d2 e4 | f2 c4 | g'2 g,4 | c2
  c'4 | a2 g4 | f2 d4 | g e c | f2 bf,4 | ef2 c4 | f2 c4 | f,2 
  f'4 | f2 d4 | c2 c4 | g'2 g4 | d2 e4 | f2 c4 | g'2 g,4 | c2
  c'4 | a2 g4 | f2 d4 | g e c | f2 bf,4 | ef2 c4 | f c2 | f,2

  }

\score
  {
  <<
    <<
    \new Voice = "treble"
      { \autoBeamOff 
      \global \melodyOne } 
    \new Lyrics \lyricsto "treble" \text
      >>
    \new Staff
      { \autoBeamOff 
      \global \melodyTwo } 
    \new Staff
      { \autoBeamOff 
       \global \bassline }
  >>
  \layout
    {
    #(layout-set-staff-size 9) 
    \context { \RemoveEmptyStaffContext }
    } 
  \midi
    { 
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } 
    }
  } 

