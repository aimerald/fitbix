defmodule Fitbit.Log do
  def get(date) do
    HTTPoison.get(url(date), request_header)
  end

  def api_version do
    '1'
  end

  def base_url do
    'https://api.fitbit.com'
  end

  def url(date) do
    "#{base_url}/#{api_version}/user/#{user_id}/#{log_name}/date/#{date}.json"
  end

  def log_name do
    'sleep'
  end

  def request_header do
    ["Authorization": "Bearer #{access_token}"]
  end

  def format_date(date) do
    date |> Date.to_string
  end

  # FIXME: 環境変数から読み込む
  def user_id do
    ''
  end

  # FIXME: 環境変数から読み込む
  def access_token do
    ''
  end
end
