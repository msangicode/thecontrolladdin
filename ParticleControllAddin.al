controladdin "Particle Control Addin"
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = 'CA/script.js';
    StyleSheets = 'CA/sytle.css';
    StartupScript = 'CA/start.js';


    event ControlReady()

    procedure GenerateParticle()
}