unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, LCLTranslator;

resourcestring
  MsgCaption = 'Hello World!';

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    rgLang: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure rgLangClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.rgLangClick(Sender: TObject);
begin
  case rgLang.ItemIndex of
    0: SetDefaultLang('en','lang');
    1: SetDefaultLang('ru','lang');
    2: SetDefaultLang('de','lang', 'i18n');
  end;

  Label2.Caption:= MsgCaption;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  rgLang.ItemIndex:= 0;
  rgLangClick(Sender);
end;

end.

