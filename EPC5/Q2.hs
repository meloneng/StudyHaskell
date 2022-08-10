-- Criando a lista de dados



-- Operações de atualização

tomaEmprestado :: BancodeDados -> Pessoa -> Livro -> BancodeDados
tomaEmprestado dBase pessoa titulo = (pessoa, titulo) : dBase

devolveLivro :: BancodeDados -> Pessoa -> Livro > BancodeDados
devolveLivro ((p, t) : r) f l
    | p == f && t == l = r
    | otherwise = (p, t) : devolveLivro r f l
devolveLivro [] ful tit = error "Nao ha livro emprestado"
