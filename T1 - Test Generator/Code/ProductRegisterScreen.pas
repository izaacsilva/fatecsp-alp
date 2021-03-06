unit ProductRegisterScreen;
interface

  procedure ShowProductRegisterScreen(productFile : string);
  
implementation
  uses ProductUtils;

  (*Shows screen to register new product*)  
  procedure ShowProductRegisterScreen(productFile: string);
  var
    newProduct : Product;
  begin
    ClrScr;
  
    Writeln('------P R O D U T O S------');  
    Writeln('------R E G I S T R O------');
    
    Write('Digite o c�digo do produto: ');
    Readln(newProduct.Code);
    
    Writeln('Digite o nome do produto (maximo de 30 caracters): ');
    Readln(newProduct.Name);
    
    Write('Digite o valor do produto (para decimo use ponto - . ): ');
    Readln(newProduct.Price);
    
    if AddNewProduct(productFile, newProduct) then
    begin
      Writeln('Produto inserido com sucesso!');
    end
    
    else
    begin
      Writeln('A T E N � � O - O produto n�o foi cadastrado ');
      Writeln('                pois j� existe outro produto ');
      Writeln('                com o mesmo c�digo cadastrado.');
    end;
    
    Writeln('Pressione qualquer tecla para continuar...');
    Readkey;
  end;
end.