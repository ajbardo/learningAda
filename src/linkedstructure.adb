package body linkedstructure is
   -- package body linkedstructure
   -- 1.0-1.0 function updateelement(Self : in out linkedArrayData; elementId , elementValue , linkId1, linkId2 : integer)
   --- Load data of on the array pos representing the linked element
   -- 1.0-1.0 function getElementValue(Self : in out linkedArrayData; elementId : Integer)
   --- returns the id value of the position selected
   -- 1.0-1.0 getFirstLink(Self : in out linkedArrayData; elementId : Integer)
   --- returns the next link for first or left position of elementId
   -- 1.0-1.0 getSecondLink(Self : in out linkedArrayData; elementId : Integer)
   --- returns the next link for second or rigth position of elementId
   -- 1.0-1.0 cleanData(Self : in out linkedArrayData; newValue :integer)
   --- prefix all the elements to the selected value
   -- 1.0-1.0 getlength(Self : in out linkedArrayData; newValue :integer)
   --- returns the number of active elements

    length : Integer := 0;

    function updateelement(Self : in out linkedArrayData; elementId , elementValue , linkId1, linkId2 : integer) return integer is
    begin
        Self.ArrayWithLinks(elementId)(0) := elementValue;
        Self.ArrayWithLinks(elementId)(1) := linkId1;
        Self.ArrayWithLinks(elementId)(2) := linkId2;
        length := length + 1;
        return 1;
    end updateelement;

    function getElementValue(Self : in out linkedArrayData; elementId : Integer) return integer is
    begin
        return Self.ArrayWithLinks(elementId)(0);
    end getElementValue;

    function getFirstLink(Self : in out linkedArrayData; elementId : Integer) return integer is
    begin
        return Self.ArrayWithLinks(elementId)(1);
    end getFirstLink;

    function getSecondLink(Self : in out linkedArrayData; elementId : Integer) return integer is
    begin
        return Self.ArrayWithLinks(elementId)(2);
    end getSecondLink;

    function cleanData(Self : in out linkedArrayData; newValue :integer) return integer is
    begin
        for pos1 in arrayOfA100'First .. arrayOfA100'Last loop
            for pos2 in arraywithLink'First .. arraywithLink'Last loop
                Self.ArrayWithLinks(pos1)(pos2) := newValue;
            end loop;
        end loop;
        length := 0;
        return 1;
    end cleanData;

    function getlength(Self : in out linkedArrayData; newValue :integer) return integer is
    begin
        return length;
    end getlength;

end linkedstructure;
