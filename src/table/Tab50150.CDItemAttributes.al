table 50150 "CD Item Attributes"
{
    Caption = 'CDItem Attributes';
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
            AutoIncrement = true;
        }
        field(2; Code; Code[30])
        {
            Caption = 'Name';
        }
        field(3; "Description "; Text[50])
        {
            Caption = 'Description ';
        }
        field(4; Type; Enum "CD Attribute Type")
        {
            Caption = 'Type';
        }
        field(5; Required; Boolean)
        {
            Caption = 'Required';
        }
    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
