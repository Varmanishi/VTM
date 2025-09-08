page 50740 Vehicle
{
    ApplicationArea = All;
    Caption = 'Vehicle';
    PageType = Card;
    SourceTable = Vehicle;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Vehicle ID"; Rec."Vehicle ID")
                {
                    ToolTip = 'Specifies the value of the Vehicle ID field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Make; Rec.Make)
                {
                    ToolTip = 'Specifies the value of the Make field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Current Status"; Rec."Current Status")
                {
                    ToolTip = 'Specifies the value of the Current Status field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Fuel Efficiency"; Rec."Fuel Efficiency")
                {
                    ToolTip = 'Specifies the value of the Fuel Efficiency field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Last Maintenance Date"; Rec."Last Maintenance Date")
                {
                    ToolTip = 'Specifies the value of the Last Maintenance Date field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Registration No. field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
    }
}
