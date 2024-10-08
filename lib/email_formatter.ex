defmodule EmailFormatter do
  @moduledoc """
  A module to format email text using OpenAI's GPT-3.5-turbo model.
  """

  def format_email(text, options \\ []) do
    prompt = """
    The following text is an AI-generated insights report. Please format it into a more readable form with proper paragraphs, bullet points, and numbered lists where necessary:

    "#{text}"

    Please include:
    - Bullet points for recommendations or actions.
    - Numbered lists for sequential steps or ordered suggestions.
    - Well-structured paragraphs for summaries and general information.
    """

    # Set a longer timeout (e.g., 60 seconds)
    timeout = Keyword.get(options, :timeout, 60_000)

    config_override = %OpenAI.Config{
      http_options: [recv_timeout: timeout]
    }

    case OpenAI.chat_completion([
      model: "gpt-3.5-turbo",
      messages: [
        %{role: "user", content: prompt}
      ]
    ], config_override) do
      {:ok, response} ->
        formatted_text = response.choices |> List.first() |> Map.get("message") |> Map.get("content")
        {:ok, formatted_text}

      {:error, %{reason: :timeout}} ->
        {:error, "Request timed out. Please try again later."}

      {:error, error} ->
        {:error, "Error: #{inspect(error)}"}
    end
  end
end