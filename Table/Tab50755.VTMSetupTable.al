table 50755 VTMSetupTable
{
    Caption = 'VTMSetupTable';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
	    Editable = False;
        }
        field(2; "Vechicle No."; Code[20])
        {
            Caption = 'Vechicle No.';
        }
        field(3; "Driver No."; Code[20])
        {
            Caption = 'Driver No.';
        }
        field(4; "Trip ID"; Code[20])
        {
            Caption = 'Trip ID';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
