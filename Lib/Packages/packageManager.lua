

packageManager = {}
packageManager.__index = mPac

packages = {}

function packageManager:load(package)
    self.packs = packages
    if type(package) == "string" then
        table.insert(self.packs, string.format("Lib.Packages.%s", package))
        print()

    end
end

function packageManager:update()
    if self.packs ~= nil then
        for i,v in pairs(self.packs) do
            local info = require(string.format("%s.info", v))
            require(string.format("%s.%s", v, info["mainScript"]))

            infoStr = string.format(" Loaded %s \n At %s \n Version %s \n By %s \n Source %s", info["name"],v,info["version"],info["author"],info["source"])

            print(infoStr)
        end
    end
end