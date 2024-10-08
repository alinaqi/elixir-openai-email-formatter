# Ensure the script is run within the Mix environment
Mix.start()
Mix.Task.run("app.start")

# Use the EmailFormatter module
text = """
To enhance customer satisfaction and operational efficiency, we recommend implementing a loyalty program, optimizing payment processing, and enhancing the decor. The loyalty program should offer tiered rewards based on customer spending, encouraging repeat visits and increased order values. Payment processing improvements should focus on reducing transaction times and expanding accepted payment methods, including mobile and contactless options. Decor enhancements should create a warm, inviting atmosphere that reflects the brand's identity and appeals to the target demographic. These changes will likely result in improved customer retention, increased average transaction values, and a more positive overall dining experience.
"""

case EmailFormatter.format_email(text, timeout: 90_000) do  # Set a 90-second timeout
  {:ok, formatted_text} ->
    IO.puts("Formatted text:")
    IO.puts(formatted_text)
  {:error, error_message} ->
    IO.puts("An error occurred:")
    IO.puts(error_message)
end