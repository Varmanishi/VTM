table 50740 Vehicle
{
    Caption = 'Vehicle';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Vehicle ID"; Code[20])
        {
            Caption = 'Vehicle ID';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                NoSeriesMgt: Codeunit "No. Series";
                NOS: Record VTMSetupTable;
            begin
                if "Vehicle ID" <> xRec."Vehicle ID" then begin
                    NOS.Get();
                    NoSeriesMgt.TestManual(NOS."Vechicle No.");
                end;
            end;
        }
        field(2; Make; Text[100])
        {
            Caption = 'Make';
            DataClassification = CustomerContent;
        }
        field(3; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(4; Model; Text[100])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(5; Year; Integer)
        {
            Caption = 'Year';
        }
        field(6; "Registration No."; Code[20])
        {
            Caption = 'Registration No.';
        }
        field(7; "Current Status"; Enum "ABS Blob Access Tier")
        {
            Caption = 'Current Status';
            DataClassification = CustomerContent;
        }
        field(8; "Last Maintenance Date"; Date)
        {
            Caption = 'Last Maintenance Date';
            DataClassification = CustomerContent;
        }
        field(9; "Fuel Efficiency"; Code[20])
        {
            Caption = 'Fuel Efficiency';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Vehicle ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        Noseries: Codeunit "No. Series";
        NOS: Record VTMSetupTable;
    begin
        if "Vehicle ID" <> '' then
            if NOS.Get() then begin
                NOS.TestField(Nos."Vechicle No.");
                "Vehicle ID" := Noseries.GetNextNo(NOS."Vechicle No.", 0D);
            end
    end;
}
