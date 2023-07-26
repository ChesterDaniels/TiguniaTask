table 50152 "CD Item Attribute Value"
{
    Caption = 'CD Item Attribute Value';
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(2; "Code"; Code[30])
        {
            Caption = 'Attribute Name';
        }
        field(3; "Item No"; Code[30])
        {
            Caption = 'Item No';
        }
        field(4; "Value"; Text[30])
        {
            Caption = 'Value';
            DataClassification = CustomerContent;
        }
        field(5; "Sales Document No."; Code[20])
        {

        }
        field(6; "Sales Line No"; Integer)
        {

        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
