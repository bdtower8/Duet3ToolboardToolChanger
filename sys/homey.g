; homey.g
; called to home the Y axis

M400				; make sure everything has stopped before we make changes
M574 Y1 S1			; set switch to stop

G91					; use relative positioning
G1 H2 Z3 F5000		; lift Z

G1 H1 Y-300 F5400	; move beyond axis minimum 
G4 P500				; wait 500msec
G1 Y20 F3600		; move away from home
G4 P500				; wait 500msec
G1 H1 Y-300 F400	; move beyond axis minimum 
G4 P500				; wait 500msec

M400				; make sure everything has stopped 
M913 X100 Y100      ; XY motors to 100% current
M574 Y1 S1			; define active low microswitches
G1 Y2 F2400			; move away from home
G1 H2 Z-3 F1200		; lower Z
G90					; back to absolute positioning

