(MEASURE SINGLE TOOL LENGTH - Tool Setter)

(#920 - Tool to measure - enter tool number or 100+pot_number)

(Change tool)
M6 T#920

(We might have changed tool by pot number, so read tool number from #3700)

(For facemill add: R30)
G65 P8915 H#3700. B0.

M30
