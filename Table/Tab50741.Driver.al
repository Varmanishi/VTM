table 50741 Driver
{
    Caption = 'Driver';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Driver ID"; Code[20])
        {
            Caption = 'Driver ID';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                NoSeriesMgt: Codeunit "No. Series";
                NOS: Record VTMSetupTable;
            begin
                if "Driver ID" <> xRec."Driver ID" then begin
                    NOS.Get();
                    NoSeriesMgt.TestManual(NOS."Driver No.");
                end;
            end;
        }
        field(2; "Driver Name"; Text[100])
        {
            Caption = 'Driver Name';
            DataClassification = CustomerContent;
        }
        field(3; "License Number"; Code[15])
        {
            Caption = 'License Number';
            DataClassification = CustomerContent;
        }
        field(4; "Contact No."; Code[10])
        {
            Caption = 'Contact No.';
            DataClassification = CustomerContent;
        }
        field(5; Address; Text[250])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(6; BirthDate; Date)
        {
            Caption = 'BirthDate';
            DataClassification = CustomerContent;
        }
        field(7; Email; Text[100])
        {
            Caption = 'BirthDate';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Driver ID")
        {
            Clustered = true;
        }
    }
     trigger OnInsert()
    var
        Noseries: Codeunit "No. Series";
        NOS: Record VTMSetupTable;
    begin
        if "Driver ID" <> '' then
            if NOS.Get() then begin
                NOS.TestField(Nos."Driver No.");
                "Driver ID" := Noseries.GetNextNo(NOS."Driver No.", 0D);
            end
    end;
}
