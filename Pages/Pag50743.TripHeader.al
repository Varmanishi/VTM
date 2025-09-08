page 50743 "Trip Header"
{
    ApplicationArea = All;
    Caption = 'Trip Header';
    PageType = Document;
    SourceTable = "Trip Header";
    
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Trip ID"; Rec."Trip ID")
                {
                    ToolTip = 'Specifies the value of the Trip ID field.', Comment = '%';
                }
                field("Trip Name"; Rec."Trip Name")
                {
                    ToolTip = 'Specifies the value of the Trip Name field.', Comment = '%';
                }
                field("Vehicle ID"; Rec."Vehicle ID")
                {
                    ToolTip = 'Specifies the value of the Vehicle ID field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Make; Rec.Make)
                {
                    ToolTip = 'Specifies the value of the Make field.', Comment = '%';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.', Comment = '%';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the value of the Document Date field.', Comment = '%';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
            }
        }
    }
}
