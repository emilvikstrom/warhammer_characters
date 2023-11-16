defmodule WarhammerCharacters.Accounts.Secrets do
  use AshAuthentication.Secret

  def secret_for(
        [:authentication, :tokens, :signing_secret],
        WarhammerCharacters.Accounts.User,
        _
      ) do
    case Application.fetch_env(:warhammer_characters, WarhammerCharactersWeb.Endpoint) do
      {:ok, endpoint_config} ->
        Keyword.fetch(endpoint_config, :secret_key_base)

      :error ->
        :error
    end
  end
end
