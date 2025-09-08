tableextension 50740 "General Ledger Setup EXT" extends "General Ledger Setup"
{
    fields
    {
        field(50100; "Transaction ID"; Code[20])
        {
            Caption = 'Transaction ID';
            DataClassification = ToBeClassified;
        }
    }
}
