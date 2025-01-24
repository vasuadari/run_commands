return {
  "rest-nvim/rest.nvim",
  opts = {
    -- Jump to request line on run
    env = {
      enable = true,
      pattern = ".*%.env.*"
    },
    custom_dynamic_variables = {},
    env_pattern = "\\.env$",
    env_edit_command = "tabedit",
    highlight = {
      enable = true,
      timeout = 750,
    },
    request = {
      skip_ssl_verification = true,
      hooks = {
        encode_url = true,
        set_content_type = true,
      }
    },
    response = {
      hooks = {
        decode_url = true,
      }
    },
  },
  config = function()
  end
}
