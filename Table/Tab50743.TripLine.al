table 50743 "Trip Line"
{
    Caption = 'Trip Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Trip ID"; Code[20])
        {
            Caption = 'Trip ID';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Driver ID"; Code[20])
        {
            Caption = 'Driver ID';
            DataClassification = CustomerContent;
            TableRelation = Driver."Driver ID";
            trigger OnValidate()
            var
                Drivers: Record Driver;
            begin
                if Drivers.Get("Driver ID") then begin
                    "Driver Name" := Drivers."Driver Name";
                end;
            end;
        }
        field(4; "Driver Name"; Text[100])
        {
            Caption = 'Driver Name';
            DataClassification = CustomerContent;
        }
        field(5; "No. of Trips"; Decimal)
        {
            Caption = 'No. of Trips';
            DataClassification = CustomerContent;
        }
        field(6; "Trip Rate"; Decimal)
        {
            Caption = 'Trip Rate';
            DataClassification = CustomerContent;
        }
        field(7; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(8; Distance; Decimal)
        {
            Caption = 'Distance';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Trip ID", "Line No.")
        {
            Clustered = true;
        }
    }
}
