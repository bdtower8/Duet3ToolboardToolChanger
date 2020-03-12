; homex.g
; called to home the X axis

M400				; make sure everything has stopped before we make changes
M574 X1 S1			; set endstops to use motor stall

G91					; use relative positioning
G1 H2 Z3 F5000		; lift Z

G1 H1 X-400 F5400	; move beyond axis minimum 
G4 P500				; wait 500msec
G1 X20 F3600		; move away from home
G4 P500				; wait 500msec
G1 H1 X-400 F400	; move beyond axis minimum 
G4 P500				; wait 500msec

M400				; make sure everything has stopped 
M913 X100 Y100      ; XY motors to 100% current
M574 X1 S1			; define active low microswitches
G1 X2 F2400			; move away from home
G1 H2 Z-3 F1200		; lower Z
G90					; back to absolute positioning