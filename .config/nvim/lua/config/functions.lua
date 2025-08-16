m.cycle_colorschemes = function(direction)
    -- direction: 1 for next, -1 for previous
    local current_scheme = vim.g.colors_name or 'default'
    local current_index = 1
    local colorschemes = m.colorschemes
    for i, scheme in ipairs(colorschemes) do
        if scheme == current_scheme then
            current_index = i
            break
        end
    end

    local next_index
    if direction == 1 then
        next_index = current_index % #colorschemes + 1
    else
        next_index = (current_index - 2) % #colorschemes + 1
    end
    local next_scheme = colorschemes[next_index]
    vim.cmd('colorscheme ' .. next_scheme)

    -- Write the new colorscheme to the user's options.lua to make it permanent
    local config_path = vim.fn.stdpath('config') .. '/lua/config/options.lua'
    local lines = {}
    local found = false

    local f = io.open(config_path, "r")
    if f then
        for line in f:lines() do
            if line:match("^%s*vim%.cmd%(['\"]colorscheme .-['\"]%)") then
                table.insert(lines, "vim.cmd('colorscheme " .. next_scheme .. "')")
                found = true
            else
                table.insert(lines, line)
            end
        end
        f:close()
    end

    if not found then
        table.insert(lines, "vim.cmd('colorscheme " .. next_scheme .. "')")
    end

    local wf = io.open(config_path, "w")
    if wf then
        for _, line in ipairs(lines) do
            wf:write(line .. "\n")
        end
        wf:close()
    end

    vim.g.colors_name = next_scheme
end

return m
