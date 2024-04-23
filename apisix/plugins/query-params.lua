local core = require("apisix.core")

local _M = {
    version = 1.0,
    priority = 1001,
    name = 'query-params',
    schema = {}
}

function _M.get_uri_args(ctx)
    if not ctx then
        ctx = ngx.ctx.api_ctx
    end
    if not ctx.req_uri_args then
        local args, _ = ngx.req.get_uri_args(0)
        ctx.req_uri_args = args
    end
    return ctx.req_uri_args
end

function _M.access(_, ctx)
    for k, v in pairs(ctx.req_uri_args) do
        core.log.warn('Key-Value pair: ', k, '=', v)
    end
end

return _M
