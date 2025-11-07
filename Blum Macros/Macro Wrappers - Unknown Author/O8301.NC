(CALIBRATE SPINDLE PROBE IN Z - KNOWN HEIGHT BLOCK)

(REQUIRES: Setting precise height of 'known height' block in G59 Z)
(Height MUST be measured/known in machine encoder units!)
(REQUIRES: Probe tool length set in tool library)

(Jog probe to within 10mm above the block and execute program)

(TIP: Check the Z-axis scale is accurately calibrated relative to the table)
(Height of block must be given relative to the zero on the machine scale)
(One way to check is using a 'known length' tool + 'known height' block and)
(ensure Z-axis scale matches height of block + known length tool)
(Note: Brother Z-axis encoder can be adjusted if inaccurate)

G59
G65 P8700 C1. Z-10.

M30
