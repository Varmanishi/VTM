pageextension 50100 "General Ledger Setup EXT" extends "General Ledger Setup"
{
    layout
    {
        addlast(VATReportingDateGroup)
        {
            field("Transaction ID";Rec."Transaction ID")
            {
                ToolTip = 'General Ledger Setup EXT Transaction ID ';
            }
        }
    }
}
