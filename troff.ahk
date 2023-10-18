;
; AutoHotkey hotstrings for troff and groff-inspired Unicode symbol entry
;
; The symbols are entered using the sequence \[xx for 2-character symbols
; and the sequence \[[xyz] for multi-character symbols.
;

; The following option characters are used in the definitions
; *: no terminating character is needed
; ?: trigger hotstring even directly after alphanumeric character
; C: the string is case sensitive
; O: Remove the terminating character from the output

; A plus sign “+” in the comment indicates that the glyph name appears in
; the AT&T troff user's manual, CSTR #54 (1992 revision).
;
; A minus sign “-” in the comment indicates that the glyph name is not
; part of the groff-supported special characters.

:?*:\[??::
  Run "https://www.spinellis.gr/sw/unicode-hotstrings/troff.html"

:?*C:\[\[::\[

; # Quotation marks
;;;;;;;;;;;;;;;;;

; u201E     low double comma quote
:?*C:\[Bq::„

; u201A     low single comma quote
:?*C:\[bq::‚

; u201C     left double quote
:?*C:\[lq::“

; u201D     right double quote
:?*C:\[rq::”

; u2018     single opening (left) quote
:?*C:\[oq::‘

; u2019     single closing (right) quote
:?*C:\[cq::’

; u0027     apostrophe, neutral single quote
:?*C:\[aq::'

; u0022     neutral double quote
:?*C:\[dq::"

; u00AB     left double chevron
:?*C:\[Fo::«

; u00BB     right double chevron
:?*C:\[Fc::»

; u2039     left single chevron
:?*C:\[fo::‹

; u203A     right single chevron
:?*C:\[fc::›

; # Punctuation
;;;;;;;;;;;;;

; u00A1     inverted exclamation mark
:?*C:\[r!::¡

; u00BF     inverted question mark
:?*C:\[r?::¿

; u2014     em-dash +
:?*C:\[em::—

; u2013     en-dash
:?*C:\[en::–

; u2010     hyphen +
:?*C:\[hy::‐

; u2026     ellipsis -
:?*C:\[el::…

; u0387     Greek Ano Teleia -
:?*C:\[*;::·

; u00A0     Non break space
:?*C:\[ns:: 

; # Brackets
;;;;;;;;;;

; u27E8     left angle bracket
:?*C:\[la::⟨

; u27E9     right angle bracket
:?*C:\[ra::⟩

; u23AA     brace vertical extension +
:?*C:\[bv::⎪

; u23AA     brace vertical extension
:?*O:\[[braceex]::⎪

; u23A1     left square bracket top
:?*O:\[[bracketlefttp]::⎡

; u23A2     left square bracket extension
:?*O:\[[bracketleftex]::⎢

; u23A3     left square bracket bottom
:?*O:\[[bracketleftbt]::⎣

; u23A4     right square bracket top
:?*O:\[[bracketrighttp]::⎤

; u23A5     right square bracket extension
:?*O:\[[bracketrightex]::⎥

; u23A6     right square bracket bottom
:?*O:\[[bracketrightbt]::⎦

; u23A7     left brace top +
:?*C:\[lt::⎧

; u23A8     left brace middle +
:?*C:\[lk::⎨

; u23A9     left brace bottom +
:?*C:\[lb::⎩

; u23A7     left brace top
:?*O:\[[bracelefttp]::⎧

; u23A8     left brace middle
:?*O:\[[braceleftmid]::⎨

; u23A9     left brace bottom
:?*O:\[[braceleftbt]::⎩

; u23AA     left brace extension
:?*O:\[[braceleftex]::⎪

; u23AB     right brace top +
:?*C:\[rt::⎫

; u23AC     right brace middle +
:?*C:\[rk::⎬

; u23AD     right brace bottom +
:?*C:\[rb::⎭

; u23AB     right brace top
:?*O:\[[bracerighttp]::⎫

; u23AC     right brace middle
:?*O:\[[bracerightmid]::⎬

; u23AD     right brace bottom
:?*O:\[[bracerightbt]::⎭

; u23AA     right brace extension
:?*O:\[[bracerightex]::⎪

; u239B     left parenthesis top
:?*O:\[[parenlefttp]::⎛

; u239C     left parenthesis extension
:?*O:\[[parenleftex]::⎜

; u239D     left parenthesis bottom
:?*O:\[[parenleftbt]::⎝

; u239E     right parenthesis top
:?*O:\[[parenrighttp]::⎞

; u239F     right parenthesis extension
:?*O:\[[parenrightex]::⎟

; u23A0     right parenthesis bottom
:?*O:\[[parenrightbt]::⎠

; # Arrows
;;;;;;;;

; u2190     horizontal arrow left +
:?*C:\[<-::←

; u2192     horizontal arrow right +
:?*C:\[->::→

; u2194     bidirectional horizontal arrow
:?*C:\[<>::↔

; u2193     vertical arrow down +
:?*C:\[da::↓

; u2191     vertical arrow up +
:?*C:\[ua::↑

; u2195     bidirectional vertical arrow
:?*C:\[va::↕

; u21D0     horizontal double arrow left
:?*C:\[lA::⇐

; u21D2     horizontal double arrow right
:?*C:\[rA::⇒

; u21D4     bidirectional horizontal double arrow
:?*C:\[hA::⇔

; u21D3     vertical double arrow down
:?*C:\[dA::⇓

; u21D1     vertical double arrow up
:?*C:\[uA::⇑

; u21D5     bidirectional vertical double arrow
:?*C:\[vA::⇕

; u23AF     horizontal arrow extension
:?*C:\[an::⎯

; # Rules and lines
;;;;;;;;;;;;;;;;;

; u007C     bar
:?*C:\[ba::|

; u2502     box rule +
:?*C:\[br::│

; u005F     underscore, low line +
:?*C:\[ul::_

; u00A6     broken bar
:?*C:\[bb::¦

; u002F     slash, solidus +
:?*C:\[sl::/

; u005C     reverse solidus
:?*C:\[rs::\

; # Text markers
;;;;;;;;;;;;;;

; u25CB     circle +
:?*C:\[ci::○

; u2022     bullet +
:?*C:\[bu::•

; u2020     dagger +
:?*C:\[dg::†

; u2021     double dagger +
:?*C:\[dd::‡

; u25CA     lozenge, diamond
:?*C:\[lz::◊

; u25A1     square +
:?*C:\[sq::□

; u00B6     pilcrow sign
:?*C:\[ps::¶

; u00A7     section sign +
:?*C:\[sc::§

; u261C     hand pointing left +
:?*C:\[lh::☜

; u261E     hand pointing right +
:?*C:\[rh::☞

; u0040     at sign
:?*C:\[at::@

; u0023     number sign
:?*C:\[sh::#

; u21B5     carriage return
:?*C:\[CR::↵

; u2713     check mark
:?*C:\[OK::✓

; u2717     Ballot X -
:?*C:\[XX::✗

; # Legal symbols
;;;;;;;;;;;;;;;

; u00A9     copyright sign +
:?*C:\[co::©

; u00AE     registered sign +
:?*C:\[rg::®

; u2122     trade mark sign
:?*C:\[tm::™

; # Currency symbols
;;;;;;;;;;;;;;;;;;

; u0024     dollar sign
:?*C:\[Do::$

; u00A2     cent sign +
:?*C:\[ct::¢

; u20AC     Euro sign
:?*C:\[eu::€

; u20AC     variant Euro sign
:?*C:\[Eu::€

; u00A5     yen sign
:?*C:\[Ye::¥

; u00A3     pound sign
:?*C:\[Po::£

; u00A4     currency sign
:?*C:\[Cs::¤

; u20A8     Rupee sign -
:?*C:\[Rs::₨

; # Units
;;;;;;;

; u00B0     degree sign +
:?*C:\[de::°

; u2030     per thousand, per mille sign
:?*C:\[%0::‰

; u2032     arc minute sign +
:?*C:\[fm::′

; u2033     arc second sign
:?*C:\[sd::″

; u00B5     micro sign
:?*C:\[mc::µ

; u00AA     feminine ordinal indicator
:?*C:\[Of::ª

; u00BA     masculine ordinal indicator
:?*C:\[Om::º

; # Logical symbols
;;;;;;;;;;;;;;;;;

; u2227     logical and
:?*C:\[AN::∧

; u2228     logical or
:?*C:\[OR::∨

; u00AC     logical not +
:?*C:\[no::¬

; u2203     there exists
:?*C:\[te::∃

; u2204     there does not exist
:?*C:\[!e::∄

; u2200     for all
:?*C:\[fa::∀

; u220B     such that
:?*C:\[st::∋

; u2234     therefore
:?*C:\[3d::∴

; u2234     therefore
:?*C:\[tf::∴

; u220E     end of proof -
:?*C:\[pe::∎

; # Fractions
;;;;;;;;;;;;;

; u00BD     one half symbol +
:?*C:\[12::½

; u2153     one third symbol -
:?*C:\[13::⅓

; u2154     two thirds symbol -
:?*C:\[23::⅔

; u00BC     one quarter symbol +
:?*C:\[14::¼

; u00BE     three quarters symbol +
:?*C:\[34::¾

; u2155     one fifth symbol -
:?*C:\[15::⅕

; u2156     two fifths symbol -
:?*C:\[25::⅖

; u2157     three fifths symbol -
:?*C:\[35::⅗

; u2158     fourt fifths symbol -
:?*C:\[45::⅘

; u2159     one sixth symbol -
:?*C:\[16::⅙

; u215A     five sixths symbol -
:?*C:\[56::⅚

; u215B     one eighth symbol
:?*C:\[18::⅛

; u215C     three eighths symbol
:?*C:\[38::⅜

; u215D     five eighths symbol
:?*C:\[58::⅝

; u215E     seven eighths symbol
:?*C:\[78::⅞

; # Subscripts and superscripts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; u2070     superscript zero -
:?*C:\[S0::⁰

; u00B9     superscript one
:?*C:\[S1::¹

; u00B2     superscript two
:?*C:\[S2::²

; u00B3     superscript three
:?*C:\[S3::³

; u2074     superscript four -
:?*C:\[S4::⁴

; u2075     superscript five -
:?*C:\[S5::⁵

; u2076     superscript six -
:?*C:\[S6::⁶

; u2077     superscript seven -
:?*C:\[S7::⁷

; u2078     superscript eight -
:?*C:\[S8::⁸

; u2079     superscript nine -
:?*C:\[S9::⁹

; u2071     superscript i -
:?*C:\[Si::ⁱ

; u207F     superscript n -
:?*C:\[Sn::ⁿ

; u207A     superscript + -
:?*C:\[S+::⁺

; u207B     superscript - -
:?*C:\[S-::⁻

; u2080     subscript zero -
:?*C:\[s0::₀

; u2081     subscript one -
:?*C:\[s1::₁

; u2082     subscript two -
:?*C:\[s2::₂

; u2083     subscript three -
:?*C:\[s3::₃

; u2084     subscript four -
:?*C:\[s4::₄

; u2085     subscript five -
:?*C:\[s5::₅

; u2086     subscript six -
:?*C:\[s6::₆

; u2087     subscript seven -
:?*C:\[s7::₇

; u2088     subscript eight -
:?*C:\[s8::₈

; u2089     subscript nine -
:?*C:\[s9::₉

; u2071     subscript i -
:?*C:\[si::ⁱ

; u2099     subscript n -
:*C:\[sn::ₙ

; u208A     subscript + -
:?*C:\[s+::₊

; u208B     subscript - -
:?*C:\[s-::₋

; # Mathematical symbols
;;;;;;;;;;;;;;;;;;;;;;;;

; u002B     special variant of plus +
:?*C:\[pl::+

; u002D     minus
:?*O:\[[-]::-

; u2212     special variant of minus +
:?*C:\[mi::−

; u2213     minus-plus
:?*C:\[-+::∓

; u00B1     plus-minus +
:?*C:\[+-::±

; u00B7     centered period
:?*C:\[pc::·

; u22C5     multiplication dot
:?*C:\[md::⋅

; u00D7     multiplication sign +
:?*C:\[mu::×

; u2297     circled times
:?*C:\[c*::⊗

; u2295     circled plus
:?*C:\[c+::⊕

; u00F7     division sign +
:?*C:\[di::÷

; u2044     fraction slash
:?*C:\[f/::⁄

; u2217     mathematical asterisk +
:?*C:\[**::∗

; u2264     less than or equal to +
:?*C:\[<=::≤

; u2265     greater than or equal to +
:?*C:\[>=::≥

; u226A     much less than
:?*C:\[<<::≪

; u226B     much greater than
:?*C:\[>>::≫

; u003D     special variant of equals +
:?*C:\[eq::=

; u2260     not equals +
:?*C:\[!=::≠

; u2261     equivalent +
:?*C:\[==::≡

; u2262     not equivalent
:?*C:\[ne::≢

; u2245     approximately equal to
:?*C:\[=~::≅

; u2243     asymptotically equal to +
:?*C:\[|=::≃

; u223C     similar to, tilde operator +
:?*C:\[ap::∼

; u2248     almost equal to
:?*C:\[~~::≈

; u2248     almost equal to
:?*C:\[~=::≈

; u221D     proportional to +
:?*C:\[pt::∝

; u2205     empty set +
:?*C:\[es::∅

; u2208     element of a set +
:?*C:\[mo::∈

; u2209     not element of set
:?*C:\[nm::∉

; u2282     proper subset +
:?*C:\[sb::⊂

; u2284     not subset
:?*C:\[nb::⊄

; u2283     proper superset +
:?*C:\[sp::⊃

; u2285     not superset
:?*C:\[nc::⊅

; u2286     subset or equal +
:?*C:\[ib::⊆

; u2287     superset or equal +
:?*C:\[ip::⊇

; u2229     intersection, cap +
:?*C:\[ca::∩

; u222A     union, cup +
:?*C:\[cu::∪

; u2220     angle
:?*C:\[/_::∠

; u22A5     perpendicular
:?*C:\[pp::⊥

; u222B     integral +
:?*C:\[is::∫

; u2211     summation
:?*O:\[[sum]::∑

; u220F     product
:?*O:\[[product]::∏

; u2210     coproduct
:?*O:\[[coproduct]::∐

; u2207     gradient +
:?*C:\[gr::∇

; u221A     radical sign, square root +
:?*C:\[sr::√

; u203E     radical extension, overline +
:?*C:\[rn::‾

; u221A     radical sign, square root
:?*O:\[[sqrt]::√

; u2308     left ceiling +
:?*C:\[lc::⌈

; u2309     right ceiling +
:?*C:\[rc::⌉

; u230A     left floor +
:?*C:\[lf::⌊

; u230B     right floor +
:?*C:\[rf::⌋

; u221E     infinity +
:?*C:\[if::∞

; u2135     aleph symbol
:?*C:\[Ah::ℵ

; u0192     lowercase f with hook, function
:?*C:\[Fn::ƒ

; u2111     blackletter I, imaginary part
:?*C:\[Im::ℑ

; u211C     blackletter R, real part
:?*C:\[Re::ℜ

; u2118     Weierstrass p
:?*C:\[wp::℘

; u2202     partial differential
:?*C:\[pd::∂

; u210F     h bar
:?*C:\[-h::ℏ

; # Greek glyphs
;;;;;;;;;;;;;;

; u0391     uppercase alpha +
:?*C:\[*A::Α

; u0392     uppercase beta +
:?*C:\[*B::Β

; u0393     uppercase gamma +
:?*C:\[*G::Γ

; u0394     uppercase delta +
:?*C:\[*D::Δ

; u0395     uppercase epsilon +
:?*C:\[*E::Ε

; u0396     uppercase zeta +
:?*C:\[*Z::Ζ

; u0397     uppercase eta +
:?*C:\[*Y::Η

; u0398     uppercase theta +
:?*C:\[*H::Θ

; u0399     uppercase iota +
:?*C:\[*I::Ι

; u039A     uppercase kappa +
:?*C:\[*K::Κ

; u039B     uppercase lambda +
:?*C:\[*L::Λ

; u039C     uppercase mu +
:?*C:\[*M::Μ

; u039D     uppercase nu +
:?*C:\[*N::Ν

; u039E     uppercase xi +
:?*C:\[*C::Ξ

; u039F     uppercase omicron +
:?*C:\[*O::Ο

; u03A0     uppercase pi +
:?*C:\[*P::Π

; u03A1     uppercase rho +
:?*C:\[*R::Ρ

; u03A3     uppercase sigma +
:?*C:\[*S::Σ

; u03A4     uppercase tau +
:?*C:\[*T::Τ

; u03A5     uppercase upsilon +
:?*C:\[*U::Υ

; u03A6     uppercase phi +
:?*C:\[*F::Φ

; u03A7     uppercase chi +
:?*C:\[*X::Χ

; u03A8     uppercase psi +
:?*C:\[*Q::Ψ

; u03A9     uppercase omega +
:?*C:\[*W::Ω

; u03B1     lowercase alpha +
:?*C:\[*a::α

; u03B2     lowercase beta +
:?*C:\[*b::β

; u03B3     lowercase gamma +
:?*C:\[*g::γ

; u03B4     lowercase delta +
:?*C:\[*d::δ

; u03B5     lowercase epsilon +
:?*C:\[*e::ε

; u03B6     lowercase zeta +
:?*C:\[*z::ζ

; u03B7     lowercase eta +
:?*C:\[*y::η

; u03B8     lowercase theta +
:?*C:\[*h::θ

; u03B9     lowercase iota +
:?*C:\[*i::ι

; u03BA     lowercase kappa +
:?*C:\[*k::κ

; u03BB     lowercase lambda +
:?*C:\[*l::λ

; u03BC     lowercase mu +
:?*C:\[*m::μ

; u03BD     lowercase nu +
:?*C:\[*n::ν

; u03BE     lowercase xi +
:?*C:\[*c::ξ

; u03BF     lowercase omicron +
:?*C:\[*o::ο

; u03C0     lowercase pi +
:?*C:\[*p::π

; u03C1     lowercase rho +
:?*C:\[*r::ρ

; u03C2     terminal lowercase sigma +
:?*C:\[ts::ς

; u03C3     lowercase sigma +
:?*C:\[*s::σ

; u03C4     lowercase tau +
:?*C:\[*t::τ

; u03C5     lowercase upsilon +
:?*C:\[*u::υ

; u03D5     lowercase phi +
:?*C:\[*f::ϕ

; u03C7     lowercase chi +
:?*C:\[*x::χ

; u03C8     lowercase psi +
:?*C:\[*q::ψ

; u03C9     lowercase omega +
:?*C:\[*w::ω

; u03D1     variant theta
:?*C:\[+h::ϑ

; u03C6     variant phi (curly shape)
:?*C:\[+f::φ

; u03D6     variant pi (similar to omega)
:?*C:\[+p::ϖ

; u03F5     variant epsilon (lunate)
:?*C:\[+e::ϵ

; # Double-struck letter forms
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; u210D     double-struck capital H -
:?*C:\[dH::ℍ

; u2115     double-struck capital N -
:?*C:\[dN::ℕ

; u2119     double-struck capital P -
:?*C:\[dP::ℙ

; u211A     double-struck capital Q -
:?*C:\[dQ::ℚ

; u211D     double-struck capital R -
:?*C:\[dR::ℝ

; u2124     double-struck capital Z -
:?*C:\[dZ::ℤ

; # Playing card symbols
;;;;;;;;;;;;;;;;;;;;;;

; u2663     solid club suit
:?*C:\[CL::♣

; u2660     solid spade suit
:?*C:\[SP::♠

; u2665     solid heart suit
:?*C:\[HE::♥

; u2666     solid diamond suit
:?*C:\[DI::♦

; # Control symbols
;;;;;;;;;;;;;;;;;;;;;;

; u2400     Null -
:?*C:\[\0::␀

; u2407     Bell -
:?*C:\[\a::␇

; u2408     Backspace -
:?*C:\[\b::␈

; u2409     Tab -
:?*C:\[\t::␉

; u240A     Line feed -
:?*C:\[\n::␊

; u240D     Carriage return -
:?*C:\[\r::␍

; u241B     Escape -
:?*C:\[\e::␛

; u2420     Space -
:?*C:\[\ ::␠

; u2423     Open box -
:?*C:\[\_::␣

; # Supplementary Latin letters
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; u00D0     uppercase eth
:?*C:\[-D::Ð

; u00F0     lowercase eth
:?*C:\[Sd::ð

; u00DE     uppercase thorn
:?*C:\[TP::Þ

; u00FE     lowercase thorn
:?*C:\[Tp::þ

; u00DF     lowercase sharp s
:?*C:\[ss::ß

; u0131     i without tittle
:?*C:\[.i::ı

; u0237     j without tittle
:?*C:\[.j::ȷ

; # Ligatures and digraphs
;;;;;;;;;;;;;;;;;;;;;;;;

; uFB00     ff ligature +
:?*C:\[ff::ﬀ

; uFB01     fi ligature +
:?*C:\[fi::ﬁ

; uFB02     fl ligature +
:?*C:\[fl::ﬂ

; uFB03     ffi ligature +
:?*C:\[Fi::ﬃ

; uFB04     ffl ligature +
:?*C:\[Fl::ﬄ

; u00C6     AE ligature
:?*C:\[AE::Æ

; u00E6     ae ligature
:?*C:\[ae::æ

; u0152     OE ligature
:?*C:\[OE::Œ

; u0153     oe ligature
:?*C:\[oe::œ

; u0132     IJ digraph
:?*C:\[IJ::Ĳ

; u0133     ij digraph
:?*C:\[ij::ĳ

; u0141     L with stroke
:?*C:\[/L::Ł

; u0142     l with stroke
:?*C:\[/l::ł

; u00D8     O with stroke
:?*C:\[/O::Ø

; u00F8     o with stroke
:?*C:\[/o::ø

; # Accented characters
;;;;;;;;;;;;;;;;;;;;;

; u00C1     A acute
:?*C:\['A::Á

; u0106     C acute
:?*C:\['C::Ć

; u00C9     E acute
:?*C:\['E::É

; u00CD     I acute
:?*C:\['I::Í

; u00D3     O acute
:?*C:\['O::Ó

; u00DA     U acute
:?*C:\['U::Ú

; u00DD     Y acute
:?*C:\['Y::Ý

; u00E1     a acute
:?*C:\['a::á

; u0107     c acute
:?*C:\['c::ć

; u00E9     e acute
:?*C:\['e::é

; u00ED     i acute
:?*C:\['i::í

; u00F3     o acute
:?*C:\['o::ó

; u00FA     u acute
:?*C:\['u::ú

; u00FD     y acute
:?*C:\['y::ý

; u00C4     A dieresis
:?*C:\[:A::Ä

; u00CB     E dieresis
:?*C:\[:E::Ë

; u00CF     I dieresis
:?*C:\[:I::Ï

; u00D6     O dieresis
:?*C:\[:O::Ö

; u00DC     U dieresis
:?*C:\[:U::Ü

; u0178     Y dieresis
:?*C:\[:Y::Ÿ

; u00E4     a dieresis
:?*C:\[:a::ä

; u00EB     e dieresis
:?*C:\[:e::ë

; u00EF     i dieresis
:?*C:\[:i::ï

; u00F6     o dieresis
:?*C:\[:o::ö

; u00FC     u dieresis
:?*C:\[:u::ü

; u00FF     y dieresis
:?*C:\[:y::ÿ

; u00C2     A circumflex
:?*C:\[^A::Â

; u00CA     E circumflex
:?*C:\[^E::Ê

; u00CE     I circumflex
:?*C:\[^I::Î

; u00D4     O circumflex
:?*C:\[^O::Ô

; u00DB     U circumflex
:?*C:\[^U::Û

; u00E2     a circumflex
:?*C:\[^a::â

; u00EA     e circumflex
:?*C:\[^e::ê

; u00EE     i circumflex
:?*C:\[^i::î

; u00F4     o circumflex
:?*C:\[^o::ô

; u00FB     u circumflex
:?*C:\[^u::û

; u00C0     A grave
:?*C:\[``A::À

; u00C8     E grave
:?*C:\[``E::È

; u00CC     I grave
:?*C:\[``I::Ì

; u00D2     O grave
:?*C:\[``O::Ò

; u00D9     U grave
:?*C:\[``U::Ù

; u00E0     a grave
:?*C:\[``a::à

; u00E8     e grave
:?*C:\[``e::è

; u00EC     i grave
:?*C:\[``i::ì

; u00F2     o grave
:?*C:\[``o::ò

; u00F9     u grave
:?*C:\[``u::ù

; u00C3     A tilde
:?*C:\[~A::Ã

; u00D1     N tilde
:?*C:\[~N::Ñ

; u00D5     O tilde
:?*C:\[~O::Õ

; u00E3     a tilde
:?*C:\[~a::ã

; u00F1     n tilde
:?*C:\[~n::ñ

; u00F5     o tilde
:?*C:\[~o::õ

; u0160     S caron
:?*C:\[vS::Š

; u0161     s caron
:?*C:\[vs::š

; u017D     Z caron
:?*C:\[vZ::Ž

; u017E     z caron
:?*C:\[vz::ž

; u00C7     C cedilla
:?*C:\[,C::Ç

; u00E7     c cedilla
:?*C:\[,c::ç

; u00C5     A ring
:?*C:\[oA::Å

; u00E5     a ring
:?*C:\[oa::å

; # Accents
;;;;;;;;;

; u02DD     double acute accent
:?*C:\[a"::˝

; u00AF     macron accent
:?*C:\[a-::¯

; u02D9     dot accent
:?*C:\[a.::˙

; u005E     circumflex accent
:?*C:\[a^::^

; u00B4     acute accent +
:?*C:\[aa::´

; u0060     grave accent +
:?*C:\[ga::``

; u02D8     breve accent
:?*C:\[ab::˘

; u00B8     cedilla accent
:?*C:\[ac::¸

; u00A8     dieresis accent
:?*C:\[ad::¨

; u02C7     caron accent
:?*C:\[ah::ˇ

; u02DA     ring accent
:?*C:\[ao::˚

; u007E     tilde accent
:?*C:\[a~::~

; u02DB     hook accent
:?*C:\[ho::˛

