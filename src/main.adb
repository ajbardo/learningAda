with Ada.Text_IO; use Ada.Text_IO;
with ADA.Strings.Fixed; use ADA.Strings.Fixed;

with Ada.Strings;         use Ada.Strings;
with Ada.Strings.Bounded;
with Ada.Text_IO;         use Ada.Text_IO;


procedure main is
-- main
-- 1.0-1.1 twoSum
-- 1.0-1.0 palindrome
-- 1.1-1.1 romantointeger
-- 1.0-1.0 longestcommonprefix
-- 1.0-1.0 validparentheses
-- 1.0-1.0 mergetwosortedlists
-- 0.1-1.0 removeduplicatesfromsortedarray
-- ____ notes ____
-- 1.0 - Nomenclature : versionOfProcedureOrFunction-versionOfTest
-- * First digit for functionalities already completed an closed (1.0,2.0,3.0)
-- * Second digit for functionalities under development (0.1,0.11,0.23,1.35,2.56)
-- * Possible third digit to track minor changes that do not affect functionality (0.0.3,0.1.7)
-- * Comments with the resume of the content with * character
-- _______________
-- 0.2-0.0 Global variables
-- Global use arrays
-- maxIndex10 : Integer
-- type arrayOf10 is array(0 .. 9) of Integer
-- array10 : arrayOf10
--
-- type arrayOf2 is array(0 .. 1) of Integer
-- array2 : arrayOf2;
--
-- package B_Str
-- type StringBounArray
-- StrBounString
--
-- input variables for the functions
-- integerInputA : Integer;
-- integerInputB : Integer;
-- integerInputC : Integer;
-- stringInputA : String := "         ";
-- bounStringInputB : Bounded_String;
--
-- output variables for the functions
-- integerResultA : Integer;
-- bounStringResultA : Bounded_String;
-- bounStringResultB : Bounded_String;
--
-- variables for the test stadistics
-- testPass : Integer;
-- testPassed : Integer;
-- testTotal : Integer;
-- _______________
-- 1.0-1.1 procedure twoSum(target : Integer:=0)
-- * Calculate positions of two numbers in an array such that they add matches the target
-- * Static test with 10 position array
-- * New static test for the negative conditional
-- 1.0-1.0 procedure palindrome(number : Integer)
-- * Check if number is palindrome
-- * Static test with input integer
-- * Static test with input integer for the negative conditional
-- 1.1-1.1 procedure romantointeger(romanNum : String)
-- 1.0 procedure auxromantointeger(romanNum : String)
-- * Transform from roman number to integer
-- * Static positive test for the method
-- 1.0-1.0 longestcommonprefix
-- Procedure working with array of 3 Bounded string of length = 10
-- 4 static tests, 2 with partial positive cases, 1 with total positive case and 1 with negative case
-- 1.0-1.0 validparentheses
-- Procedure working with Bounded string of length = 10
-- 8 static test cases, 4 positives and 4 negatives
-- 1.0-1.0 mergetwosortedlists
-- working with 2 arrays of length 3
-- outputt: array of 6 integers
-- 6 static test cases
-- 0.1-1.0 removeduplicatesfromsortedarray
-- method still to do
-- 6 static test cases defined


	-- Global use arrays
	maxIndex10 : Integer := 10;
	type arrayOf10 is array(0 .. 9) of Integer;
	array10 : arrayOf10;

	type arrayOf2 is array(0 .. 1) of Integer;
	array2 : arrayOf2;

    -- from https://learn.adacore.com/courses/intro-to-ada/chapters/standard_library_strings.html#bounded-strings
    package B_Str is new
        Ada.Strings.Bounded.Generic_Bounded_Length (Max => 10);
    use B_Str;
    type StringBounArray is array (0 .. 2) of B_Str.Bounded_String;
    StrBounString : StringBounArray;

	-- input variables for the functions
    integerInputA : Integer;
    integerInputB : Integer;
    integerInputC : Integer;
    stringInputA : String := "         ";
    bounStringInputB : Bounded_String;

    --type arrayOf3Index is range 1 .. 3; --removed until discover how to work with index out of fors
    type arrayOf3 is array(1 .. 3) of Integer;
	array3A : arrayOf3;
	array3B : arrayOf3;


	-- output variables for the functions
	integerResultA : Integer;
    bounStringResultA : Bounded_String;
    bounStringResultB : Bounded_String;

    --type arrayOf6Index is range 1 .. 6;--removed until discover how to work with index out of fors
    type arrayOf6 is array(1 .. 6) of Integer;
	array6A : arrayOf6;

    --variables for the test stadistics
	testPass : Integer;
	testPassed : Integer;
	testTotal : Integer;

	procedure twoSum(target : Integer:=0) is
		rest : integer := 0;
		pos1 : integer := 0;
		pos2 : integer := 0;
	begin
		array2 := (100, 100);
		while pos1 < maxIndex10 loop
			rest := target - array10(pos1);
			pos2 := pos1 + 1;
			while pos2 < maxIndex10 loop
				if array2(0) < 100 then
					-- Skiping the rest of the cycle
					pos1 := maxIndex10 + 1;
					pos2 := maxIndex10 + 1;
				else
					-- saving result position
					if array10(pos2) = rest then
						array2 := (pos1,pos2);
					end if;
				end if;
				pos2 := pos2 + 1;
			end loop;
			pos1 := pos1 + 1;
		end loop;
	end twoSum;

    procedure palindrome(number : Integer) is
        tempNum : Integer;
        auxNum : Integer;
        rest : Integer;
        inverseNum : Integer := 0;
    begin
        tempNum := number;
        while tempNum > 0 loop
            auxNum := Integer(Float(tempNum) / 10.0);
            rest := Integer(tempNum - auxNum * 10);
            inverseNum := inverseNum * 10 + rest;
            tempNum := auxNum;
        end loop;
        integerResultA := 0;
        if inverseNum = number then
            integerResultA := 1;
        end if;
    end Palindrome;

    procedure auxromantointeger(romanNum : String) is
        romanone                : String := "I";
        romanfive               : String := "V";
        romanten                : String := "X";
        romanfifty              : String := "L";
        romanonehundred         : String := "C";
        romanfivehundred        : String := "D";
        romanthousand           : String := "M";
        count                   : Integer      ;
    begin
        integerResultA:=0;
        count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanone);
        integerResultA := Integer(count*1);
        if count = 0 then
            count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanfive);
            integerResultA := Integer(count*5);
        end if;
        if count = 0 then
            count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanten);
            integerResultA := Integer(count*10);
        end if;
        if count = 0 then
            count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanfifty);
            integerResultA := Integer(count*50);
        end if;
        if count = 0 then
            count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanonehundred);
            integerResultA := Integer(count*100);
        end if;
        if count = 0 then
            count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanfivehundred);
            integerResultA := Integer(count*500);
        end if;
        if count = 0 then
            count := Ada.Strings.Fixed.Count(Source => romanNum,Pattern => romanthousand);
            integerResultA := Integer(count*1000);
        end if;
    end auxromantointeger;

    procedure romantointeger(romanNum : String) is
        auxString : String := "   ";
    begin
        integerInputC := 0;
        for pos in 1 .. romanNum'Length-1 loop
            -- getting a string with the char stringExample = "'I'"
            auxString := romanNum(pos)'Image;
            auxromantointeger(auxString);
            -- Saving the old result
            integerInputB := integerResultA;
            auxString := romanNum(pos+1)'Image;
            auxromantointeger(auxString);
            -- roman calculus of the number
            if integerInputB < integerResultA then
                integerInputC := integerInputC - integerInputB;
            else
                integerInputC := integerInputC + integerInputB;
            end if;
        end loop;

        -- adding the last number always
        auxString := romanNum(romanNum'Last)'Image;
        auxromantointeger(auxString);
        integerInputC := integerInputC + integerResultA;
        -- saving the result in the integer that will eb checked
        integerResultA:=integerInputC;

    end romantointeger;

    procedure longestcommonprefix is
        letterPos : Integer := 0;
        lastCommonPos : Integer := 1;
        wordPos : Integer := 1;
    begin
        while letterPos < 10 loop
            if letterPos < 10 then
                letterPos := letterPos + 1;
                bounStringResultA := To_Bounded_String(To_String(StrBounString(0))(1..letterPos));
                wordPos := 1;
                while wordPos < StrBounString'Length loop
                    bounStringResultB := To_Bounded_String(To_String(StrBounString(wordPos))(1..letterPos));
                    lastCommonPos := letterPos;
                    if bounStringResultA /= bounStringResultB then
                        lastCommonPos := letterPos - 1;
                        letterPos := 20;
                        wordPos := 20;
                    end if;

                    wordPos := wordPos + 1;
                end loop;
            end if;
        end loop;
        bounStringResultA := To_Bounded_String(To_String(StrBounString(1))(1..lastCommonPos));
    end longestcommonprefix;

    procedure validparentheses  is
        letterPos : Integer := 1;
        openbracktypeI : Integer := 0;
        closebracktypeI : Integer := 0;
        openbracktypeII : Integer := 0;
        closebracktypeII : Integer := 0;
        openbracktypeIII : Integer := 0;
        closebracktypeIII : Integer := 0;
        prevParentesis : Integer := 0;
    begin
        while letterPos < To_String(bounStringInputB)'Length+1 loop
            case To_String(bounStringInputB)(letterPos) is
                when '(' =>
                    openbracktypeI := openbracktypeI + 1;
                    prevParentesis := 1;
                when ')' =>
                    closebracktypeI := closebracktypeI + 1;
                    if openbracktypeI = 0 then -- breaking case when you close a parentesis without opening it first
                        exit;
                    end if;
                    if prevParentesis /= 1 then-- condition in case one type of parentesis is closing another type
                        if prevParentesis /= 0 then
                            exit;
                        end if;
                    end if;
                    prevParentesis := 0;

                when '[' =>
                    openbracktypeII := openbracktypeII + 1;
                    prevParentesis := 2;
                when ']' =>
                    closebracktypeII := closebracktypeII + 1;
                    if openbracktypeII = 0 then -- breaking case when you close a parentesis without opening it first
                        exit;
                    end if;
                    if prevParentesis /= 2 then-- condition in case one type of parentesis is closing another type
                        if prevParentesis /= 0 then
                            exit;
                        end if;
                    end if;
                    prevParentesis := 0;

                when '{' =>
                    openbracktypeIII := openbracktypeIII + 1;
                    prevParentesis := 3;
                when '}' =>
                    closebracktypeIII := closebracktypeIII + 1;
                    if openbracktypeIII = 0 then -- breaking case when you close a parentesis without opening it first
                        exit;
                    end if;
                    if prevParentesis /= 3 then-- condition in case one type of parentesis is closing another type
                        if prevParentesis /= 0 then
                            exit;
                        end if;
                    end if;
                    prevParentesis := 0;
                when others =>
                    exit;
            end case;
           letterPos := letterPos + 1;
        end loop;
        integerResultA := 1;
        if openbracktypeI /= closebracktypeI then
            integerResultA := 0;
        end if;
        if openbracktypeII /= closebracktypeII then
            integerResultA := 0;
        end if;
        if openbracktypeIII /= closebracktypeIII then
            integerResultA := 0;
        end if;
    end validparentheses;

    procedure mergetwosortedlists  is
        -- indexes temporally removed
        --indexA : arrayOf3Index := 1;
        --indexB : arrayOf3Index := 1;
        --pos : arrayOf6Index := 1;
        indexA : Integer := 1;
        indexB : Integer := 1;
        pos : Integer := 1;
        tempMax : Integer := 0;
    begin

        while pos < array6A'Length+1 loop
            if indexA < array3A'Length+1 then
                if indexB < array3B'Length+1 then
                    if array3A(indexA) < array3B(indexB) then
                        array6A(pos) := array3A(indexA);
                        indexA := indexA + 1;
                    elsif array3B(indexB) < array3A(indexA) then
                        array6A(pos) := array3B(indexB);
                        indexB := indexB + 1;
                    else
                        array6A(pos) := array3A(indexA);
                        pos := pos + 1;
                        array6A(pos) := array3B(indexB);
                        indexA := indexA + 1;
                        indexB := indexB + 1;
                    end if;
                else
                    array6A(pos) := array3A(indexA);
                    indexA := indexA + 1;
                end if;
            else
                if indexB < array3B'Length+1 then
                    array6A(pos) := array3B(indexB);
                    indexB := indexB + 1;
                end if;
            end if;
            pos := pos + 1;
        end loop;
    --Put_Line ("*>"&Integer'Image(array6A(1))&Integer'Image(array6A(2))&Integer'Image(array6A(3))&Integer'Image(array6A(4))&Integer'Image(array6A(5))&Integer'Image(array6A(6)));
    end mergetwosortedlists;

    procedure removeduplicatesfromsortedarray is
        pos : Integer := array10'First;
        oldVal : Integer := 0;
        oldPos : Integer := 0;
    begin
        while pos < array10'Length-1 loop
            Put_Line (Integer'Image(pos)&"*>"&Integer'Image(array10(pos)));
            Put_Line (Integer'Image(oldPos)&"->"&Integer'Image(oldVal));
            if oldVal /= array10(pos) then
                oldVal := array10(pos);
                oldPos := pos ;
                if (pos - oldPos) > 1 then
                    Put_Line (Integer'Image(oldPos)&"/>"&Integer'Image(oldVal));
                end if;
            end if;

            pos := pos + 1;
        end loop;
    end removeduplicatesfromsortedarray;

begin
	Put_Line ("Starting main execution");
	testPass := 0;
	testPassed := 0;
	testTotal := 0;
    --------------------------------------------------------------------------------------------
    testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (9, 5, 5, 6, 2, 3, 4, 7, 6, 9);
	twoSum(integerInputA);
	if array2(0) = 1 and array2(1) = 4 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for twoSum with status: "&Integer'Image(testPass));

    testTotal := testTotal + 1;
    testPass := 0;
	integerInputA := 12;
	array10 := (9, 5, 5, 6, 2, 3, 4, 7, 6, 9);
	twoSum(integerInputA);
	if array2(0) = 0 and array2(1) = 5 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for twoSum with status: "&Integer'Image(testPass));
    --------------------------------------------------------------------------------------------
	testTotal := testTotal + 1;
    testPass := 0;
    integerResultA := 0;
    integerInputA := 12344321;
	palindrome(integerInputA);
	if integerResultA = 1 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for palindrome with status: "&Integer'Image(testPass));

	testTotal := testTotal + 1;
    testPass := 0;
	integerResultA := 1;
	integerInputA := 12345321;
	palindrome(integerInputA);
	if integerResultA = 0 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for palindrome with status: "&Integer'Image(testPass));
    --------------------------------------------------------------------------------------------
	stringInputA := "   XLVIII";
	romantointeger(stringInputA);
	testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 48 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for romantointeger with status: "&Integer'Image(testPass));

	stringInputA := "     VIII";
	romantointeger(stringInputA);
	testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 8 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for romantointeger with status: "&Integer'Image(testPass));
    --------------------------------------------------------------------------------------------
    StrBounString(0) := To_Bounded_String("asdfghjklo");
    StrBounString(1) := To_Bounded_String("asdfghtree");
    StrBounString(2) := To_Bounded_String("asdfgmnbvc");
    longestcommonprefix;
    testPass := 0;
	testTotal := testTotal + 1;
	if bounStringResultA = To_Bounded_String("asdfg") then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for longestcommonprefix with status: "&Integer'Image(testPass));

	StrBounString(0) := To_Bounded_String("eraseunave");
    StrBounString(1) := To_Bounded_String("eraseunave");
    StrBounString(2) := To_Bounded_String("eraseunave");
    longestcommonprefix;
    testPass := 0;
	testTotal := testTotal + 1;
	if bounStringResultA = To_Bounded_String("eraseunave") then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for longestcommonprefix with status: "&Integer'Image(testPass));

	StrBounString(0) := To_Bounded_String("eraseunave");
    StrBounString(1) := To_Bounded_String("eraseunave");
    StrBounString(2) := To_Bounded_String("erasenaves");
    longestcommonprefix;
    testPass := 0;
	testTotal := testTotal + 1;
	if bounStringResultA = To_Bounded_String("erase") then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for longestcommonprefix with status: "&Integer'Image(testPass));

	StrBounString(0) := To_Bounded_String("asdfsafasd");
    StrBounString(1) := To_Bounded_String("eraseunave");
    StrBounString(2) := To_Bounded_String("zxczxcccxz");
    longestcommonprefix;
    testPass := 0;
	testTotal := testTotal + 1;
	if bounStringResultA = To_Bounded_String("") then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for longestcommonprefix with status: "&Integer'Image(testPass));
    --------------------------------------------------------------------------------------------
    bounStringInputB := To_Bounded_String("()()()()()");--Output: true
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 1 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("[][][][][]");--Output: true
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 1 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("{}{}{}{}{}");--Output: true
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 1 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("([{}]([]))");--Output: true
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 1 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("([{}](]]))");--Output: false
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 0 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("([{{{([]))");--Output: false
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 0 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("([{}]([]])");--Output: false
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 0 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));

    bounStringInputB := To_Bounded_String("([{}]([])]");--Output: false
    validparentheses;
    testPass := 0;
	testTotal := testTotal + 1;
	if integerResultA = 0 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for validparentheses with status: "&Integer'Image(testPass));
    --------------------------------------------------------------------------------------------

    testPass := 0;
	testTotal := testTotal + 1;
    array3A := (1, 2, 4);
    array3B := (1, 3, 4);
    array6A := (0,0,0,0,0,0);
    mergetwosortedlists;
	testPass := 0;
	if array6A = (1,1,2,3,4,4) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for mergetwosortedlists with status: "&Integer'Image(testPass));

	testPass := 0;
	testTotal := testTotal + 1;
    array3A := (1, 4, 4);
    array3B := (1, 3, 4);
    mergetwosortedlists;
	testPass := 0;
	if array6A = (1,1,3,4,4,4) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for mergetwosortedlists with status: "&Integer'Image(testPass));

	testPass := 0;
	testTotal := testTotal + 1;
    array3A := (1, 4, 4);
    array3B := (1, 3, 5);
    mergetwosortedlists;
	testPass := 0;
	if array6A = (1,1,3,4,4,5) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for mergetwosortedlists with status: "&Integer'Image(testPass));

	testPass := 0;
	testTotal := testTotal + 1;
    array3A := (0, 0, 0);
    array3B := (0, 0, 0);
    mergetwosortedlists;
	testPass := 0;
	if array6A = (0,0,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for mergetwosortedlists with status: "&Integer'Image(testPass));

	testPass := 0;
	testTotal := testTotal + 1;
    array3A := (1, 1, 1);
    array3B := (2, 2, 2);
    mergetwosortedlists;
	testPass := 0;
	if array6A = (1,1,1,2,2,2) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for mergetwosortedlists with status: "&Integer'Image(testPass));

	testPass := 0;
	testTotal := testTotal + 1;
    array3A := (1, 1, 1);
    array3B := (1, 1, 1);
    mergetwosortedlists;
	testPass := 0;
	if array6A = (1,1,1,1,1,1) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for mergetwosortedlists with status: "&Integer'Image(testPass));
    --------------------------------------------------------------------------------------------
    testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (1,1,1,2,2,3,4,5,8,8);
	removeduplicatesfromsortedarray;
	testPass := 0;
	if array10 = (1,2,3,4,5,8,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for removeduplicatesfromsortedarray with status: "&Integer'Image(testPass));

	testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (1,1,1,2,2,3,4,5,8,8);
	removeduplicatesfromsortedarray;
	testPass := 0;
	if array10 = (1,2,3,4,5,8,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for removeduplicatesfromsortedarray with status: "&Integer'Image(testPass));

	testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (1,2,3,3,3,3,3,3,0,8);
	removeduplicatesfromsortedarray;
	testPass := 0;
	if array10 = (1,2,3,8,0,0,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for removeduplicatesfromsortedarray with status: "&Integer'Image(testPass));

	testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (1,1,1,1,1,1,1,1,1,1);
	removeduplicatesfromsortedarray;
	testPass := 0;
	if array10 = (1,0,0,0,0,0,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for removeduplicatesfromsortedarray with status: "&Integer'Image(testPass));

	testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (0,0,0,0,0,0,0,0,0,0);
	removeduplicatesfromsortedarray;
	testPass := 0;
	if array10 = (0,0,0,0,0,0,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for removeduplicatesfromsortedarray with status: "&Integer'Image(testPass));

	testTotal := testTotal + 1;
	integerInputA := 7;
	array10 := (1,0,0,0,0,0,0,0,0,0);
	removeduplicatesfromsortedarray;
	testPass := 0;
	if array10 = (1,0,0,0,0,0,0,0,0,0) then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Test for removeduplicatesfromsortedarray with status: "&Integer'Image(testPass));

    --------------------------------------------------------------------------------------------

	Put_Line ("Total test passed :"&Integer'Image(testPassed)&" from: "&Integer'Image(testTotal));
	Put_Line ("Ending main execution");
end main;