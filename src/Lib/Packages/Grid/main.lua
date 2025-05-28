

gridClass = {}
gridClass.__index = gridC

packageInfo = {"Pixel Grid", "0.1", "Moovintwo"}


function gridClass:init(width, height)
    --- The Width and Height Parameter are used for the amount of rows and columns
    self.packageInfo = packageInfo
    self.width = width
    self.height = height
    self.grid = {}

    for i = 1,self.width do
        self.grid[i] = {}
        for j = 1,self.height do
            self.grid[i][j] = {""}
        end
    end

    return(self.grid)

end

function gridClass:draw()

    for i = 1,self.width do
        for j = 1,self.height do
            local curCell = self.cells[i][j]
            if curCell[1] == "active" then
                gfx.rectangle(curCell[2], self.width*(i-1), self.height*(j-1), self.width, self.height)
            end
        end
    end

end