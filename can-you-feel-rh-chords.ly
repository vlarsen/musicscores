\version "2.18.2"

\header {
	title = "Can you feel the love tonight"
	composer = "Elton John/Tim Rice"
}

harmonies = \chordmode {
	g1 d1/fis c1/e g1/d c g a:m/c d:7

	c g c g c g a:m d
	c g c g c e:m f d

	g d e:m c g c2 a d1 d |
	c1 g e:m c | a2:m g c a d1 d |

	g1 d e:m c g c2 a d1 d |
	c g e:m c a2:m g c d:7sus4 c1 g |

	c g c g e:m c |
	a2:m g2 | c2 d2:7sus4 | c1/e | g |
}

upper = \relative c'' {
	\clef treble
	\key g \major
	\time 4/4
	
	\repeat volta 2 {
		b1 a2 d2 c1 c4 b g d |
		e1 d4 g d r a'2 b c d \bar "||" \break

	    % There's a calm surrender
		\chordmode { c4/g } fis, <c e g> a' <b, d g> <g b d>2. | <g c e>4 fis' <c e g> a' | <b, d g>1 |
		e4 fis g g8 a g4 d b'2 c4 b a b <d, a'>1 |

	    % An enchanted moment
		e4 fis g a | g d2. | e4 fis g a | g1 |
		e4 fis g8 d d4 | d'-5 b-3 g-2 e-1 | c'-5 b a b a2. d,4-1 |

	    % (And) can you feel
		d'2-5 b4 a4~ | a2 d4 b4~ | b2 g4 e4~ e1 | r2 d4-1 g4-2 |
		c2-5 b2 | <fis a>1~ <fis a>1 |

	    % ... It's enough for this
		r2 e4-2 fis4 | g2 d4 d4 | d'2-5 b2-3 | g4 g4 e2 |
		c'2-5 b2 | a2 b2 | <fis a>1~ <fis a>2. d4 |
		% (And) can you feel
		d'2 b4 a4~ | a2 d4 b4~ | b2 g4 e4~ | e1 |
		r2 d4-1 g4-2 | c2-5 b2 | <fis a>1~ | <fis a>1 |

	    % ... It's enough to make
		r2 e4 fis4 | g2 d4 d4 | d'2-5 b2-3 | g4-1 g4 e4-2 d4-1 |
		c'2 b2 | a2 g2 | 
	}
	\alternative {
		{ g1~ | g1 }
		{ g1~ }
	}
	g1

    % ... It's enough to make
	r2 e4 fis4 | g2 d4 d4 | d'2 b2 | g4 g4 e4 d4 |
	c'2 b2 | a2 g2 | g1~ | g1\fermata

}

lower = \relative c' {
	\clef bass
	\key g \major
	\time 4/4

	g2-5 d'2 | fis,1-5 | e2-5 c'2 <d,-5 b'-1>1 |
	c'2-1 g2 b2. b4 c1 <fis,-5 d'-1>1 \bar "||"

	c'1-2 | b2 g2 | c1 | b2 g2 |
	c1 | b2 g2 | a1 | fis2-3 d2 |

	c'1-1 | b2 g2 | c1 | b2 g2 | c1 | <e, b'>1 | <f a>1 | <fis-3 a-1>2 d2 |

	<g-5 b-3>2 d'2 | fis,2 d'2 | e,2 b'2-2 | c2 g2 | <g b>1 |
	e'2 cis2 | d2-1 a2-2 | fis2-3 d2-5 |

	<e-5 c'-1>1 | <d-5 b'-1>1 | <e-5 g-3>1 | <e-5 c'-1>1 |
	a2-2 g2-3 | c2-1 cis2-2 | d2-1 a2-2 | fis2-3 d2-5 |

	<g-5 b-3>2 d'2 | fis,2-5 d'2 | e,2-5 b'2-2 | c2 g2 |

	<g b>1 | e'2 cis2 | d2-1 a2-2 | fis2-3 d2-5 | <e-5 c'-1>1 |

	<d b'>1 | <e g>1 | <e c'>1

	a2 g2 | <e-5 c'-1>2 <d-5 c'-1>2 | <e c'>1 | <d b'>1 |

    % 2nd volta
	<e c'>1 | <d b'>1 |

	c'1 | b1 | <e, g>1 | <e c'>1 | 
	a2 g2 | <e c'>2 <d c'>2 | <e c'>1 | <g b>1\fermata |
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}
		\new PianoStaff <<
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
	>>
	\layout { }
}


