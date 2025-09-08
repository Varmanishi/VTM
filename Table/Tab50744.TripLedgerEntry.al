table 50744 "Trip Ledger Entry"
{
    Caption = 'Trip Ledger Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Transaction ID"; Integer)
        {
            Caption = 'Transaction ID';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; "Trip ID"; Code[20])
        {
            Caption = 'Trip ID';
            DataClassification = CustomerContent;
        }
        field(3; "Vehicle ID"; Code[20])
        {
            Caption = 'Vehicle ID';
            DataClassification = CustomerContent;
        }
        field(4; "Driver ID"; Code[20])
        {
            Caption = 'Driver ID';
            DataClassification = CustomerContent;
        }
        field(5; "Transaction Date"; Date)
        {
            Caption = 'Transaction Date';
            DataClassification = CustomerContent;
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(7; Distance; Decimal)
        {
            Caption = 'Distance';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Transaction ID")
        {
            Clustered = true;
        }
    }
}
