define(fixed7x13, `-misc-fixed-$1-$2-normal--13-120-75-75-c-70-iso10646-1')dnl
define(fixed_font, fixed7x13(medium, r))dnl
define(fixed_boldFont, fixed7x13(bold, r))dnl
define(fixed_italicFont, fixed7x13(medium, o))dnl
dnl
define(fixed9x18, `-misc-fixed-$1-$2-normal--18-120-100-100-c-90-iso10646-1')dnl
define(fixedBig_font, fixed9x18(medium, r))dnl
define(fixedBig_boldFont, fixed9x18(bold, r))dnl
define(fixedBig_italicFont, `')dnl
define(fixedBig_boldItalicFont, `')dnl
dnl
define(mono, `xft:monospace:pixelsize=10:slant=$1:weight=$2')dnl
define(mono_font, mono(roman,regular))dnl
define(mono_boldFont, mono(roman,bold))dnl
define(mono_italicFont, mono(oblique,regular))dnl
define(mono_boldItalicFont, mono(oblique,bold))dnl
dnl
define(iosevka_hidpi, `xft:Iosevka Fixed:pixelsize=20:slant=$1:weight=$2')dnl
define(iosevka_hidpi_font, iosevka_hidpi(roman,regular))dnl
define(iosevka_hidpi_boldFont, iosevka_hidpi(roman,bold))dnl
define(iosevka_hidpi_italicFont, iosevka_hidpi(oblique,regular))dnl
define(iosevka_hidpi_boldItalicFont, iosevka_hidpi(oblique,bold))dnl
dnl
define(iosevka, `xft:Iosevka Fixed:pixelsize=25:slant=$1:weight=$2')dnl
define(iosevka_font, iosevka(roman,regular))dnl
define(iosevka_boldFont, iosevka(roman,bold))dnl
define(iosevka_italicFont, iosevka(oblique,regular))dnl
define(iosevka_boldItalicFont, iosevka(oblique,bold))dnl
dnl
define(symbols_fonts, `xft:Symbola,xft:Unidings,xft:Musica')dnl
dnl
define(default_font, `fixed_font,symbols_fonts')dnl
define(default_boldFont, `fixed_boldFont,fixed_font,symbols_fonts')dnl
define(default_italicFont, `fixed_italicFont,fixed_font,symbols_fonts')dnl
define(default_boldItalicFont, `')dnl
dnl
define(hidpi_font, `iosevka_hidpi_font,symbols_fonts')dnl
define(hidpi_boldFont, `iosevka_hidpi_boldFont,symbols_fonts')dnl
define(hidpi_italicFont, `iosevka_hidpi_italicFont,symbols_fonts')dnl
define(hidpi_boldItalicFont, `iosevka_hidpi_boldItalicFont,symbols_fonts')dnl
dnl
define(big_font, `fixedBig_font,symbols_fonts')dnl
define(big_boldFont, `fixedBig_boldFont,fixedBig_font,symbols_fonts')dnl
define(big_italicFont, `fixedBig_italicFont,fixedBig_font,symbols_fonts')dnl
define(big_boldItalicFont, `')dnl
dnl
define(scalable_font, `iosevka_font,symbols_fonts')dnl
define(scalable_boldFont, `iosevka_boldFont,symbols_fonts')dnl
define(scalable_italicFont, `iosevka_italicFont,symbols_fonts')dnl
define(scalable_boldItalicFont, `iosevka_boldItalicFont,symbols_fonts')dnl
dnl
URxvt.font: default_font
URxvt.boldFont: default_boldFont
URxvt.italicFont: default_italicFont
URxvt.boldItalicFont: default_boldItalicFont
URxvt.reverseVideo: true
URxvt.scrollTtyOutput: false
URxvt.saveLines: 3000
URxvt.scrollTtyKeypress: true
URxvt.modifier: mod1
URxvt.termName: rxvt-unicode-256color
URxvt.scrollBar: false
URxvt.scrollBar_right: true
URxvt.geometry: 100x34
URxvt.print-pipe: cat >/dev/null
URxvt.scrollWithBuffer: true
URxvt.secondaryScroll: false
URxvt.scrollstyle: rxvt
URxvt.scrollColor: #004000
URxvt.troughColor: #001000
URxvt.cutchars: \\``"''&()*,;<=>?@[]{|}
URxvt.searchable-scrollback: C-M-s
URxvt.perl-ext-common: default,-selection,-selection-popup,-option-popup,-confirm-paste,osc-xterm-clipboard
URxvt.tripleclickwords: false
URxvt.intensityStyles: true
URxvt.urgentOnBell: true
URxvt.pastableTabs: false
URxvt.pointerBlank: true
URxvt.pointerBlankDelay: 987654321
dnl
define(_set_font, `\033]$1;$2\007')dnl
define(set_font, _set_font(710, `$1'))dnl
define(set_boldFont, _set_font(711, `$1'))dnl
define(set_italicFont, _set_font(712, `$1'))dnl
define(set_boldItalicFont, _set_font(713, `$1'))dnl
define(set_default_fonts, `set_font(`default_font')set_boldFont(`default_boldFont')set_italicFont(`default_italicFont')set_boldItalicFont(`default_boldItalicFont')')dnl
define(set_big_fonts, `set_font(`big_font')set_boldFont(`big_boldFont')set_italicFont(`big_italicFont')set_boldItalicFont(`big_boldItalicFont')')dnl
define(set_scalable_fonts, `set_font(`scalable_font')set_boldFont(`scalable_boldFont')set_italicFont(`scalable_italicFont')set_boldItalicFont(`scalable_boldItalicFont')')dnl
define(meta_key, `M-C')dnl
dnl
URxvt.keysym.meta_key-Home: command:set_default_fonts
URxvt.keysym.meta_key-End: command:set_scalable_fonts
URxvt.keysym.meta_key-Insert: command:set_big_fonts
URxvt.keysym.meta_key-Page_Up: font-size:increase
URxvt.keysym.meta_key-Page_Down: font-size:decrease
URxvt.keysym.meta_key-Delete: font-size:show
URxvt.font-size.step: 2
URxvt.font-size-auto-mixed-dpi.lodpi.font: default_font
URxvt.font-size-auto-mixed-dpi.lodpi.boldFont: default_boldFont
URxvt.font-size-auto-mixed-dpi.lodpi.italicFont: default_italicFont
URxvt.font-size-auto-mixed-dpi.lodpi.boldItalicFont: default_boldItalicFont
URxvt.font-size-auto-mixed-dpi.hidpi.font: hidpi_font
URxvt.font-size-auto-mixed-dpi.hidpi.boldFont: hidpi_boldFont
URxvt.font-size-auto-mixed-dpi.hidpi.italicFont: hidpi_italicFont
URxvt.font-size-auto-mixed-dpi.hidpi.boldItalicFont: hidpi_boldItalicFont
URxvt.keysym.4-bar: aAtt:undo
URxvt.keysym.4-colon: aAtt:word-complete
URxvt.keysym.4-quotedbl: aAtt:WORD-complete
URxvt.keysym.4-question: aAtt:fuzzy-WORD-complete
URxvt.keysym.4-greater: aAtt:fuzzy-word-complete
