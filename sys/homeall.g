; homeall.g
; called to home all axes

;M98 P/macros/pick - drop/Coupler - Unlock

M98 P"/sys/homec.g"			; Home Coupler

M98 P"/sys/homey.g"			; Home Y

M98 P"/sys/homex.g"			; Home X

M98 P"/sys/homez.g"			; Home Z

G1 X144 Y-10 F15000		; Park
