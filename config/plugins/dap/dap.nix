{pkgs, ...}: {
  plugins.dap = {
    enable = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    nvim-dap-ui
  ];
  extraConfigLua = ''
        local dap, dapui = require("dap"), require("dapui")
        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end

        dapui.setup()
  '';
  keymaps = [
    {
      key = "<leader>de";
      mode = "n";
      action.__raw = ''
        function()
          vim.ui.input({ prompt = "Expression: " }, function(expr)
            if expr then require("dapui").eval(expr, { enter = true }) end
          end)
        end
      '';
      options.desc = "[Dap] Evaluate selected expression";
    }
    {
      key = "<leader>de";
      mode = "v";
      action.__raw = ''
        function() require("dapui").eval() end
      '';
      options.desc = "[Dap] Evaluate selected expression";
    }
    {
      mode = "n";
      key = "<Leader>du";
      action.__raw = ''
        function() require('dapui').toggle() end
      '';
      options.desc = "Toggle Debugger UI";
    }
    {
      key = "<leader>b";
      action.__raw = ''
        function() require("dap").toggle_breakpoint() end
      '';
      options.desc = "[Dap] Toggle breakpoint";
    }
    {
      key = "<F5>";
      action.__raw = ''
        function() require("dap").continue() end
      '';
      options.desc = "[Dap] Continue";
    }
    {
      key = "<F10>";
      action.__raw = ''
        function() require("dap").step_into() end
      '';
      options.desc = "[Dap] Step Into";
    }
    {
      key = "<F11>";
      action.__raw = ''
        function() require("dap").step_over() end
      '';
      options.desc = "[Dap] Step Over";
    }
    {
      key = "<F12>";
      action.__raw = ''
        function() require("dap").step_out() end
      '';
      options.desc = "[Dap] Step Out";
    }
    {
      key = "<leader>dr";
      action.__raw = ''
        function() require("dap").repl_open() end
      '';
      options.desc = "[Dap] Open REPL";
    }
    {
      key = "<leader>dl";
      action.__raw = ''
        function() require("dap").run_last() end
      '';
      options.desc = "[Dap] Run Last";
    }
    {
      key = "<leader>dk";
      action.__raw = ''
        function() require("dap.ui.widgets").hover() end
      '';
      options.desc = "[Dap-Ui] Hover ";
    }
    {
      key = "<leader>dp";
      action.__raw = ''
        function() require("dap.ui.widgets").preview() end
      '';
      options.desc = "[Dap-Ui] Preview ";
    }
    {
      key = "<leader>df";
      action.__raw = ''
        function() require("dap.ui.widgets").centered_float(require("dap.ui.widgets").frames) end
      '';
      options.desc = "[Dap-Ui] Toggle frames window ";
    }
    {
      key = "<leader>ds";
      action.__raw = ''
        function() require("dap.ui.widgets").centered_float(require("dap.ui.widgets").scopes) end
      '';
      options.desc = "[Dap-Ui] Toggle scopes window ";
    }
  ];
}
