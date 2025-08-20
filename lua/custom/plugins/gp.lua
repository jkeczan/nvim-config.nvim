return {
  'robitx/gp.nvim',
  config = function()
    local conf = {
      providers = {
        ollama = {
          disable = false,
          endpoint = 'http://localhost:11434/api/chat',
          secret = 'dummy_secret',
        },
        openai = {},
      },
      agents = {
        {
          name = 'ChatGPT3-5',
          disable = true,
        },
        {
          provider = 'ollama',
          name = 'ChatOllamaLlama3.1-8B',
          chat = true,
          command = false,
          disable = false,
          -- string with model name or table with model name and parameters
          model = {
            model = 'llama3.3:latest',
            temperature = 0.6,
            top_p = 1,
            min_p = 0.05,
          },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = 'You are a general AI assistant.',
        },
      },
      default_agent = 'Ollama 3.3',
    }

    require('gp').setup(conf)

    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  end,
}
