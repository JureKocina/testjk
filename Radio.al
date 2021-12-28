table 50101 "Radio Show"
{
    LookupPageId = PodpisList;
    DrillDownPageId = PodpisPage;

    fields
    {
        field(1; "No."; Code[20])
        {
            trigger OnValidate()
            begin
            end;

            trigger OnLookup()
            begin
            end;
        }
        field(10; "Radio Show Tipe"; Code[10]) { TableRelation = "Radio Show Type"; }
        field(20; "Name"; Text[50]) { }
        field(30; "Run Time"; Duration) { }
        field(50; "Host Code"; Code[20]) { }
        field(60; "Host Name"; Text[50]) { }
        field(100; "Avarage Listeners"; Decimal) { }
        field(110; "Audience Share"; Decimal) { }
        field(120; "Advertising Revenue"; Decimal) { }
        field(130; "Royalty cost"; Decimal) { }
        field(1000; "Frequency"; Option) { OptionMembers = Hourly,Daily,Weekly,Mounthly; }
        field(1010; "PSA Planned Quantity"; Integer) { }
        field(1020; "Ads Planned Quantity"; Integer) { }
        field(1030; "News Required"; Boolean) { InitValue = true; }
        field(1040; "New Duration"; Duration) { }
        field(1050; "Sports Required"; Boolean) { InitValue = true; }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { InitValue = true; }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Date Filter"; date) { FieldClass = FlowFilter; }
        field(1100; "Signature"; Code[20])
        {



        }
    }

    keys
    {
        key(PK; "No.") { }
    }

    fieldgroups
    {
        fieldgroup(DropDouwn; "No.", Name, "Host Name") { }
        fieldgroup(Brick; "No.", Name, "Audience Share") { }



    }

}
