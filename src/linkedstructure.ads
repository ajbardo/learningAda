package linkedstructure is--structure from https://learn.adacore.com/courses/GNAT_Toolchain_Intro/chapters/gprbuild.html#basic-commands
   -- v0.1-0.0 linkedstructure
    -- v0.1-0.0 updateelement
    -- -> updates the value of the element and the links
    -- v0.1-0.0 getElementValue
    -- -> returns the element value
    -- v0.1-0.0 getFirstLink
    -- -> returns the id of the next first link
    -- v0.1-0.0 getSecondLink
    -- -> returns the id of the next second link
    -- v0.2-0.0 cleanData
    -- -> restores all the positions of all the arrays to the designated value
    -- -> restores length to 0
    -- +v0.2-0.0 getlength
    -- -> Returns the total length of the linked structure
    -- -> receives a value that is not significant

   type arraywithLink is array(0 .. 2) of Integer;
   type arrayOfA100 is array (0 .. 99) of arraywithLink;

   type linkedArrayData is tagged record
            ArrayWithLinks : arrayOfA100;
   end record;

   type linkedArrayData_Class is access linkedArrayData'Class;


    function updateelement(Self : in out linkedArrayData; elementId , elementValue , linkId1, linkId2 : integer) return integer;
    function getElementValue(Self : in out linkedArrayData; elementId : Integer) return integer;
    function getFirstLink(Self : in out linkedArrayData; elementId : Integer) return integer;
    function getSecondLink(Self : in out linkedArrayData; elementId : Integer) return integer;
    function cleanData(Self : in out linkedArrayData; newValue :integer) return integer;
   function getlength(Self : in out linkedArrayData; newValue :integer) return integer;

end linkedstructure;
