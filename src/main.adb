with Ada.Text_IO; use Ada.Text_IO;

procedure main is
-- main 
-- 1.0-1.0 twoSum
-- ____ notes ____
-- 1.0 - Nomenclature : versionOfProcedureOrFunction-versionOfTest
-- * First digit for functionalities already completed an closed (1.0,2.0,3.0)
-- * Second digit for functionalities under development (0.1,0.11,0.23,1.35,2.56)
-- * Possible third digit to track minor changes that do not affect functionality (0.0.3,0.1.7)
-- * Comments with the resume of the content with * character
-- _______________
-- 0.1-0.0 Global variables
-- maxIndex10 : Integer
-- type arrayOf10 is array(0 .. 9) of Integer
-- array10 : arrayOf10
-- type arrayOf2 is array(0 .. 1) of Integer
-- array2 : arrayOf2;
-- _______________
-- 1.0-1.0 procedure twoSum(target : Integer:=0)
-- * Calculate positions of two numbers in an array such that they add matches the target
-- * Static test with 10 position array 
--
--
--
--
--
--
--
--
	
	maxIndex10 : Integer := 10;
	type arrayOf10 is array(0 .. 9) of Integer;
	array10 : arrayOf10;
	
	type arrayOf2 is array(0 .. 1) of Integer;
	array2 : arrayOf2;
	
	
	integerResultA : Integer;
	testPass : Integer;
	testPassed : Integer;
	
	procedure twoSum(target : Integer:=0) is 
		rest : integer := 0;
		pos1 : integer := 0;
		pos2 : integer := 0;
	begin
		array2 := (100, 100);
		Put_Line ("Starting twoSum");
		
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
		
		Put_Line ("Ending twoSum");
	end twoSum;

begin
	Put_Line ("Starting main execution");
	testPass := 0;
	integerResultA := 7;
	array10 := (9, 5, 5, 6, 2, 3, 4, 7, 6, 9);
	twoSum(integerResultA);
	if array2(0) = 1 and array2(1) = 4 then
		testPass := 1;
		testPassed := testPassed + 1;
	end if;
	Put_Line ("Result of the test for twoSum with status: "&Integer'Image(testPass));
	
	
	Put_Line ("Total test passed :"&Integer'Image(testPassed)&" from: "&Integer'Image(testPassed));
	Put_Line ("Ending main execution");
end main;