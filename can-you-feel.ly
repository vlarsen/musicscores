\version "2.18.2"

\header {
  title = "Can you feel the love tonight"
}

\score {
  <<
  \new ChordNames {
    \set chordChanges = ##t
    \chordmode {
    g1 d/fis c/e g/d c g a:m/c d:7 | \break
    c g c g c g a:m d | \break
    c g c g c e:m f d | \break
    g d e:m c g c2 a d1 d | \break
    c g e:m c a2:m g c a d1 d | \break
    g d e:m c g c2 a d1 d | \break
    c g e:m c a2:m g c d:7sus4 c1 g | \break

    c1 g c g e:m c a2:m g c d:7sus4 c1/e g 
  }
  }
  \new Staff = "upper" {
    \key g \major
    \repeat volta 2 {
  	  \repeat unfold 8 { r1 } \bar "||"
  	  \repeat unfold 8 { r1 }
  	  \repeat unfold 8 { r1 }
  	  \repeat unfold 5 { r1 } r2 r r1 r
  	  \repeat unfold 4 { r1 } \repeat unfold 4 { r2 } r1 r
  	  \repeat unfold 5 { r1 } r2 r r1 r
  	  \repeat unfold 4 { r1 } \repeat unfold 4 { r2 }
  	}
  	\alternative {
  	  { r1 r | }
  	  { r1 r | }
  	}
  	\repeat unfold 4 { r1 } \repeat unfold 4 { r2 } r1 r\fermata
  	}
>>
  \layout {
    ragged-right = ##f
  }
}
