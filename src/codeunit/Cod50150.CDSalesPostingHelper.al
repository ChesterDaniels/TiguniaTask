codeunit 50150 "CD Sales Posting Helper"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesLines', '', true, true)]
    local procedure CheckAttributes(var SalesHeader: Record "Sales Header")
    var
        Salesline: Record "Sales Line";
        Item: Record Item;
        Attribute: Record "CD Item Attributes";
        AttributeValue: Record "CD Item Attribute Value";
        SaleslineAttributeValue: Record "CD Item Attributes";

    begin
        Salesline.SetRange("Document Type", SalesHeader."Document Type");
        Salesline.SetRange("Document No.", SalesHeader."No.");
        if Salesline.FindSet() then
            repeat
                if Salesline.Type = Salesline.Type::Item then begin
                    AttributeValue.Reset();
                    AttributeValue.SetRange("Item No", Salesline."No.");
                    if AttributeValue.FindSet() then
                        repeat
                            Attribute.Get(AttributeValue.Code);
                            if Attribute.Required then begin
                                SaleslineAttributeValue.Reset();
                                SaleslineAttributeValue.SetRange(Code, AttributeValue.Code);
                                if not SaleslineAttributeValue.Find() then
                                    Error('Required attribute missing');
                            end;
                        until AttributeValue.Next() = 0
                end;
            until Salesline.Next() = 0;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterAssignItemValues', '', true, true)]
    local procedure CopyItemAttributes(Item: Record Item; var SalesLine: Record "Sales Line")
    var
        ItemAttributeValue: Record "CD Item Attribute Value";
        SaleslineAttributeValue: Record "CD Item Attribute Value";
    begin
        ItemAttributeValue.SetRange("Item No", Item."No.");
        if ItemAttributeValue.FindSet() then
            repeat
                SaleslineAttributeValue.Init();
                SaleslineAttributeValue.Code := ItemAttributeValue.Code;
                SaleslineAttributeValue."Item No" := ItemAttributeValue."Item No";
                SaleslineAttributeValue.Value := ItemAttributeValue.Value;
                SaleslineAttributeValue."Sales Document No." := SalesLine."Document No.";
                SaleslineAttributeValue."Sales Line No" := SalesLine."Line No.";
                SaleslineAttributeValue.Insert()
            until ItemAttributeValue.Next() = 0;
    end;
}
