unit uProduto;

interface

uses
  uDM, uPedidoProduto;

type

  TProduto = class
  private
    FID: integer;
    FDescricao: string;
    FPreco: currency;
  public
    constructor Create; virtual;
    destructor Destroy; virtual;
    procedure Insert; virtual;
    procedure Delete; virtual;
    function Busca: boolean;
    procedure LimpaDados;
  published
    property ID: integer       read FID        write FID;
    property Descricao: string read FDescricao write FDescricao;
    property Preco: currency   read FPreco     write FPreco;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;


{ TProduto }

function TProduto.Busca: boolean;
begin
  result := false;
  try
    with DM.qSqlQuery do begin
      Close;
      SQL.Clear;
      Open('select * from PRODUTOS where ID = '+IntToStr(ID));
      if IsEmpty then begin
        LimpaDados;
      end else begin
        ID        := FieldByName('ID').AsInteger;
        Descricao := FieldByName('DESCRICAO').AsString;
        Preco     := FieldByName('PRECO').AsCurrency;
        result    := true;
      end;
    end;
  except
    on E: exception do begin
      MessageDlg('Erro ao buscar produto'+#13+E.Message, mtError, [mbOK], 0);
      exit;
    end;
  end;
end;

constructor TProduto.Create;
begin

end;

procedure TProduto.Delete;
begin

end;

destructor TProduto.Destroy;
begin
  Free
end;

procedure TProduto.Insert;
begin

end;

procedure TProduto.LimpaDados;
begin
  ID := 0;
  Descricao := '';
  Preco := 0;
end;

end.
