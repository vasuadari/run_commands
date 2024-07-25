return {
    "vasuadari/rest.nvim",
    rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    config = function()
      require("rest-nvim").setup({
        skip_ssl_verification = true,
        -- Jump to request line on run
        env_file = '.env',
        custom_dynamic_variables = {},
        env_pattern = "\\.env$",
        env_edit_command = "tabedit",
        highlight = {
          enable = true,
          timeout = 150,
        },
        -- Encode URL before making request
        encode_url = true,
        result = {
          behavior = {
            decode_url = true,
            show_info = {
              url = true,
              headers = true,
              http_info = true,
              curl_command = true,
            },
            statistics = {
              enable = true,
              ---@see https://curl.se/libcurl/c/curl_easy_getinfo.html
              stats = {
                { "total_time", title = "Time taken:" },
                { "size_download_t", title = "Download size:" },
              },
            },
            formatters = {
              json = "jq",
              html = function(body)
                if vim.fn.executable("tidy") == 0 then
                  return body, { found = false, name = "tidy" }
                end
                local fmt_body = vim.fn.system({
                  "tidy",
                  "-i",
                  "-q",
                  "--tidy-mark",      "no",
                  "--show-body-only", "auto",
                  "--show-errors",    "0",
                  "--show-warnings",  "0",
                  "-",
                }, body):gsub("\n$", "")

                return fmt_body, { found = true, name = "tidy" }
              end,
            },
          },
          split = {
            horizontal = false,
            in_place = false,
            stay_in_current_window_after_split = false
          },
        },
      })
    end
  }

