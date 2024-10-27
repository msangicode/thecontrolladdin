pageextension 50160 "BankAcc PExt" extends "Bank Account Card"
{
    layout
    {
        addlast(General)
        {
            usercontrol("Particle Control Addin"; "Particle Control Addin")
            {
                trigger ControlReady()
                begin
                    Message('Invoke control ready!');
                    CurrPage."Particle Control Addin".GenerateParticle();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Message('At OnOpenPage!');
    end;

    trigger OnAfterGetCurrRecord()
    begin
        Message('At OnAfterGetCurrRecord!');
    end;

    trigger OnAfterGetRecord()
    begin
        Message('At OnAfterGetRecord!');
    end;

}