page 50152 "CD Item Attributes List"
{
    ApplicationArea = All;
    Caption = 'CD Item Attributes';
    PageType = List;
    SourceTable = "CD Item Attributes";
    UsageCategory = Lists;
    CardPageId = "CD Item Attribute Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                    ToolTip = 'Specifies whether attribute value is free form text or selected from list';
                }
                field(Required; Rec.Required)
                {
                    ToolTip = 'Specifies the value of the Required field.';
                }
            }
        }
    }
}
