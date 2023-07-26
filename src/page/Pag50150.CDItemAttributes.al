page 50150 "CD Item Attributes"
{
    ApplicationArea = All;
    Caption = 'CDItemAttributes';
    PageType = ListPart;
    SourceTable = "CD Item Attribute Value";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ToolTip = 'Name of attribute';
                    ApplicationArea = All;
                    TableRelation = "CD Item Attributes";

                    trigger OnValidate()
                    begin

                    end;
                }
                field(Value; Rec.Value)
                {
                    ToolTip = 'Value of attribute';
                    ApplicationArea = All;
                }
            }
        }
    }

}
