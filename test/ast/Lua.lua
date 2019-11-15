CHECK''
{
    type   = "main",
    start  = 1,
    finish = 0,
    locals = "<IGNORE>",
}

CHECK';;;'
{
    type   = "main",
    start  = 1,
    finish = 3,
    locals = "<IGNORE>",
}

CHECK';;;x = 1'
{
    type   = "main",
    start  = 1,
    finish = 8,
    locals = "<IGNORE>",
    [1]    = {
        type   = "setglobal",
        start  = 4,
        finish = 4,
        range  = 8,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 8,
            finish = 8,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        [1]    = "x",
    },
}
CHECK'x, y, z = 1, 2, 3'
{
    type   = "main",
    start  = 1,
    finish = 17,
    locals = "<IGNORE>",
    [1]    = {
        type   = "setglobal",
        start  = 1,
        finish = 1,
        range  = 11,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 11,
            finish = 11,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "setglobal",
        start  = 4,
        finish = 4,
        range  = 14,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 14,
            finish = 14,
            parent = "<IGNORE>",
            [1]    = 2,
        },
        [1]    = "y",
    },
    [3]    = {
        type   = "setglobal",
        start  = 7,
        finish = 7,
        range  = 17,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 17,
            finish = 17,
            parent = "<IGNORE>",
            [1]    = 3,
        },
        [1]    = "z",
    },
}
CHECK'local x, y, z'
{
    type   = "main",
    start  = 1,
    finish = 13,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 14,
        parent = "<IGNORE>",
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 14,
        parent = "<IGNORE>",
        [1]    = "y",
    },
    [3]    = {
        type   = "local",
        start  = 13,
        finish = 13,
        effect = 14,
        parent = "<IGNORE>",
        [1]    = "z",
    },
}
CHECK'local x, y, z = 1, 2, 3'
{
    type   = "main",
    start  = 1,
    finish = 23,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 24,
        range  = 17,
        parent = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 17,
            finish = 17,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 24,
        range  = 20,
        parent = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 20,
            finish = 20,
            parent = "<IGNORE>",
            [1]    = 2,
        },
        [1]    = "y",
    },
    [3]    = {
        type   = "local",
        start  = 13,
        finish = 13,
        effect = 24,
        range  = 23,
        parent = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 23,
            finish = 23,
            parent = "<IGNORE>",
            [1]    = 3,
        },
        [1]    = "z",
    },
}
CHECK'local x, y = y, x'
{
    type   = "main",
    start  = 1,
    finish = 17,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 18,
        range  = 14,
        parent = "<IGNORE>",
        value  = {
            type   = "getglobal",
            start  = 14,
            finish = 14,
            parent = "<IGNORE>",
            node   = "<IGNORE>",
            [1]    = "y",
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 18,
        range  = 17,
        parent = "<IGNORE>",
        value  = {
            type   = "getglobal",
            start  = 17,
            finish = 17,
            parent = "<IGNORE>",
            node   = "<IGNORE>",
            [1]    = "x",
        },
        [1]    = "y",
    },
}
CHECK'local x, y = f()'
{
    type   = "main",
    start  = 1,
    finish = 16,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 17,
        range  = 16,
        parent = "<IGNORE>",
        value  = {
            type   = "select",
            start  = 14,
            finish = 16,
            parent = "<IGNORE>",
            vararg = {
                type      = "call",
                start     = 14,
                finish    = 16,
                parent    = "<IGNORE>",
                extParent = {
                    [1] = {
                        type   = "select",
                        start  = 14,
                        finish = 16,
                        parent = "<IGNORE>",
                        vararg = "<LOOP>",
                        index  = 2,
                    },
                },
                node      = "<IGNORE>",
            },
            index  = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 17,
        range  = 16,
        parent = "<IGNORE>",
        value  = {
            type   = "select",
            start  = 14,
            finish = 16,
            parent = "<IGNORE>",
            vararg = {
                type      = "call",
                start     = 14,
                finish    = 16,
                parent    = "<IGNORE>",
                extParent = {
                    [1] = "<LOOP>",
                },
                node      = "<IGNORE>",
            },
            index  = 2,
        },
        [1]    = "y",
    },
}
CHECK'local x, y = (f())'
{
    type   = "main",
    start  = 1,
    finish = 18,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 19,
        range  = 18,
        parent = "<IGNORE>",
        value  = {
            type   = "paren",
            start  = 14,
            finish = 18,
            parent = "<IGNORE>",
            exp    = {
                type   = "call",
                start  = 15,
                finish = 17,
                parent = "<IGNORE>",
                node   = "<IGNORE>",
            },
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 19,
        parent = "<IGNORE>",
        [1]    = "y",
    },
}
CHECK'local x, y = f(), nil'
{
    type   = "main",
    start  = 1,
    finish = 21,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 22,
        range  = 16,
        parent = "<IGNORE>",
        value  = {
            type   = "select",
            start  = 14,
            finish = 16,
            parent = "<IGNORE>",
            vararg = {
                type   = "call",
                start  = 14,
                finish = 16,
                parent = "<IGNORE>",
                node   = "<IGNORE>",
            },
            index  = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 22,
        range  = 21,
        parent = "<IGNORE>",
        value  = {
            type   = "nil",
            start  = 19,
            finish = 21,
            parent = "<IGNORE>",
        },
        [1]    = "y",
    },
}
CHECK'local x, y = ...'
{
    type   = "main",
    start  = 1,
    finish = 16,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 17,
        range  = 16,
        parent = "<IGNORE>",
        value  = {
            type   = "select",
            start  = 14,
            finish = 16,
            parent = "<IGNORE>",
            vararg = {
                type      = "varargs",
                start     = 14,
                finish    = 16,
                parent    = "<IGNORE>",
                extParent = {
                    [1] = {
                        type   = "select",
                        start  = 14,
                        finish = 16,
                        parent = "<IGNORE>",
                        vararg = "<LOOP>",
                        index  = 2,
                    },
                },
            },
            index  = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 17,
        range  = 16,
        parent = "<IGNORE>",
        value  = {
            type   = "select",
            start  = 14,
            finish = 16,
            parent = "<IGNORE>",
            vararg = {
                type      = "varargs",
                start     = 14,
                finish    = 16,
                parent    = "<IGNORE>",
                extParent = {
                    [1] = "<LOOP>",
                },
            },
            index  = 2,
        },
        [1]    = "y",
    },
}
CHECK'local x, y = (...)'
{
    type   = "main",
    start  = 1,
    finish = 18,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 19,
        range  = 18,
        parent = "<IGNORE>",
        value  = {
            type   = "paren",
            start  = 14,
            finish = 18,
            parent = "<IGNORE>",
            exp    = {
                type   = "varargs",
                start  = 15,
                finish = 17,
                parent = "<IGNORE>",
            },
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 19,
        parent = "<IGNORE>",
        [1]    = "y",
    },
}
CHECK'local x, y = ..., nil'
{
    type   = "main",
    start  = 1,
    finish = 21,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 22,
        range  = 16,
        parent = "<IGNORE>",
        value  = {
            type   = "select",
            start  = 14,
            finish = 16,
            parent = "<IGNORE>",
            vararg = {
                type   = "varargs",
                start  = 14,
                finish = 16,
                parent = "<IGNORE>",
            },
            index  = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 22,
        range  = 21,
        parent = "<IGNORE>",
        value  = {
            type   = "nil",
            start  = 19,
            finish = 21,
            parent = "<IGNORE>",
        },
        [1]    = "y",
    },
}
CHECK'local x <const>, y <close> = 1'
{
    type   = "main",
    start  = 1,
    finish = 30,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 31,
        range  = 30,
        parent = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 30,
            finish = 30,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        attrs  = {
            [1] = {
                type   = "localattr",
                start  = 10,
                finish = 14,
                parent = "<IGNORE>",
                [1]    = "const",
            },
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 18,
        finish = 18,
        effect = 31,
        parent = "<IGNORE>",
        attrs  = {
            [1] = {
                type   = "localattr",
                start  = 21,
                finish = 25,
                parent = "<IGNORE>",
                [1]    = "close",
            },
        },
        [1]    = "y",
    },
}
CHECK[[
x = 1
y = 2
]]
{
    type   = "main",
    start  = 1,
    finish = 11,
    locals = "<IGNORE>",
    [1]    = {
        type   = "setglobal",
        start  = 1,
        finish = 1,
        range  = 5,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 5,
            finish = 5,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "setglobal",
        start  = 7,
        finish = 7,
        range  = 11,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 11,
            finish = 11,
            parent = "<IGNORE>",
            [1]    = 2,
        },
        [1]    = "y",
    },
}

CHECK[[
x, y = 1, 2
]]
{
    type   = "main",
    start  = 1,
    finish = 11,
    locals = "<IGNORE>",
    [1]    = {
        type   = "setglobal",
        start  = 1,
        finish = 1,
        range  = 8,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 8,
            finish = 8,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "setglobal",
        start  = 4,
        finish = 4,
        range  = 11,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 11,
            finish = 11,
            parent = "<IGNORE>",
            [1]    = 2,
        },
        [1]    = "y",
    },
}
CHECK[[
local function a()
    return
end]]
{
    type   = "main",
    start  = 1,
    finish = 33,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 16,
        finish = 16,
        effect = 16,
        range  = 33,
        parent = "<IGNORE>",
        value  = {
            type    = "function",
            start   = 1,
            finish  = 33,
            parent  = "<IGNORE>",
            returns = {
                [1] = {
                    type   = "return",
                    start  = 24,
                    finish = 30,
                    parent = "<IGNORE>",
                },
            },
            [1]     = {
                type   = "return",
                start  = 24,
                finish = 30,
                parent = "<IGNORE>",
            },
        },
        [1]    = "a",
    },
}
CHECK[[
local function f()
    return f()
end]]
{
    type   = "main",
    start  = 1,
    finish = 37,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 16,
        finish = 16,
        effect = 16,
        range  = 37,
        parent = "<IGNORE>",
        value  = {
            type    = "function",
            start   = 1,
            finish  = 37,
            parent  = "<IGNORE>",
            returns = {
                [1] = {
                    type   = "return",
                    start  = 24,
                    finish = 33,
                    parent = "<IGNORE>",
                    [1]    = {
                        type   = "call",
                        start  = 31,
                        finish = 33,
                        parent = "<IGNORE>",
                        node   = "<IGNORE>",
                    },
                },
            },
            [1]     = {
                type   = "return",
                start  = 24,
                finish = 33,
                parent = "<IGNORE>",
                [1]    = {
                    type   = "call",
                    start  = 31,
                    finish = 33,
                    parent = "<IGNORE>",
                    node   = "<IGNORE>",
                },
            },
        },
        ref    = "<IGNORE>",
        [1]    = "f",
    },
}
CHECK[[
local function a(b, c)
    return
end]]
{
    type   = "main",
    start  = 1,
    finish = 37,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 16,
        finish = 16,
        effect = 16,
        range  = 37,
        parent = "<IGNORE>",
        value  = {
            type    = "function",
            start   = 1,
            finish  = 37,
            parent  = "<IGNORE>",
            args    = {
                type   = "funcargs",
                start  = 17,
                finish = 22,
                parent = "<IGNORE>",
                [1]    = {
                    type   = "local",
                    start  = 18,
                    finish = 18,
                    effect = 18,
                    parent = "<IGNORE>",
                    [1]    = "b",
                },
                [2]    = {
                    type   = "local",
                    start  = 21,
                    finish = 21,
                    effect = 21,
                    parent = "<IGNORE>",
                    [1]    = "c",
                },
            },
            locals  = "<IGNORE>",
            returns = {
                [1] = {
                    type   = "return",
                    start  = 28,
                    finish = 34,
                    parent = "<IGNORE>",
                },
            },
            [1]     = {
                type   = "return",
                start  = 28,
                finish = 34,
                parent = "<IGNORE>",
            },
        },
        [1]    = "a",
    },
}

CHECK[[
local x, y, z = 1, 2
local function f()
end
y, z = 3, 4
]]
{
    type   = "main",
    start  = 1,
    finish = 55,
    locals = "<IGNORE>",
    [1]    = {
        type   = "local",
        start  = 7,
        finish = 7,
        effect = 21,
        range  = 17,
        parent = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 17,
            finish = 17,
            parent = "<IGNORE>",
            [1]    = 1,
        },
        [1]    = "x",
    },
    [2]    = {
        type   = "local",
        start  = 10,
        finish = 10,
        effect = 21,
        range  = 20,
        parent = "<IGNORE>",
        value  = {
            type   = "number",
            start  = 20,
            finish = 20,
            parent = "<IGNORE>",
            [1]    = 2,
        },
        ref    = "<IGNORE>",
        [1]    = "y",
    },
    [3]    = {
        type   = "local",
        start  = 13,
        finish = 13,
        effect = 21,
        parent = "<IGNORE>",
        ref    = "<IGNORE>",
        [1]    = "z",
    },
    [4]    = {
        type   = "local",
        start  = 37,
        finish = 37,
        effect = 37,
        range  = 43,
        parent = "<IGNORE>",
        value  = {
            type   = "function",
            start  = 22,
            finish = 43,
            parent = "<IGNORE>",
        },
        [1]    = "f",
    },
    [5]    = {
        type   = "setlocal",
        start  = 45,
        finish = 45,
        range  = 52,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        loc    = {
            type   = "local",
            start  = 10,
            finish = 10,
            effect = 21,
            range  = 20,
            parent = "<IGNORE>",
            value  = {
                type   = "number",
                start  = 20,
                finish = 20,
                parent = "<IGNORE>",
                [1]    = 2,
            },
            ref    = "<IGNORE>",
            [1]    = "y",
        },
        value  = {
            type   = "number",
            start  = 52,
            finish = 52,
            parent = "<IGNORE>",
            [1]    = 3,
        },
        [1]    = "y",
    },
    [6]    = {
        type   = "setlocal",
        start  = 48,
        finish = 48,
        range  = 55,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        loc    = {
            type   = "local",
            start  = 13,
            finish = 13,
            effect = 21,
            parent = "<IGNORE>",
            ref    = "<IGNORE>",
            [1]    = "z",
        },
        value  = {
            type   = "number",
            start  = 55,
            finish = 55,
            parent = "<IGNORE>",
            [1]    = 4,
        },
        [1]    = "z",
    },
}
CHECK[[
local f = require
local z = f
z'xxx'
]]
{
    specials = "<IGNORE>",
    type     = "main",
    start    = 1,
    finish   = 36,
    locals   = "<IGNORE>",
    [1]      = {
        type    = "local",
        start   = 7,
        finish  = 7,
        effect  = 18,
        range   = 17,
        special = "require",
        parent  = "<IGNORE>",
        value   = {
            type    = "getglobal",
            start   = 11,
            finish  = 17,
            special = "require",
            parent  = "<IGNORE>",
            node    = "<IGNORE>",
            [1]     = "require",
        },
        ref     = "<IGNORE>",
        [1]     = "f",
    },
    [2]      = {
        type    = "local",
        start   = 25,
        finish  = 25,
        effect  = 30,
        range   = 29,
        special = "require",
        parent  = "<IGNORE>",
        value   = {
            type    = "getlocal",
            start   = 29,
            finish  = 29,
            special = "require",
            parent  = "<IGNORE>",
            node    = "<IGNORE>",
            loc     = {
                type    = "local",
                start   = 7,
                finish  = 7,
                effect  = 18,
                range   = 17,
                special = "require",
                parent  = "<IGNORE>",
                value   = {
                    type    = "getglobal",
                    start   = 11,
                    finish  = 17,
                    special = "require",
                    parent  = "<IGNORE>",
                    node    = "<IGNORE>",
                    [1]     = "require",
                },
                ref     = "<IGNORE>",
                [1]     = "f",
            },
            [1]     = "f",
        },
        ref     = "<IGNORE>",
        [1]     = "z",
    },
    [3]      = {
        type   = "call",
        start  = 31,
        finish = 36,
        parent = "<IGNORE>",
        node   = "<IGNORE>",
        args   = {
            type   = "callargs",
            start  = 32,
            finish = 36,
            parent = "<IGNORE>",
            [1]    = {
                type   = "string",
                start  = 32,
                finish = 36,
                parent = "<IGNORE>",
                [1]    = "xxx",
                [2]    = "'",
            },
        },
    },
}
