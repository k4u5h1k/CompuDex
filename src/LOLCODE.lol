BTW This is an example of the LOLCODE Language
HAI 1.4
CAN HAS STDIO?
HOW IZ I main
    I HAS A arr ITZ A BUKKIT
    IM IN YR LOOP UPPIN YR index TIL BOTH SAEM index 2
        I HAS A number
        VISIBLE "Enter number: "
        GIMMEH number
        number IS NOW A NUMBR
        arr HAS A SRS index ITZ number
    IM OUTTA YR LOOP

    VISIBLE "Enter operator:"
    I HAS A operator
    GIMMEH operator

    I HAS A invalid ITZ FAIL
    I HAS A result
    BOTH SAEM operator AN "+", O RLY?
        YA RLY
            result R SUM OF arr'Z SRS 0 AN arr'Z SRS 1
        MEBBE BOTH SAEM operator AN "-"
            result R DIFF OF arr'Z SRS 0 AN arr'Z SRS 1
        NO WAI
            VISIBLE "Invalid operation"
            invalid R WIN
    OIC

    I HAS A handle ITZ I IZ STDIO'Z OPEN YR "output.txt" AN YR "w" MKAY 
    invalid, O RLY?
        YA RLY
            I IZ STDIO'Z SCRIBBEL YR handle AN YR "invalid operation" MKAY
        NO WAI
            result IS NOW A YARN
            I IZ STDIO'Z SCRIBBEL YR handle AN YR result MKAY
    OIC
    I IZ STDIO'Z CLOSE YR handle MKAY
IF U SAY SO

I IZ main MKAY
KTHXBYE

OBTW
    To use lci (LOLCODE interpreter) run,
    1. git clone -b future https://github.com/justinmeza/lci.git
    2. cd lci
    3. For linux, run python3 install.py for windows, follow the official
        guide at https://github.com/justinmeza/lci#installation-on-windows

    Then to run this script use lci LOLCODE.lol
TLDR
