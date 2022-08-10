-- Criando a lista de dados



-- Operações de consulta

livrosEmprestados:: BancodeDados -> Pessoa -> [Livro]
livrosEmprestados [] _ = []
livros ((inquilino, titulo) : resto) fulano
    | inquilino == fulano = titulo : livrosEmprestados resto fulano
    | otherwise = livrosEmprestados resto fulano

-- Informa livros que uma determinada pessoa tomou emprestado
