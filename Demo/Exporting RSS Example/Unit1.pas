unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SimpleRSS, OleCtrls, SHDocVw, SimpleRSSTypes, StdCtrls;
type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Label1: TLabel;
    Label2: TLabel;
    WebBrowser2: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    SimpleRSS: TSimpleRSS;
  end;
var
  Form1: TForm1;
implementation
uses ComObj;
{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
  SimpleRSS:= TSimpleRSS.Create(nil);
end;

procedure TForm1.FormShow(Sender: TObject);
Var
  Item : TRSSItem;
  Category : TRSSItemCategory;
  channelcategory : TRSSChannelCategory;
begin
  channelcategory := SimpleRSS.Channel.Optional.Categories.Add;
  channelcategory.Category := 'test';
  With SimpleRSS.Channel.Optional.Categories.Add do
    Begin
      Category := 'test 2 with domain';
      Domain := '???';
    end; // with do
  Item := SimpleRSS.Items.Add;
  With Item do
    Begin
      Title := 'First News Article';
      Description := 'This is merely a simple test';
      Author.EMail := 'robert@sadev.co.za';
      Source.Title := 'Made up';
      Source.URL := 'http://www.nowhere.com';
      Source.Include := True;
      Category := Item.Categories.Add;
      Category.Title := 'TEST';
    end; // with do
  Item := SimpleRSS.Items.Add;
  With Item do
    Begin
      Title := 'Second News Article';
      Description := 'This is slightly more complex test';
      Author.EMail := 'robert@sadev.co.za';
      Source.Title := 'Made up';
      Source.URL := 'http://www.nowhere.com';
      Source.Include := True;
      Category := Item.Categories.Add;
      Category.Title := 'TEST';
      Category.Domain := 'thisorthat';
      GUID.Include := True;
      GUID.GUID := CreateClassID;
      PubDate.DateTime := Now;
      PubDate.TimeZone := 'SAST';
    end; // with do
  Item := SimpleRSS.Items.Add;
  With Item do
    Begin
      Title := 'Third News Article';
      Description := 'This is should have an video attached.';
      Author.EMail := 'robert@sadev.co.za';
      With Item.Categories.Add do
        Begin
          Title := 'TEST';
        end; // with do
      GUID.Include := True;
      GUID.GUID := CreateClassID;
      GUID.IsPermaLink := True;
      Enclosure.Include := True;
      Enclosure.URL := 'http://blah.com/blah.mpg';
      Enclosure.Length := 1024;
      Enclosure.EnclosureType := 'audio/mpeg';
    end; // with do
  Item := SimpleRSS.Items.Add;
  With Item do
    Begin
      Title := 'Another News Article';
      Description := 'Comments Field';
      Author.EMail := 'robert@sadev.co.za';
      Category := Item.Categories.Add;
      Category.Title := 'TEST';
      GUID.Include := True;
      GUID.GUID := CreateClassID;
      Comments := 'http://idontcare.com/edit.dll/post';
    end; // with do
  SimpleRSS.SaveToFile('c:\test.xml');
  WebBrowser1.Navigate('file://c:/test.xml');
  SimpleRSS.LoadFromFile('c:\test.xml');
  SimpleRSS.SaveToFile('c:\test2.xml');
  WebBrowser2.Navigate('file://c:/test2.xml');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(SimpleRSS) then begin SimpleRSS.Free; SimpleRSS := nil; end;
end;

end.
