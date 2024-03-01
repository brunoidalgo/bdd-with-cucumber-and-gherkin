Quando('acesso a págin aprincipal da Starbugs') do
    visit  'https://starbugs.vercel.app/'
    sleep 10
end
  
Então('eu devo visualizar uma lista de cafés disponíveis') do
    puts 'trolei'
end