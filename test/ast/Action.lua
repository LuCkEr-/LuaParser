CHECK'x = 1'
{
    [1] = {
        type   = "name",
        start  = 1,
        finish = 1,
        [1]    = "x",
    },
    [2] = {
        type   = "setname",
        start  = 1,
        finish = 1,
        name   = 1,
        value  = 3,
    },
    [3] = {
        type   = "number",
        start  = 5,
        finish = 5,
        [1]    = 1,
    },
}
CHECK'x, y, z = 1, 2, 3'
{
    [1] = {
        type   = "name",
        start  = 1,
        finish = 1,
        [1]    = "x",
    },
    [2] = {
        type   = "setname",
        start  = 1,
        finish = 1,
        name   = 1,
        value  = 7,
    },
    [3] = {
        type   = "name",
        start  = 4,
        finish = 4,
        [1]    = "y",
    },
    [4] = {
        type   = "setname",
        start  = 4,
        finish = 4,
        name   = 3,
        value  = 8,
    },
    [5] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "z",
    },
    [6] = {
        type   = "setname",
        start  = 7,
        finish = 7,
        name   = 5,
        value  = 9,
    },
    [7] = {
        type   = "number",
        start  = 11,
        finish = 11,
        [1]    = 1,
    },
    [8] = {
        type   = "number",
        start  = 14,
        finish = 14,
        [1]    = 2,
    },
    [9] = {
        type   = "number",
        start  = 17,
        finish = 17,
        [1]    = 3,
    },
}
CHECK'local x'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
    },
}
CHECK'local x, y, z'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [3] = {
        type   = "name",
        start  = 13,
        finish = 13,
        [1]    = "z",
    },
    [4] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
    },
    [5] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
    },
    [6] = {
        type   = "local",
        start  = 13,
        finish = 13,
        loc    = 3,
    },
}
CHECK'local x = 1'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "number",
        start  = 11,
        finish = 11,
        [1]    = 1,
    },
    [3] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 2,
    },
}
CHECK'local x, y, z = 1, 2, 3'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [3] = {
        type   = "name",
        start  = 13,
        finish = 13,
        [1]    = "z",
    },
    [4] = {
        type   = "number",
        start  = 17,
        finish = 17,
        [1]    = 1,
    },
    [5] = {
        type   = "number",
        start  = 20,
        finish = 20,
        [1]    = 2,
    },
    [6] = {
        type   = "number",
        start  = 23,
        finish = 23,
        [1]    = 3,
    },
    [7] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 4,
    },
    [8] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
        value  = 5,
    },
    [9] = {
        type   = "local",
        start  = 13,
        finish = 13,
        loc    = 3,
        value  = 6,
    },
}
CHECK'local x, y = f()'
{
    [01] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [02] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [03] = {
        type   = "name",
        start  = 14,
        finish = 14,
        [1]    = "f",
    },
    [04] = {
        type   = "getname",
        start  = 14,
        finish = 14,
        name   = 3,
    },
    [05] = {
        type   = "callargs",
        start  = 15,
        finish = 16,
    },
    [06] = {
        type   = "call",
        start  = 14,
        finish = 16,
        parent = 4,
        args   = 5,
    },
    [07] = {
        type   = "select",
        vararg = 6,
        index  = 1,
    },
    [08] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 7,
    },
    [09] = {
        type   = "select",
        vararg = 6,
        index  = 2,
    },
    [10] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
        value  = 9,
    },
}
CHECK'local x, y = (f())'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [3] = {
        type   = "name",
        start  = 15,
        finish = 15,
        [1]    = "f",
    },
    [4] = {
        type   = "getname",
        start  = 15,
        finish = 15,
        name   = 3,
    },
    [5] = {
        type   = "callargs",
        start  = 16,
        finish = 17,
    },
    [6] = {
        type   = "call",
        start  = 15,
        finish = 17,
        parent = 4,
        args   = 5,
    },
    [7] = {
        type   = "paren",
        start  = 14,
        finish = 18,
        exp    = 6,
    },
    [8] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 7,
    },
    [9] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
    },
}
CHECK'local x, y = f(), nil'
{
    [01] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [02] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [03] = {
        type   = "name",
        start  = 14,
        finish = 14,
        [1]    = "f",
    },
    [04] = {
        type   = "getname",
        start  = 14,
        finish = 14,
        name   = 3,
    },
    [05] = {
        type   = "callargs",
        start  = 15,
        finish = 16,
    },
    [06] = {
        type   = "call",
        start  = 14,
        finish = 16,
        parent = 4,
        args   = 5,
    },
    [07] = {
        type   = "nil",
        start  = 19,
        finish = 21,
    },
    [08] = {
        type   = "select",
        vararg = 6,
        index  = 1,
    },
    [09] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 8,
    },
    [10] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
        value  = 7,
    },
}
CHECK'local x, y = ...'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [3] = {
        type   = "...",
        start  = 14,
        finish = 16,
    },
    [4] = {
        type   = "select",
        vararg = 3,
        index  = 1,
    },
    [5] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 4,
    },
    [6] = {
        type   = "select",
        vararg = 3,
        index  = 2,
    },
    [7] = {
        value  = 6,
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
    },
}
CHECK'local x, y = (...)'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [3] = {
        type   = "...",
        start  = 15,
        finish = 17,
    },
    [4] = {
        type   = "paren",
        start  = 14,
        finish = 18,
        exp    = 3,
    },
    [5] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 4,
    },
    [6] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
    },
}
CHECK'local x, y = ..., nil'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "y",
    },
    [3] = {
        type   = "...",
        start  = 14,
        finish = 16,
    },
    [4] = {
        type   = "nil",
        start  = 19,
        finish = 21,
    },
    [5] = {
        type   = "select",
        vararg = 3,
        index  = 1,
    },
    [6] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 5,
    },
    [7] = {
        type   = "local",
        start  = 10,
        finish = 10,
        loc    = 2,
        value  = 4,
    },
}
CHECK'local x <close> <const> = 1'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "localattr",
        start  = 10,
        finish = 14,
        [1]    = "close",
    },
    [3] = {
        type   = "localattr",
        start  = 18,
        finish = 22,
        [1]    = "const",
    },
    [4] = {
        type   = "number",
        start  = 27,
        finish = 27,
        [1]    = 1,
    },
    [5] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 4,
        attrs  = {
            [1] = 2,
            [2] = 3,
        },
    },
}
CHECK'local x < const > = 1'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "localattr",
        start  = 11,
        finish = 15,
        [1]    = "const",
    },
    [3] = {
        type   = "number",
        start  = 21,
        finish = 21,
        [1]    = 1,
    },
    [4] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 3,
        attrs  = {
            [1] = 2,
        },
    },
}
CHECK'local x <const>, y <close> = 1'
{
    [1] = {
        type   = "name",
        start  = 7,
        finish = 7,
        [1]    = "x",
    },
    [2] = {
        type   = "localattr",
        start  = 10,
        finish = 14,
        [1]    = "const",
    },
    [3] = {
        type   = "name",
        start  = 18,
        finish = 18,
        [1]    = "y",
    },
    [4] = {
        type   = "localattr",
        start  = 21,
        finish = 25,
        [1]    = "close",
    },
    [5] = {
        type   = "number",
        start  = 30,
        finish = 30,
        [1]    = 1,
    },
    [6] = {
        type   = "local",
        start  = 7,
        finish = 7,
        loc    = 1,
        value  = 5,
        attrs  = {
            [1] = 2,
        },
    },
    [7] = {
        type   = "local",
        start  = 18,
        finish = 18,
        loc    = 3,
        attrs  = {
            [1] = 4,
        },
    },
}
CHECK'x = function () end'
{
    [1] = {
        type   = "name",
        start  = 1,
        finish = 1,
        [1]    = "x",
    },
    [2] = {
        type   = "setname",
        start  = 1,
        finish = 1,
        name   = 1,
        value  = 4,
    },
    [3] = {
        type   = "funcargs",
        start  = 14,
        finish = 15,
    },
    [4] = {
        type   = "function",
        start  = 5,
        finish = 19,
        args   = 3,
    },
}
CHECK'x.y = function () end'
{
    [1] = {
        type   = "name",
        start  = 1,
        finish = 1,
        [1]    = "x",
    },
    [2] = {
        type   = "getname",
        start  = 1,
        finish = 1,
        name   = 1,
    },
    [3] = {
        type   = ".",
        start  = 2,
        finish = 2,
    },
    [4] = {
        type   = "name",
        start  = 3,
        finish = 3,
        [1]    = "y",
    },
    [5] = {
        type   = "setfield",
        start  = 1,
        finish = 3,
        parent = 2,
        dot    = 3,
        field  = 4,
        value  = 7,
    },
    [6] = {
        type   = "funcargs",
        start  = 16,
        finish = 17,
    },
    [7] = {
        type   = "function",
        start  = 7,
        finish = 21,
        args   = 6,
    },
}
CHECK'func.x(1, 2)'
{
    [01] = {
        type   = "name",
        start  = 1,
        finish = 4,
        [1]    = "func",
    },
    [02] = {
        type   = "getname",
        start  = 1,
        finish = 4,
        name   = 1,
    },
    [03] = {
        type   = ".",
        start  = 5,
        finish = 5,
    },
    [04] = {
        type   = "name",
        start  = 6,
        finish = 6,
        [1]    = "x",
    },
    [05] = {
        type   = "getfield",
        start  = 1,
        finish = 6,
        parent = 2,
        dot    = 3,
        field  = 4,
    },
    [06] = {
        type   = "number",
        start  = 8,
        finish = 8,
        [1]    = 1,
    },
    [07] = {
        type   = ",",
        start  = 9,
        finish = 9,
    },
    [08] = {
        type   = "number",
        start  = 11,
        finish = 11,
        [1]    = 2,
    },
    [09] = {
        type   = "callargs",
        start  = 7,
        finish = 12,
        [1]    = 6,
        [2]    = 8,
    },
    [10] = {
        type   = "call",
        start  = 1,
        finish = 12,
        parent = 5,
        args   = 9,
    },
}
CHECK'func:x(1, 2)'
{
    [01] = {
        type   = "name",
        start  = 1,
        finish = 4,
        [1]    = "func",
    },
    [02] = {
        type   = "getname",
        start  = 1,
        finish = 4,
        name   = 1,
    },
    [03] = {
        type   = ":",
        start  = 5,
        finish = 5,
    },
    [04] = {
        type   = "name",
        start  = 6,
        finish = 6,
        [1]    = "x",
    },
    [05] = {
        type   = "getmethod",
        start  = 1,
        finish = 6,
        parent = 2,
        colon  = 3,
        method = 4,
    },
    [06] = {
        type   = "number",
        start  = 8,
        finish = 8,
        [1]    = 1,
    },
    [07] = {
        type   = ",",
        start  = 9,
        finish = 9,
    },
    [08] = {
        type   = "number",
        start  = 11,
        finish = 11,
        [1]    = 2,
    },
    [09] = {
        type   = "callargs",
        start  = 7,
        finish = 12,
        [1]    = 6,
        [2]    = 8,
    },
    [10] = {
        type   = "call",
        start  = 1,
        finish = 12,
        parent = 5,
        args   = 9,
    },
}
CHECK'("%s"):format(1)'
{
    [1] = {
        type   = "string",
        start  = 2,
        finish = 5,
        [2]    = "\"",
        [1]    = "%s",
    },
    [2] = {
        type   = "paren",
        start  = 1,
        finish = 6,
        exp    = 1,
    },
    [3] = {
        type   = ":",
        start  = 7,
        finish = 7,
    },
    [4] = {
        type   = "name",
        start  = 8,
        finish = 13,
        [1]    = "format",
    },
    [5] = {
        type   = "getmethod",
        start  = 1,
        finish = 13,
        parent = 2,
        colon  = 3,
        method = 4,
    },
    [6] = {
        type   = "number",
        start  = 15,
        finish = 15,
        [1]    = 1,
    },
    [7] = {
        type   = "callargs",
        start  = 14,
        finish = 16,
        [1]    = 6,
    },
    [8] = {
        type   = "call",
        start  = 1,
        finish = 16,
        parent = 5,
        args   = 7,
    },
}
CHECK'do end'
{
    [1] = {
        type   = "do",
        start  = 1,
        finish = 6,
    },
}
CHECK'do x = 1 end'
{
    [1] = {
        type   = "name",
        start  = 4,
        finish = 4,
        [1]    = "x",
    },
    [2] = {
        type   = "setname",
        start  = 4,
        finish = 4,
        name   = 1,
        value  = 3,
    },
    [3] = {
        type   = "number",
        start  = 8,
        finish = 8,
        [1]    = 1,
    },
    [4] = {
        type   = "do",
        start  = 1,
        finish = 12,
        [1]    = 2,
    },
}
CHECK'return'
{
    [1] = {
        type   = "return",
        start  = 1,
        finish = 6,
    },
}
CHECK'return 1'
{
    [1] = {
        type   = "number",
        start  = 8,
        finish = 8,
        [1]    = 1,
    },
    [2] = {
        type   = "return",
        start  = 1,
        finish = 8,
        [1]    = 1,
    },
}
CHECK'return 1, 2'
{
    [1] = {
        type   = "number",
        start  = 8,
        finish = 8,
        [1]    = 1,
    },
    [2] = {
        type   = "number",
        start  = 11,
        finish = 11,
        [1]    = 2,
    },
    [3] = {
        type   = "return",
        start  = 1,
        finish = 11,
        [1]    = 1,
        [2]    = 2,
    },
}
CHECK'::CONTINUE::'
{
    [1] = {
        type   = "label",
        start  = 3,
        finish = 10,
        [1]    = "CONTINUE",
    },
}
CHECK'goto CONTINUE'
{
    [1] = {
        type   = 'goto',
        start  = 6,
        finish = 13,
        [1]    = 'CONTINUE',
    }
}
CHECK[[if 1 then
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = 'ifblock',
        start  = 1,
        finish = 9,
        filter = 1,
    },
    [3] = {
        type   = "if",
        start  = 1,
        finish = 13,
        [1]    = 2,
    },
}
CHECK[[if 1 then
    return
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "return",
        start  = 15,
        finish = 21,
    },
    [3] = {
        type   = 'ifblock',
        start  = 1,
        finish = 21,
        filter = 1,
        [1]    = 2,
    },
    [4] = {
        type   = "if",
        start  = 1,
        finish = 24,
        [1]    = 3,
    },
}
CHECK[[if 1 then
    return
else
    return
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "return",
        start  = 15,
        finish = 21,
    },
    [3] = {
        type   = "ifblock",
        start  = 1,
        finish = 21,
        filter = 1,
        [1]    = 2,
    },
    [4] = {
        type   = "return",
        start  = 31,
        finish = 37,
    },
    [5] = {
        type   = "elseblock",
        start  = 22,
        finish = 37,
        [1]    = 4,
    },
    [6] = {
        type   = "if",
        start  = 1,
        finish = 40,
        [1]    = 3,
        [2]    = 5,
    },
}
CHECK[[if 1 then
    return
elseif 1 then
    return
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "return",
        start  = 15,
        finish = 21,
    },
    [3] = {
        type   = "ifblock",
        start  = 1,
        finish = 21,
        filter = 1,
        [1]    = 2,
    },
    [4] = {
        type   = "number",
        start  = 29,
        finish = 29,
        [1]    = 1,
    },
    [5] = {
        type   = "return",
        start  = 40,
        finish = 46,
    },
    [6] = {
        type   = "elseifblock",
        start  = 22,
        finish = 46,
        filter = 4,
        [1]    = 5,
    },
    [7] = {
        type   = "if",
        start  = 1,
        finish = 49,
        [1]    = 3,
        [2]    = 6,
    },
}
CHECK[[if 1 then
    return
elseif 1 then
    return
else
    return
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "return",
        start  = 15,
        finish = 21,
    },
    [3] = {
        type   = "ifblock",
        start  = 1,
        finish = 21,
        filter = 1,
        [1]    = 2,
    },
    [4] = {
        type   = "number",
        start  = 29,
        finish = 29,
        [1]    = 1,
    },
    [5] = {
        type   = "return",
        start  = 40,
        finish = 46,
    },
    [6] = {
        type   = "elseifblock",
        start  = 22,
        finish = 46,
        filter = 4,
        [1]    = 5,
    },
    [7] = {
        type   = "return",
        start  = 56,
        finish = 62,
    },
    [8] = {
        type   = "elseblock",
        start  = 47,
        finish = 62,
        [1]    = 7,
    },
    [9] = {
        type   = "if",
        start  = 1,
        finish = 65,
        [1]    = 3,
        [2]    = 6,
        [3]    = 8,
    },
}
CHECK[[
if 1 then
elseif 1 then
elseif 1 then
elseif 1 then
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "ifblock",
        start  = 1,
        finish = 9,
        filter = 1,
    },
    [3] = {
        type   = "number",
        start  = 18,
        finish = 18,
        [1]    = 1,
    },
    [4] = {
        type   = "elseifblock",
        start  = 11,
        finish = 23,
        filter = 3,
    },
    [5] = {
        type   = "number",
        start  = 32,
        finish = 32,
        [1]    = 1,
    },
    [6] = {
        type   = "elseifblock",
        start  = 25,
        finish = 37,
        filter = 5,
    },
    [7] = {
        type   = "number",
        start  = 46,
        finish = 46,
        [1]    = 1,
    },
    [8] = {
        type   = "elseifblock",
        start  = 39,
        finish = 51,
        filter = 7,
    },
    [9] = {
        type   = "if",
        start  = 1,
        finish = 55,
        [1]    = 2,
        [2]    = 4,
        [3]    = 6,
        [4]    = 8,
    },
}
CHECK[[
if 1 then
    if 2 then
    end
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "number",
        start  = 18,
        finish = 18,
        [1]    = 2,
    },
    [3] = {
        type   = "ifblock",
        start  = 15,
        finish = 23,
        filter = 2,
    },
    [4] = {
        type   = "if",
        start  = 15,
        finish = 31,
        [1]    = 3,
    },
    [5] = {
        type   = "ifblock",
        start  = 1,
        finish = 31,
        filter = 1,
        [1]    = 4,
    },
    [6] = {
        type   = "if",
        start  = 1,
        finish = 35,
        [1]    = 5,
    },
}
CHECK[[
if 1 then
elseif 1 then
else
end]]
{
    [1] = {
        type   = "number",
        start  = 4,
        finish = 4,
        [1]    = 1,
    },
    [2] = {
        type   = "ifblock",
        start  = 1,
        finish = 9,
        filter = 1,
    },
    [3] = {
        type   = "number",
        start  = 18,
        finish = 18,
        [1]    = 1,
    },
    [4] = {
        type   = "elseifblock",
        start  = 11,
        finish = 23,
        filter = 3,
    },
    [5] = {
        type   = "elseblock",
        start  = 25,
        finish = 28,
    },
    [6] = {
        type   = "if",
        start  = 1,
        finish = 32,
        [1]    = 2,
        [2]    = 4,
        [3]    = 5,
    },
}
CHECK[[
for i = 1, 10 do
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 5,
        finish = 5,
        [1]    = "i",
    },
    [2] = {
        type   = "number",
        start  = 9,
        finish = 9,
        [1]    = 1,
    },
    [3] = {
        type   = ",",
        start  = 10,
        finish = 10,
    },
    [4] = {
        type   = "number",
        start  = 12,
        finish = 13,
        [1]    = 10,
    },
    [5] = {
        type   = "return",
        start  = 22,
        finish = 28,
    },
    [6] = {
        type   = "local",
        start  = 5,
        finish = 5,
        loc    = 1,
        value  = 2,
    },
    [7] = {
        type   = "loop",
        start  = 1,
        finish = 31,
        loc    = 6,
        max    = 4,
        [1]    = 5,
    },
}
CHECK[[
for i = 1, 10, 1 do
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 5,
        finish = 5,
        [1]    = "i",
    },
    [2] = {
        type   = "number",
        start  = 9,
        finish = 9,
        [1]    = 1,
    },
    [3] = {
        type   = ",",
        start  = 10,
        finish = 10,
    },
    [4] = {
        type   = "number",
        start  = 12,
        finish = 13,
        [1]    = 10,
    },
    [5] = {
        type   = ",",
        start  = 14,
        finish = 14,
    },
    [6] = {
        type   = "number",
        start  = 16,
        finish = 16,
        [1]    = 1,
    },
    [7] = {
        type   = "return",
        start  = 25,
        finish = 31,
    },
    [8] = {
        type   = "local",
        start  = 5,
        finish = 5,
        loc    = 1,
        value  = 2,
    },
    [9] = {
        type   = "loop",
        start  = 1,
        finish = 34,
        loc    = 8,
        max    = 4,
        step   = 6,
        [1]    = 7,
    },
}
CHECK[[
for a in a do
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 5,
        finish = 5,
        [1]    = "a",
    },
    [2] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "a",
    },
    [3] = {
        type   = "getname",
        start  = 10,
        finish = 10,
        name   = 2,
    },
    [4] = {
        type   = "return",
        start  = 19,
        finish = 25,
    },
    [5] = {
        type   = "callargs",
        start  = 0,
        finish = 0,
    },
    [6] = {
        type   = "call",
        start  = 0,
        finish = 0,
        parent = 3,
        args   = 5,
    },
    [7] = {
        type   = "select",
        vararg = 6,
        index  = 1,
    },
    [8] = {
        type   = "local",
        start  = 5,
        finish = 5,
        loc    = 1,
        value  = 7,
    },
    [9] = {
        type   = "in",
        start  = 1,
        finish = 28,
        locs   = {
            [1] = 8,
        },
        [1]    = 4,
    },
}
CHECK[[
for a, b, c in a, b, c do
    return
end]]
{
    [01] = {
        type   = "name",
        start  = 5,
        finish = 5,
        [1]    = "a",
    },
    [02] = {
        type   = ",",
        start  = 6,
        finish = 6,
    },
    [03] = {
        type   = "name",
        start  = 8,
        finish = 8,
        [1]    = "b",
    },
    [04] = {
        type   = ",",
        start  = 9,
        finish = 9,
    },
    [05] = {
        type   = "name",
        start  = 11,
        finish = 11,
        [1]    = "c",
    },
    [06] = {
        type   = "name",
        start  = 16,
        finish = 16,
        [1]    = "a",
    },
    [07] = {
        type   = "getname",
        start  = 16,
        finish = 16,
        name   = 6,
    },
    [08] = {
        type   = ",",
        start  = 17,
        finish = 17,
    },
    [09] = {
        type   = "name",
        start  = 19,
        finish = 19,
        [1]    = "b",
    },
    [10] = {
        type   = "getname",
        start  = 19,
        finish = 19,
        name   = 9,
    },
    [11] = {
        type   = ",",
        start  = 20,
        finish = 20,
    },
    [12] = {
        type   = "name",
        start  = 22,
        finish = 22,
        [1]    = "c",
    },
    [13] = {
        type   = "getname",
        start  = 22,
        finish = 22,
        name   = 12,
    },
    [14] = {
        type   = "return",
        start  = 31,
        finish = 37,
    },
    [15] = {
        type   = "callargs",
        start  = 16,
        finish = 19,
        [1]    = 7,
        [2]    = 10,
    },
    [16] = {
        type   = "call",
        start  = 16,
        finish = 19,
        parent = 13,
        args   = 15,
    },
    [17] = {
        type   = "select",
        vararg = 16,
        index  = 1,
    },
    [18] = {
        type   = "local",
        start  = 5,
        finish = 5,
        loc    = 1,
        value  = 17,
    },
    [19] = {
        type   = "select",
        vararg = 16,
        index  = 2,
    },
    [20] = {
        type   = "local",
        start  = 8,
        finish = 8,
        loc    = 3,
        value  = 19,
    },
    [21] = {
        type   = "select",
        vararg = 16,
        index  = 3,
    },
    [22] = {
        type   = "local",
        start  = 11,
        finish = 11,
        loc    = 5,
        value  = 21,
    },
    [23] = {
        type   = "in",
        start  = 1,
        finish = 40,
        locs   = {
            [1] = 18,
            [2] = 20,
            [3] = 22,
        },
        [1]    = 14,
    },
}
CHECK[[
while true do
    return
end]]
{
    [1] = {
        type   = "boolean",
        start  = 7,
        finish = 10,
        [1]    = true,
    },
    [2] = {
        type   = "return",
        start  = 19,
        finish = 25,
    },
    [3] = {
        type   = "while",
        start  = 1,
        finish = 28,
        filter = 1,
        [1]    = 2,
    },
}
CHECK[[
repeat
    break
until 1]]
{
    [1] = {
        type   = "break",
        start  = 12,
        finish = 17,
    },
    [2] = {
        type   = "number",
        start  = 24,
        finish = 24,
        [1]    = 1,
    },
    [3] = {
        type   = "repeat",
        start  = 1,
        finish = 25,
        filter = 2,
        [1]    = 1,
    },
}
CHECK[[
function test()
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 10,
        finish = 13,
        [1]    = "test",
    },
    [2] = {
        type   = "setname",
        start  = 10,
        finish = 13,
        name   = 1,
        value  = 5,
    },
    [3] = {
        type   = "funcargs",
        start  = 14,
        finish = 15,
    },
    [4] = {
        type   = "return",
        start  = 21,
        finish = 27,
    },
    [5] = {
        type   = "function",
        start  = 1,
        finish = 30,
        args   = 3,
        [1]    = 4,
    },
}
CHECK[[
function test(a)
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 10,
        finish = 13,
        [1]    = "test",
    },
    [2] = {
        type   = "setname",
        start  = 10,
        finish = 13,
        name   = 1,
        value  = 6,
    },
    [3] = {
        type   = "name",
        start  = 15,
        finish = 15,
        [1]    = "a",
    },
    [4] = {
        type   = "funcargs",
        start  = 14,
        finish = 16,
        [1]    = 3,
    },
    [5] = {
        type   = "return",
        start  = 22,
        finish = 28,
    },
    [6] = {
        type   = "function",
        start  = 1,
        finish = 31,
        args   = 4,
        [1]    = 5,
    },
}
CHECK[[
function a.b:c(a, b, c)
    return
end]]
{
    [01] = {
        type   = "name",
        start  = 10,
        finish = 10,
        [1]    = "a",
    },
    [02] = {
        type   = "getname",
        start  = 10,
        finish = 10,
        name   = 1,
    },
    [03] = {
        type   = ".",
        start  = 11,
        finish = 11,
    },
    [04] = {
        type   = "name",
        start  = 12,
        finish = 12,
        [1]    = "b",
    },
    [05] = {
        type   = "getfield",
        start  = 10,
        finish = 12,
        parent = 2,
        dot    = 3,
        field  = 4,
    },
    [06] = {
        type   = ":",
        start  = 13,
        finish = 13,
    },
    [07] = {
        type   = "name",
        start  = 14,
        finish = 14,
        [1]    = "c",
    },
    [08] = {
        type   = "setmethod",
        start  = 10,
        finish = 14,
        parent = 5,
        colon  = 6,
        method = 7,
        value  = 16,
    },
    [09] = {
        type   = "name",
        start  = 16,
        finish = 16,
        [1]    = "a",
    },
    [10] = {
        type   = ",",
        start  = 17,
        finish = 17,
    },
    [11] = {
        type   = "name",
        start  = 19,
        finish = 19,
        [1]    = "b",
    },
    [12] = {
        type   = ",",
        start  = 20,
        finish = 20,
    },
    [13] = {
        type   = "name",
        start  = 22,
        finish = 22,
        [1]    = "c",
    },
    [14] = {
        type   = "funcargs",
        start  = 15,
        finish = 23,
        [1]    = 9,
        [2]    = 11,
        [3]    = 13,
    },
    [15] = {
        type   = "return",
        start  = 29,
        finish = 35,
    },
    [16] = {
        type   = "function",
        start  = 1,
        finish = 38,
        args   = 14,
        [1]    = 15,
    },
}
CHECK[[
local function a()
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 16,
        finish = 16,
        [1]    = "a",
    },
    [2] = {
        type   = "setname",
        start  = 16,
        finish = 16,
        name   = 1,
        value  = 5,
    },
    [3] = {
        type   = "funcargs",
        start  = 17,
        finish = 18,
    },
    [4] = {
        type   = "return",
        start  = 24,
        finish = 30,
    },
    [5] = {
        type   = "function",
        start  = 1,
        finish = 33,
        args   = 3,
        [1]    = 4,
    },
    [6] = {
        type   = "local",
        start  = 16,
        finish = 16,
        loc    = 1,
    },
}
CHECK[[
local function a(b, c)
    return
end]]
{
    [1] = {
        type   = "name",
        start  = 16,
        finish = 16,
        [1]    = "a",
    },
    [2] = {
        type   = "setname",
        start  = 16,
        finish = 16,
        name   = 1,
        value  = 8,
    },
    [3] = {
        type   = "name",
        start  = 18,
        finish = 18,
        [1]    = "b",
    },
    [4] = {
        type   = ",",
        start  = 19,
        finish = 19,
    },
    [5] = {
        type   = "name",
        start  = 21,
        finish = 21,
        [1]    = "c",
    },
    [6] = {
        type   = "funcargs",
        start  = 17,
        finish = 22,
        [1]    = 3,
        [2]    = 5,
    },
    [7] = {
        type   = "return",
        start  = 28,
        finish = 34,
    },
    [8] = {
        type   = "function",
        start  = 1,
        finish = 37,
        args   = 6,
        [1]    = 7,
    },
    [9] = {
        type   = "local",
        start  = 16,
        finish = 16,
        loc    = 1,
    },
}
