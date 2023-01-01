package exercises1to100 is--structure from https://learn.adacore.com/courses/GNAT_Toolchain_Intro/chapters/gprbuild.html#basic-commands
   type My_Class is tagged null record;
   --  Just like a regular record, but
   --  with tagged qualifier

   --  Methods are outside of the type
   --  definition:

   procedure oneTo100(Self : in out My_Class);
   --  If you define a procedure taking a
   --  My_Class argument in the same package,
   --  it will be a method.


end exercises1to100;