defmodule WarhammerCharacters.Accounts.User do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshAuthentication]

  attributes do
    uuid_primary_key :id
    attribute :email, :ci_string, allow_nil?: false
    attribute :hashed_password, :string, allow_nil?: false, sensitive?: true
  end

  authentication do
    api WarhammerCharacters.Api

    strategies do
      password :password do
        identity_field :email
        sign_in_tokens_enabled? true
      end
    end

    tokens do
      enabled? true
      token_resource WarhammerCharacters.Accounts.Token

      signing_secret WarhammerCharacters.Accounts.Secrets
    end
  end

  postgres do
    table "users"
    repo WarhammerCharacters.Repo
  end

  identities do
    identity :unique_email, [:email]
  end

  # If using policies, add the following bypass:
  # policies do
  #   bypass AshAuthentication.Checks.AshAuthenticationInteraction do
  #     authorize_if always()
  #   end
  # end
end
