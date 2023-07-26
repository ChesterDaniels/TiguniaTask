table 50151 "CD Item Attr Value Options"
{
    Caption = 'CDAttribute Value Options';
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(2; "Attribute ID"; Code[20])
        {
            Caption = 'Attribute ID';
        }
        field(3; "Value"; Text[20])
        {
            Caption = 'Value';
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
