#setpad 0x00
#rom.banksize 36000
#rom.bank a
#rom.org $0800
#incbin "plan_charset.bin"

#rom.org $0c00
byte plan_screen[0x400]

#rom.org $1000
#incbin "music.bin"

#rom.org $2000
#incbin "map_charset.bin"

#rom.org $2800
#incbin "stats_charset.bin"

#rom.org $3800
#incbin "intro_charset.bin"

#rom.org $4000
#incbin "data.bin"

#include "code.m"
#rom.end

