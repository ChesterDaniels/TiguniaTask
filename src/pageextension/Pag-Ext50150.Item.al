pageextension 50150 Item extends "Item Card"
{
    layout
    {
        addafter(Item)
        {
            group(Attributes)
            {
                part(CDItemAttributes; "CD Item Attributes")
                {
                    SubPageLink = "Item No" = field("No.");
                    ApplicationArea = All;
                    Caption = 'Item Attributes';
                    UpdatePropagation = Both;
                }
            }
        }
    }
    actions
    {
        addafter(CopyItem)
        {
            action("Add Attributes")
            {
                ApplicationArea = All;
                Image = Add;
                ToolTip = 'Click to add item attributes';
                trigger OnAction()
                begin

                end;
            }
        }
        addbefore(CopyItem_Promoted)
        {
            actionref(AddAttribute_Promoted; "Add Attributes")
            {

            }
        }
    }
}
