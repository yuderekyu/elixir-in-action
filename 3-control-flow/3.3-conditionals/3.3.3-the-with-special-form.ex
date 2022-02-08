# Example
# we need to normalize registration data submitted by a user.
data = %{
  "login" => "alice",
  "email" => "email@gmail.com",
  "password" => "password",
  "other_field" => "some_value",
  "another_field" => "some_value",
}

# we only want login, email and password. if a required field is not present, report the error
# start by writing helpers to extract each field
defmodule UserNormalizer do
  defp extract_login(%{"login" => login}) do
    {:ok, login}
  end

  defp extract_login(_) do
    {:error, "login missing"}
  end

  defp extract_email(%{"email" => email}) do
    {:ok, email}
  end

  defp extract_email(_) do
    {:error, "email missing"}
  end

  defp extract_password(%{"password" => password}) do
    {:ok, password}
  end

  defp extract_password(_) do
    {:error, "password missing"}
  end

  # <with> is useful when you need to chain a couple of expressions and return the error of the first expression that fails.
  # if all expressions succeed, return the last line of the <do> block
  def extract_user(user) do
    with {:ok, login} <- extract_login(user), {:ok, email} <- extract_email(user), {:ok, password} <- extract_password(user) do
      {:ok, %{login: login, email: email, password: password}}
    end
  end
end

# UserNormalizer.extract_user(%{"login" => "derek", "email" => "derek@dscout", "dddd" => "dfd", "password" => "mypassword"})
# UserNormalizer.extract_user(%{})
