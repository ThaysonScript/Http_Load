--[[
    Simples script gerador de carga de requisições que simula um usuário real a aplicação
--]]

-- Variáveis Globais
prefix = "http://192.168.1.3:80"
postIndex = {}

-- Função chamada no início de cada ciclo de chamada
function onCycle()
    calls = {
        "",  -- Requisição GET
    }
end

-- Função chamada para cada requisição HTTP até retornar nil
function onCall(callnum)
    if calls[callnum] == nil then
        return nil
    else
        return prefix..calls[callnum]
    end
end

-- Função para verificar se o índice é uma chamada POST
function isPost(index)
    for i = 1,#postIndex do
        if index == postIndex[i] then
            return true
        end
    end
    return false
end
