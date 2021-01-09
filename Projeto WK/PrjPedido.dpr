program PrjPedido;

uses
  Vcl.Forms,
  uDM in 'uDM.pas' {DM: TDataModule},
  uFuncoes in 'uFuncoes.pas',
  uFrmPedido in 'uFrmPedido.pas' {FrmPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPedido, FrmPedido);
  Application.Run;
end.
