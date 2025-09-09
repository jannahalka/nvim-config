return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      signature = { enabled = true },
      completion = {
        documentation = { auto_show = false },
        menu = {
          draw = {
            components = {
              label_description = {
                text = function(ctx)
                  return ctx.label_description ~= '' and ctx.label_description or ctx.item.detail
                end,
              },
            },
          },
        }
      },
    },
  }
}
