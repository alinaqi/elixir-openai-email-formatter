# Email Formatter

Email Formatter is an Elixir application that uses OpenAI's GPT-4o-mini model to format and enhance AI-generated email content. It takes raw text input and produces a well-structured, readable output with proper paragraphs, bullet points, and numbered lists where appropriate.

## Features

- Formats raw text into a more readable structure
- Utilizes OpenAI's GPT-4o-mini model for intelligent text processing
- Handles timeouts and errors gracefully
- Customizable timeout duration

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Elixir (version 1.12 or later)
- Mix (Elixir's build tool)
- An OpenAI API key

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/email_formatter.git
   cd email_formatter
   ```

2. Install dependencies:
   ```
   mix deps.get
   ```

3. Set up your OpenAI API key as an environment variable:
   ```
   export OPENAI_API_KEY=your_api_key_here
   ```

## Configuration

The project uses the following dependencies:

- `openai` ~> 0.6.2
- `httpoison` ~> 2.0
- `jason` ~> 1.4

You can find the full list of dependencies in the `mix.exs` file.

## Usage

To use the Email Formatter, you can either run it as a script or use it as a module in your Elixir application.

### Running as a Script

1. Ensure your text is in the `email_formatter.exs` file.
2. Run the script using Mix:
   ```
   mix run email_formatter.exs
   ```

### Using as a Module

You can use the `EmailFormatter` module in your Elixir code like this:

```elixir
text = """
Your raw text here...
"""

case EmailFormatter.format_email(text, timeout: 90_000) do
  {:ok, formatted_text} ->
    IO.puts("Formatted text:")
    IO.puts(formatted_text)
  {:error, error_message} ->
    IO.puts("An error occurred:")
    IO.puts(error_message)
end
```

## Customization

You can customize the timeout duration by passing it as an option:

```elixir
EmailFormatter.format_email(text, timeout: 120_000)  # 120-second timeout
```

## Troubleshooting

If you encounter a timeout error, try the following:

1. Increase the timeout duration
2. Check your internet connection
3. Verify your OpenAI API key and account status

## Contributing

Contributions to the Email Formatter project are welcome. Please feel free to submit a Pull Request.

## License

No license.. enjoy:)
