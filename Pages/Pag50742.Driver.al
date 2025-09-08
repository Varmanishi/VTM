page 50742 Driver
{
    ApplicationArea = All;
    Caption = 'Driver';
    PageType = Card;
    SourceTable = Driver;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Driver ID"; Rec."Driver ID")
                {
                    ToolTip = 'Specifies the value of the Driver ID field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Driver Name"; Rec."Driver Name")
                {
                    ToolTip = 'Specifies the value of the Driver Name field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Contact No."; Rec."Contact No.")
                {
                    ToolTip = 'Specifies the value of the Contact No. field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the BirthDate field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(BirthDate; Rec.BirthDate)
                {
                    ToolTip = 'Specifies the value of the BirthDate field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("License Number"; Rec."License Number")
                {
                    ToolTip = 'Specifies the value of the License Number field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
    }
}
