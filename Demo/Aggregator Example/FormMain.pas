unit FormMain;

interface

uses
	Windows, Messages, SysUtils, StdCtrls, ShellAPI,
	Controls, Dialogs, Buttons, SimpleRSS, Classes, Forms, Graphics;

type
	TForm1 = class(TForm)
    SimpleRSS: TSimpleRSS;
    Label1: TLabel;
    lblChannelNam: TLabel;
    lblCopyright: TLabel;
    lblManagingEditor: TLabel;
    lblWebmaster: TLabel;
    Label2: TLabel;
    edtFileName: TEdit;
		spdbtnOpen: TSpeedButton;
		OpenDialog1: TOpenDialog;
    lstbxheadlines: TListBox;
    mnFeed: TMemo;
    procedure lblChannelNamMouseEnter(Sender: TObject);
    procedure lblChannelNamMouseLeave(Sender: TObject);
    procedure lblChannelNamClick(Sender: TObject);
    procedure spdbtnOpenClick(Sender: TObject);
    procedure edtFileNameChange(Sender: TObject);
    procedure lstbxheadlinesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
	Form1: TForm1;

implementation

uses SimpleRSSTypes;

{$R *.dfm}

procedure TForm1.lblChannelNamMouseEnter(Sender: TObject);
begin
	lblChannelNam.Font.Color := clBlue;
	lblChannelNam.Cursor := crHandPoint;
end;

procedure TForm1.lblChannelNamMouseLeave(Sender: TObject);
begin
	lblChannelNam.Font.Color := clBlack;
	lblChannelNam.Cursor := crArrow;
end;

procedure TForm1.lblChannelNamClick(Sender: TObject);
begin
	ShellExecute(Handle,'open',PChar(SimpleRSS.Channel.Required.Link),'','',SW_NORMAL);
end;

procedure TForm1.spdbtnOpenClick(Sender: TObject);
begin
	If opendialog1.Execute then
		edtFileName.Text := OpenDialog1.FileName;
end;

procedure TForm1.edtFileNameChange(Sender: TObject);
Var
	Counter : Integer;
begin
	if FileExists(edtFileName.Text) then
		Begin
			lstbxheadlines.Items.Clear;
			SimpleRSS.LoadFromFile(edtFileName.Text);
			lblChannelNam.Caption := SimpleRSS.Channel.Required.Title;
			lblChannelNam.Hint := SimpleRSS.Channel.Required.Desc;
			lblCopyright.Caption := SimpleRSS.Channel.Optional.Copyright;
			lblManagingEditor.Caption := 'Managing Editor: '+SimpleRSS.Channel.Optional.ManagingEditor;
			lblWebmaster.Caption := 'Webmaster: '+SimpleRSS.Channel.Optional.WebMaster;
			If SimpleRSS.Items.Count > 0 then
				Begin
					For Counter := 0 to SimpleRSS.Items.Count-1 do
						Begin
							lstbxheadlines.Items.Add(SimpleRSS.Items.Items[Counter].Title);
						end; // for 2 do
				end // if then
			else
				Begin
					lstbxheadlines.Items.Add('No News :(');
				end; // if else
		end; // if then
end;

procedure TForm1.lstbxheadlinesClick(Sender: TObject);
begin
	mnFeed.Lines.Clear;
	mnFeed.Lines.Text := SimpleRSS.Items.Items[lstbxheadlines.ItemIndex].Title+#13+#10+
											 '   by '+SimpleRSS.Items.Items[lstbxheadlines.ItemIndex].Author+#13+#10+
											 SimpleRSS.Items.Items[lstbxheadlines.ItemIndex].Description;
end;

end.
