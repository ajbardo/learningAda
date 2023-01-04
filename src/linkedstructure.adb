package body linkedstructure is

     -- linked arrays (custom made)
     -- 0 for no link
    type arraywithLink is array(0 .. 2) of Integer;
    type arrayOfA100 is array (0 .. 99) of arraywithLink;
    ArrayWithLinks : arrayOfA100;
    length : Integer := 0;

    function updateelement(Self : in out linkedArrayData; elementId , elementValue , linkId1, linkId2 : integer) return integer is
    begin
        ArrayWithLinks(elementId)(0) := elementValue;
        ArrayWithLinks(elementId)(1) := linkId1;
        ArrayWithLinks(elementId)(2) := linkId2;
        length := length + 1;
        return 1;
    end updateelement;

    function getElementValue(Self : in out linkedArrayData; elementId : Integer) return integer is
    begin
        return ArrayWithLinks(elementId)(0);
    end getElementValue;

    function getFirstLink(Self : in out linkedArrayData; elementId : Integer) return integer is
    begin
        return ArrayWithLinks(elementId)(1);
    end getFirstLink;

    function getSecondLink(Self : in out linkedArrayData; elementId : Integer) return integer is
    begin
        return ArrayWithLinks(elementId)(2);
    end getSecondLink;

    function cleanData(Self : in out linkedArrayData; newValue :integer) return integer is
    begin
        for pos1 in arrayOfA100'First .. arrayOfA100'Last loop
            for pos2 in arraywithLink'First .. arraywithLink'Last loop
                ArrayWithLinks(pos1)(pos2) := newValue;
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