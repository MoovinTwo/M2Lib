
require("Lib.Packages.packageManager")

M2Lib = {}
M2Lib.__index = M2Lib

function M2Lib:load(packages)

    if type(packages) == "table" then
        for i,v in pairs(packages) do
            if type(v) == "string" then
                packageManager:load(v)
            end
        end
    end

    packageManager:update()

end