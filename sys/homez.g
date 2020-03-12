; homez.g
; called to home the Z axis

M98 P/macros/pick - drop/Coupler - Unlock

G91 					; Relative mode
G1 H2 Z5 F5000			; Lower the bed
G90						; back to absolute positioning

G1 H1 X130 Y169 F50000	; Position the endstop above the bed centre

G91 					; Relative mode

G4 P500					; wait 500msec
G30 Z-300 H1 F1000		; Move Z down until the switch triggers (first pass)
G30 Z-300 H1 F300		; Move Z down until the switch triggers (second pass)

G1 Z10 F5000			; Drop the Bed

G90						; Back to absolute positioning

