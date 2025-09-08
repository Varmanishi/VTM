table 50742 "Trip Header"
{
    Caption = 'Trip Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Trip ID"; Code[20])
        {
            Caption = 'Trip ID';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                NoSeriesMgt: Codeunit "No. Series";
                NOS: Record VTMSetupTable;
            begin
                if "Trip ID" <> xRec."Trip ID" then begin
                    NOS.Get();
                    NoSeriesMgt.TestManual(NOS."Trip ID");
                end;
            end;
        }
        field(2; "Trip Name"; Text[100])
        {
            Caption = 'Trip Name';
            DataClassification = CustomerContent;
        }
        field(3; "Vehicle ID"; Code[20])
        {
            Caption = 'Vehicle ID';
            DataClassification = CustomerContent;
            TableRelation = Vehicle."Vehicle ID";
            trigger OnValidate()
            var
                vehicles: Record Vehicle;
            begin
                if vehicles.Get("Vehicle ID") then begin
                    Make := vehicles.Make;
                    Model := vehicles.Model;
                    Year := vehicles.Year;
                end;
            end;
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(5; Make; Text[50])
        {
            Caption = 'Make';
            DataClassification = CustomerContent;
        }
        field(6; Model; Text[50])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(7; Year; Integer)
        {
            Caption = 'Year';
            DataClassification = CustomerContent;
        }
        field(8; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(10; Status; Enum "ABS Blob Access Tier")
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Trip ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        Noseries: Codeunit "No. Series";
        NOS: Record VTMSetupTable;
    begin
        if "Trip ID" <> '' then
            if NOS.Get() then begin
                NOS.TestField(Nos."Trip ID");
                "Vehicle ID" := Noseries.GetNextNo(NOS."Trip ID", 0D);
            end
    end;
}
