page 50746 "Trip Ledger Entry"
{
    ApplicationArea = All;
    Caption = 'Trip Ledger Entry';
    PageType = List;
    SourceTable = "Trip Ledger Entry";
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Trip ID"; Rec."Trip ID")
                {
                    ToolTip = 'Specifies the value of the Trip ID field.', Comment = '%';
                }
                field("Driver ID"; Rec."Driver ID")
                {
                    ToolTip = 'Specifies the value of the Driver ID field.', Comment = '%';
                }
                field("Vehicle ID"; Rec."Vehicle ID")
                {
                    ToolTip = 'Specifies the value of the Vehicle ID field.', Comment = '%';
                }
                field("Transaction ID"; Rec."Transaction ID")
                {
                    ToolTip = 'Specifies the value of the Transaction ID field.', Comment = '%';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ToolTip = 'Specifies the value of the Transaction Date field.', Comment = '%';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                }
                field(Distance; Rec.Distance)
                {
                    ToolTip = 'Specifies the value of the Distance field.', Comment = '%';
                }
            }
        }
    }
}
