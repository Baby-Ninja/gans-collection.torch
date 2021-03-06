-- optimizer

require 'torch'
require '__4_cyclegan.script.optim_updates'
local opts = require '__4_cyclegan.script.opts'


local optimizer = {}
local opt = opts.parse(arg)

-- discriminator optimizer.
optimizer.dis = {
    method = adam,
    config = {
        lr = opt.lr,
        beta1 = 0.5,
        beta2 = 0.997,
        elipson = 1e-8,
    },
    optimstate = {
        doma = {},
        domb = {},
        },
}

-- generator optimizer
optimizer.gen = {
    method = adam,
    config = {
        lr = opt.lr,
        beta1 = 0.5,
        beta2 = 0.997,
        elipson = 1e-8,
    },
    optimstate = {
        domab = {},
        domba = {},
        },
}

return optimizer










