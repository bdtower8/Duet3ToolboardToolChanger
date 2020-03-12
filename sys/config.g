; Duet 3 Configuration File
; ToolChanger Configuration with Duet3 + Toolboards
M111 S0                         ; Debugging off
G21                             ; Work in millimetres
G90                             ; Send absolute coordinates...
M83                             ; ...but relative extruder moves
M555 P2                         ; Set firmware compatibility to look like Marlin

M550 P"ToolChanger"           	; set machine label
M552 S1                         ; Enable Networking
M552 P0.0.0.0                   ; Enable DHCP
M586 P0 S1                      ; Enable HTTP
M586 P1 S1                      ; Enable FTP
M586 P2 S0                      ; Disable Telnet

M667 S1                         ; Select CoreXY mode


; Endstops
M574 X1 S1 P"io1.in"              ; Set X probe
M574 Y1 S1 P"io2.in"              ; Set Y probe
M558 P5 C"io3.in" H5 F360 T20000  ; Set Z probe type to switch, the axes for which it is used and the dive height + speeds
G31 P200 X20 Y-69 Z0              ; Set Z probe trigger value, offset and trigger height
M557 X30:270 Y20:140 S60          ; Define mesh grid


; Drive direction
M569 P0 S1                      ; Drive 0 X
M569 P1 S1                      ; Drive 1 Y
M569 P2 S1                      ; Drive 2 Z
M569 P3 S1                      ; Drive 3 C
M569 P20.0 S1                   ; Drive E0
M569 P21.0 S1                   ; Drive E1
M569 P22.0 S1                   ; Drive E2
M569 P23.0 S1                   ; Drive E2


; Drive settings
M584 X0 Y1 Z2 C3                                        ; Apply custom drive mapping
M584 E20.0:21.0:22.0:23.0                               ; Extruder drive mapping
M208 X-41:324 Y-14:281.5 Z0:300 C0:500                  ; Set axis maxima & minima
M350 E16:16:16:16 C8 I0                                 ; Configure microstepping without interpolation
M350 X16 Y16 Z16 I1                                     ; Configure microstepping with interpolation
M92 X100 Y100 Z1600 C100 E398:398:398:398               ; Set steps per mm
M566 X400 Y400 Z8 C2 E2:2:2:2                           ; Set maximum instantaneous speed changes (mm/min)
M203 X20000 Y20000 Z1200 C5000 E5000:5000:5000:5000     ; Set maximum speeds (mm/min)
M201 X900 Y900 Z400 C400 E5000:5000:5000:5000           ; Set accelerations (mm/s^2)
M906 X1900 Y1900 Z1330 C500 E1400:1400:1400:1400 I30    ; Set motor currents (mA) and motor idle factor in per cent
M84 S120                                                ; Set idle timeout
M204 P900 T1600 R3300


; Heaters
M308 S0 P"0.temp0" Y"thermistor" T100000 B4138 C0       ; define bed temperature sensor
M950 H0 C"out0" T0 Q100                                 ; heater 0 uses the bed_heat pin, sensor 0
M143 H0 S225                                            ; Set temperature limit for heater 0 to 225C
M140 H0


; Hemera sensors and heaters
M308 S1 P"20.temp0" Y"thermistor" B4725 C7.06e-8        ; Set thermistor
M950 H1 C"20.out0" T1;                                  ; Assign heater
M143 H1 S300                                            ; Set temperature limit for heater 1 to 300C
M307 H1 A559.7 C283.1 D3.5                              ; v6, 30w results from m303 h1 s275

M308 S2 P"21.temp0" Y"thermistor" B4725 C7.06e-8        ; Set thermistor
M950 H2 C"21.out0" T2;                                  ; Assign heater
M143 H2 S300                                            ; Set temperature limit for heater 2 to 300C
M307 H2 A559.7 C283.1 D3.5                              ; v6, 30w results from m303 h2 s275

M308 S3 P"22.temp0" Y"thermistor" B4725 C7.06e-8        ; Set thermistor
M950 H3 C"22.out0" T3;                                  ; Assign heater
M143 H3 S300                                            ; Set temperature limit for heater 3 to 300C
M307 H3 A559.7 C283.1 D3.5                              ; v6, 30w results from m303 h3 s275

M308 S4 P"23.temp0" Y"thermistor" B4725 C7.06e-8        ; Set thermistor
M950 H4 C"23.out0" T4;                                  ; Assign heater
M143 H4 S300                                            ; Set temperature limit for heater 4 to 300C
M307 H4 A559.7 C283.1 D3.5                              ; v6, 30w results from m303 h4 s275


; Hemera fans
M950 F5 C"20.out2"          ; T0 hot end fan
M106 P5 S255 H1 T50         ; T0 hot end fan temp monitoring

M950 F6 C"21.out2"          ; T1 hot end fan
M106 P6 S255 H2 T50         ; T1 hot end fan temp monitoring

M950 F7 C"22.out2"          ; T2 hot end fan
M106 P7 S255 H3 T50         ; T2 hot end fan temp monitoring

M950 F8 C"23.out2"          ; T3 hot end fan
M106 P8 S255 H4 T50         ; T3 hot end fan temp monitoring


; Define tools
M563 P0 S"T0" D0 H1                   	; Define tool 0
G10 P0 X0 Y0 Z0                         ; Define tool 0 offset
G10 P0 R0 S0                            ; Set initial tool 0 active and standby temperatures to 0C

M563 P1 S"T1" D1 H2                     ; Define tool 1
G10 P1 X0 Y0 Z0                         ; Define tool 1 offset
G10 P1 R0 S0                            ; Set initial tool 1 active and standby temperatures to 0C

M563 P2 S"T2" D2 H3                   	; Define tool 2
G10 P2 X0 Y0 Z0                         ; Define tool 2 offset
G10 P2 R0 S0                            ; Set initial tool 2 active and standby temperatures to 0C

M563 P3 S"T3" D3 H4                     ; Define tool 3
G10 P3 X0 Y0 Z0                         ; Define tool 3 offset
G10 P3 R0 S0                            ; Set initial tool 2 active and standby temperatures to 0C


; Accessories
M950 F2 C"out3"                           ; x/y stepper cooling
M950 F3 C"out1"                           ; 'left' lighting
M950 F4 C"out2"                           ; 'right' lighting


; Some light
M98 P"/macros/lighting/lights_mid"