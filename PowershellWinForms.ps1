Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object Windows.Forms.Form
$Form.Text = "Sample Form"
$Form.Size = New-Object Drawing.Size @(800,700)
$Form.StartPosition = "CenterScreen"
$Form.Font = New-Object System.Drawing.Font("Times New Roman",13,[System.Drawing.FontStyle]::Regular)
$Form.Opacity = 0.95
$Form.BackColor = "LightGray"
$Form.AutoScroll = $True
$Icon = [system.drawing.icon]::ExtractAssociatedIcon($PSHOME + "\powershell.exe")
$Form.Icon = $Icon

$Label = New-Object System.Windows.Forms.Label
$Label.Location = New-Object System.Drawing.Size(75,50) 
$Label.Text = "Simple label"
$Form.Controls.Add($Label)

$Image = [system.drawing.image]::FromFile("$($Env:Public)\828992_640.jpg")
$Form.BackgroundImage = $Image
$Form.BackgroundImageLayout = "Center"

$CloseButton = New-Object System.Windows.Forms.Button 
$CloseButton.Location = New-Object System.Drawing.Size(710,670) 
$CloseButton.Size = New-Object System.Drawing.Size(90,30) 
$CloseButton.Text = "Close" 
$CloseButton.Add_Click({$Form.Close()}) 
$Form.Controls.Add($CloseButton)

$Form.ShowDialog()