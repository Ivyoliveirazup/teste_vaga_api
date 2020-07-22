Quando('realizar a requisição informando o {string}') do |type|
  if (type == 'movie')
    $type = $search_type_movie
  elsif (type == 'series')
    $type = $search_type_serie
  elsif (type == 'episode')
    $type = $search_type_episode
  else
    (type == 'game')
    $type = $search_type_game
  end

  @post = @paramiter.search_paramiter_type
end

Quando('realizar a requisição informando o ano {float}') do |y|
  if (y == 1962)
    $y = $search_y_1962
  elsif (y == 1971)
    $y = $search_y_1971
  elsif (y == 1978)
    $y = $search_y_1978
  elsif(y == 2000)
    $y = $search_y_2000
  elsif(y == 2007)
    $y = $search_y_2007
  elsif(y == 2010)
    $y = $search_y_2010
  else(y == 2013)
  $y = $search_y_2013
  end

  @post = @paramiter.search_paramiter_type
end

Quando('realizar a requisição informando qual a página {float}') do |page|
  if (page == 1)
    $page = $search_page_1
  elsif (page == 5)
    $page = $search_page_5
  elsif (page == 50)
    $page = $search_page_50
  else (page == 0)
  $page = $search_page_0
  end

  @post = @paramiter.search_paramiter_type
end

Quando('realizar a requisição informando qual a página {string}') do |callback|
  if (callback == "mymovies")
    $callback = $search_callback_mymovies
  elsif (callback == "teletunes")
    $callback = $search_callback_teletunes
  end

  @post = @paramiter.search_paramiter_type
end

Quando('realizar a requisição informando e o numero da api {float}') do |v|
  if (v == 1)
    $v = $search_v_1
  elsif (v == 5)
    $v = $search_v_5
  end

  @post = @paramiter.search_paramiter_type
end

Quando('realizar a requisição informando e o numero do dado {float}') do |r|
  if (r == 1)
    $r = $search_r_1
  elsif (r == 100)
    $r = $search_r_100
  end
  @post = @paramiter.search_paramiter_type
end

Então('o sistema retorna o código {float}') do |retorno|
  expect(@post.code).to eq(retorno)
  @sucesso = JSON.parse(@post.body)
  @mensagem = JSON.pretty_generate(@sucesso)
  @codigo = @post.code
  log "\n\nRetorno do serviço foi: #{@codigo}"
  log "O retorno de requisição foi: #{@mensagem}\n"
end
