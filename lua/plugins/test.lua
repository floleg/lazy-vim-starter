return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-plenary",
        ["neotest-golang"] = {
          go_test_args = { "-v", "-race" },
          dap_go_enabled = true,
        },
      },
    },
  },
}
