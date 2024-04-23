local core = require("apisix.core")

local _M = {
    version = 1.0,
    priority = 1003,
    name = 'request-body',
    schema = {}
}

function _M.access(_, _)
    local args = core.request.get_post_args()
    local body = next(args, nil)
    core.log.warn('Body: ', body)
end

return _M
