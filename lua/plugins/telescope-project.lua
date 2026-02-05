return {
    'nvim-telescope/telescope-project.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
        local telescope = require('telescope')
        
        telescope.setup({
            extensions = {
                project = {
                    base_dirs = {
                        '~/nvim-projects',
			'~/.config' },
                    hidden_files = true, 
                    theme = "dropdown",
                    order_by = "asc",
                    sync_with_nvim_tree = true,
                    search_by = "title",
                }
            }
        })
        
        telescope.load_extension('project')
	vim.api.nvim_set_keymap('n', '<leader>p', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})
    end
}
