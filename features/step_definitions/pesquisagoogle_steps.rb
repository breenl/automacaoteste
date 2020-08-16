Dado('que eu acesso o site google.com') do
    visit 'http://www.google.com'
  end
  
  Quando('eu inserir a palavra java na barra de pesquisa') do
    find('[name=q]').send_keys("java")
  end
  
  Quando('quando eu clico no botão Pesquisa Google') do
    find('[name=btnK]').click
  end
  
  Então('eu quero ser redirecionado para a página de resultados sobre java') do
    expect(page).to have_content "java"
  end