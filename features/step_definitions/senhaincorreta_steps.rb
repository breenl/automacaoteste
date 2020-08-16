Dado('que a Senha estão incorretos') do
    visit 'https://wwws.bradescosaude.com.br/PCBS-LoginSaude/td/inicioLoginEmpresaSaude.do'
  end
  
  Quando('o usuário informar a senha') do
    find('[name=CNPJ]').send_keys("42.646.366/0001-82")
    find('[name=Senha]').send_keys("1234567")
    find('[id=btnAcessar]').click
    #expect(page).to have_content "Usuário Inválido"
  end
  
  Então('apresentar a mensagem “CNPJ\/CPF\/Senha inválidos.”') do
    expect(page).to have_content "CNPJ CPF Senha inválidos." #Usuário Inválido
  end