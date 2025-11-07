(OFFSET WCS from P1-48)

(Update WCS "W" to be incremental X,Y,Z from "P")
(W #23 = dest = 54-59 or 1-48)
(S #19 = src = 1-48 only)
(X #24,Y #25,Z #26 are the incremental offsets from P)


(Validate src WCS)
IF [#19 LT 1] GOTO N102
IF [#19 GT 48] GOTO N102
#19 = #19 - 1

(Validate dst WCS)
IF [#23 LT 1] GOTO N101
IF [#23 GT 59] GOTO N101

IF [#23 LE 48] GOTO N10
IF [#23 GE 54] GOTO N20
(Error if passed 49-53)
GOTO N101

(Passed a P1-48)
(Offset by -1, base location=7001)
N10
#23 = #23-1
#50 = 7001
GOTO N30

(Passed a P54-59)
(offset by -54, base location=5221)
N20
#23 = #23-54
#50 = 5221
GOTO N30

(offset src WCS into dst)
N30
IF [#24 EQ #0] GOTO N31
#[#50 + 20*#23 + 0] = #[7001 + 20*#19 + 0] + #24
N31
IF [#25 EQ #0] GOTO N32
#[#50 + 20*#23 + 1] = #[7001 + 20*#19 + 1] + #25
N32
IF [#26 EQ #0] GOTO N33
#[#50 + 20*#23 + 2] = #[7001 + 20*#19 + 2] + #26
N33

N99
M99

(Errors)
N101 #3000=101(INVALID W DST WCS)
N102 #3000=101(INVALID S SRC WCS )