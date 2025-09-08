page 50745 "Trip Line"
{
    ApplicationArea = All;
    Caption = 'Trip Line';
    PageType = ListPart;
    SourceTable = "Trip Line";
    DelayedInsert = true;
    UsageCategory = None;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Trip ID"; Rec."Trip ID")
                {
                    ToolTip = 'Specifies the value of the Trip ID field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Trip Rate"; Rec."Trip Rate")
                {
                    ToolTip = 'Specifies the value of the Trip Rate field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("No. of Trips"; Rec."No. of Trips")
                {
                    ToolTip = 'Specifies the value of the No. of Trips field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Driver Name"; Rec."Driver Name")
                {
                    ToolTip = 'Specifies the value of the Driver Name field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Driver ID"; Rec."Driver ID")
                {
                    ToolTip = 'Specifies the value of the Driver ID field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Distance; Rec.Distance)
                {
                    ToolTip = 'Specifies the value of the Distance field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
    }
}
