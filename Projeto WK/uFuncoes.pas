unit uFuncoes;

interface

function FormataVlr(sTexto:String): string;

implementation

uses
  uDM, System.SysUtils, System.StrUtils;

function FormataVlr(sTexto:String): string;
var
  sVlr: UnicodeString;
  nVlr: Currency;
begin
  sVlr := AnsiReplaceStr(sTexto,'.',',');
  if TryStrToCurr(sVlr, nVlr) then Result := FormatFloat('##0.00', nVlr)
  else                             Result := '0,00';
end;

end.
