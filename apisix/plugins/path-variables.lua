local core = require("apisix.core")

local _M = {
    version = 1.0,
    priority = 1000,
    name = 'path-variables',
    schema = {}
}

function _M.access(_, ctx)
    core.log.warn('n: ', ctx.curr_req_matched.n, ', offset: ', ctx.curr_req_matched.offset)
end

return _M
