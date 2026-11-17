--Funcao para criar um novo botão chamado "Console" onde oculta e mostra o console, também apaga o botão antigo do console e recria caso ele execute o código duas vezes, lá em baixo temos um if que chega se a variavel "botão" encontrou um elemento "TextButton" aninhado dentro de frame "MainBar", caso seja verdadeiro, apagar e recriar novamente

--Pega informações do jogador
local player = game:GetService("Players").LocalPlayer
local startergui = game:GetService("StarterGui")
local playergui = player:WaitForChild("PlayerGui")

--StudioGui, painel onde possui todas as interface
local studiogui = playergui:WaitForChild("StudioGui")
local mainbar = studiogui:WaitForChild("MainBar")
local explorer = studiogui:WaitForChild("ExplorerPanel")
local console = studiogui:WaitForChild("OutputFrame")
local propriedade = studiogui:WaitForChild("PropertiesPanel")
local findbotao = mainbar:FindFirstChild("console")
local findpropriedade = propriedade:FindFirstChild("propriedade")
local findexplorer = explorer:FindFirstChild("ocultar explorer")
print(findpropriedade)
local estado = false
local estadopropriedade = true
local estadoexplorer = true
local con
local buttonpropriedade 
local buttonexplorer
--buttonpropriedade.Name = "propriedade

