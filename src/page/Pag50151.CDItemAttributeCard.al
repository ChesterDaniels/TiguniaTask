page 50151 "CD Item Attribute Card"
{
    ApplicationArea = All;
    Caption = 'CD Item Attribute Card';
    PageType = Card;
    SourceTable = "CD Item Attributes";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Description "; Rec."Description ")
                {
                    ToolTip = 'Specifies the value of the Description  field.';
                }
                field(Type; Rec.Type)
                {
                    ToolTip = 'Type';
                }
                field(Required; Rec.Required)
                {
                    ToolTip = 'Specifies the value of the Required field.';
                }
            }
        }
    }
}
