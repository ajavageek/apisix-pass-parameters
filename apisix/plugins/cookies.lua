local core = require("apisix.core")

local _M = {
    version = 1.0,
    priority = 1004,
    name = 'cookies',
    schema = {}
}

function _M.access(_, ctx)
    local foo = ctx.var.cookie_foo
    core.log.warn('Cookie value: ', foo)
end

return _M
