
packageManager = {}
packageManager.__index = mPac

packages = {}

function packageManager:load(package)
    self.packs = packages
    if type(package) == "string" then
        table.insert(self.packs, package)
    end
end

function packageManager:update()
    if self.packs ~= nil then
        for i,v in pairs(self.packs) do
            local package = string.format("Lib.Packages.%s.main", v)
            require(package)
            print("Loaded: ", v)
        end
    end
end