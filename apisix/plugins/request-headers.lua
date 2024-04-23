local core = require("apisix.core")

local _M = {
    version = 1.0,
    priority = 1002,
    name = 'request-headers',
    schema = {}
}

function _M.access(_, _)
    local headers = core.request.headers()
    for k, v in pairs(headers) do
        core.log.warn('Key-Value pair: ', k, '=', v)
    end
end

return _M
