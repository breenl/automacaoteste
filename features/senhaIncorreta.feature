#language: pt

Funcionalidade: Pesquisar java no google

    COMO usuario master EU QUERO ser informado quando a senha estiver errada A FIM corrigir a senha ou criar nova.

    Cenário: Pesquisar no google
        Dado que a Senha estão incorretos
        Quando o usuário informar a senha
        Então apresentar a mensagem “CNPJ/CPF/Senha inválidos.”