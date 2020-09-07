\version "2.20.0"

\header{
  title = "Super Mario Bros (1985) Coin Sound"
  subtitle = "Original composition for the Nintendo Entertainment System by Koji Kondo"
}

upper = \relative c''' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 2 = 200

  b8-1 e4.~-4 e2
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  r1

}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
    ragged-right = ##f
  }
}
