(MEASURE ALL TOOL LENGHTS - Tool Setter)

(Edit program to set list of tools to measure)
(Specify start and end pots inclusive)

(Start - H)
#11=1
(End - I)
#4=18


#30=#11 (COUNTER)
WHILE [#30 LE #4] DO1

(Change tool)
M6 T[#30 + 100.]

(read tool number from #30)
(TODO: Guess if facemill and add: R30)
IF [#3700 GT 0] GOTO20
GOTO30

N20
G65 P8915 H#3700. B0.

N30
#30=#30+1

END1

M30
