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


--Explorer
local explorer = studiogui:WaitForChild("ExplorerPanel")
explorer.Size = UDim2.new(0.54,-251,0.96, 5)
explorer.Position = UDim2.new(1.02,-210,0,1)

function buttonconsole(con, mainbar, propriedade, console)
        
        local t = mainbar:WaitForChild("console")
        t :Destroy()
        con = Instance.new("TextButton")
        con.Size = UDim2.new(0.045,0.1,0.935, 0)
        con.Position = UDim2.new(0.43, 0,0.04,0)
        con.BackgroundColor3 = Color3.new(9,9,9)
        con.BorderMode = Enum.BorderMode.Middle
        con.Text = "console"
        con.TextSize = 5
        con.Parent = mainbar
        con.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
        con.Name = "console"
        print("Função executada com sucesso")
        --Acessando painel de propriedades
        if resize then
                   local resize = propriedade:WaitForChild("DragToResize")
                   resize:Destroy()
         end
         propriedade.Visible = true
         propriedade.Size = UDim2.new(0.15,70,0.5,1)
         propriedade.Position = UDim2.new(0,0,0.191,0)
         --propriedade.ZIndex = 0
         --text.Visible = false
         --explorer.Visible = true
        con.Activated:Connect(function() 
                 if estado == false then
                        estado = true
                         console.Position = UDim2.new(0,0,0.67,0)
                         propriedade.Size = UDim2.new(0.17,66,0.4,0)
                else
                         estado = false
                         console.Position = UDim2.new(0,0,99999.0,0)
                        propriedade.Size = UDim2.new(0.17,66,0.9,0)
                end
        end)
end

function botaoexplorer(buttonexplorer, findexplorer, explorer, estadoexplorer)
        local e = explorer:WaitForChild("ocultar explorer")
        e:Destroy()
        buttonexplorer = Instance.new("TextButton")
        buttonexplorer.Parent = explorer
        buttonexplorer.Name = "ocultar explorer"
        buttonexplorer.Size = UDim2.new(0.15,0,0.13,0.5)
        buttonexplorer.Position = UDim2.new(-0.15,0,0.2,0)
        buttonexplorer.BackgroundColor3 = Color3.new(9,9,9)
        buttonexplorer.Text = ">"
        buttonexplorer.ZIndex = 0
        buttonexplorer.Activated:Connect(function() 
                if estadoexplorer == true then
                        estadoexplorer = false
                        explorer.Position = UDim2.new(1.255,-210,0,1)
                        buttonexplorer.Text = "<"
                else
                        buttonexplorer.Text = ">"
                        explorer.Position = UDim2.new(1.0,-210,0,1)
                        estadoexplorer = true
                end
         end)
end

function botaopropriedade(buttonpropriedade, findpropriedade)
        local t = propriedade:WaitForChild("propriedade")
        t:Destroy()
        buttonpropriedade = Instance.new("TextButton")
        buttonpropriedade.Size = UDim2.new(0.3,0,0.5,0.5)
        buttonpropriedade.Parent = propriedade
        buttonpropriedade.Name = "propriedade"
        buttonpropriedade.ZIndex = 0
        buttonpropriedade.Size = UDim2.new(0.15,0.5,0.3, 0)
        buttonpropriedade.Position = UDim2.new(1, 0,0.04,0)
        buttonpropriedade.BorderMode = Enum.BorderMode.Middle
        buttonpropriedade.BorderColor3 =  Color3.new(0.2,0.2,0.2)
        buttonpropriedade.BackgroundColor3 = Color3.new(9,9,9)
        buttonpropriedade.Text = "<"
        buttonpropriedade.Activated:Connect(function() 
                if estadopropriedade == true then
                         estadopropriedade = false
                        propriedade.Position = UDim2.new(-0.25,0,0.191,0)
                        buttonpropriedade.Text = ">"
                else
                         propriedade.Position = UDim2.new(0,0,0.191,0)
                         estadopropriedade = true
                         buttonpropriedade.Text = "<"
                end
        end)
end


if findbotao and findpropriedade and findexplorer then
        buttonconsole(con, mainbar, propriedade, console)
        botaopropriedade(buttonpropriedade, findpropriedade)
        botaoexplorer(buttonexplorer, findexplorer, explorer, estadoexplorer)
        print("três botões encontrado")
else
        buttonexplorer = Instance.new("TextButton")
        buttonexplorer.Parent = explorer
        buttonexplorer.Name = "ocultar explorer"
        botaoexplorer(buttonexplorer, findexplorer, explorer)
        buttonpropriedade = Instance.new("TextButton")
        buttonpropriedade.Parent = propriedade
        buttonpropriedade.Name = "propriedade"
        botaopropriedade(buttonpropriedade, findpropriedade)
        con = Instance.new("TextButton")
        con.Size = UDim2.new(0.2,1,0.96, 0)
        con.Parent = mainbar
        con.Name = "console"
        buttonconsole(con, mainbar,  propriedade, console)
        print("else executado")
end


print("ola")
