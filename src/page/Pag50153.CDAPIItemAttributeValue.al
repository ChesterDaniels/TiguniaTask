page 50153 "CD API Item Attribute Value"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'cdAPIItemAttributeValue';
    DelayedInsert = true;
    EntityName = 'attributeValue';
    EntitySetName = 'attributeValues';
    PageType = API;
    SourceTable = "CD Item Attribute Value";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("code"; Rec."Code")
                {
                    Caption = 'Attribute Name';
                }
                field(id; Rec.ID)
                {
                    Caption = 'ID';
                }
                field(itemNo; Rec."Item No")
                {
                    Caption = 'Item No';
                }
                field(salesDocumentNo; Rec."Sales Document No.")
                {
                    Caption = 'Sales Document No.';
                }
                field(salesLineNo; Rec."Sales Line No")
                {
                    Caption = 'Sales Line No';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
                field("value"; Rec."Value")
                {
                    Caption = 'Value';
                }
            }
        }
    }
}
