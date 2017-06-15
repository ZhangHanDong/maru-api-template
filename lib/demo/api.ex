require Ecto.Query

defmodule Demo.API do
  @moduledoc """
  RESTFUL APIs.
  """

  use Maru.Router
  version "v1"

  before do
    # plug Plug.Logger, log: :debug
    plug Logster.Plugs.Logger, formatter: Logster.JSONFormatter
  end

  plug Plug.Parsers, pass: ["*/*"],
                     json_decoder: Poison,
                     parsers: [:urlencoded, :json, :multipart]


  # -------------------------------
  # 测试接口: GET /
  # -------------------------------
  get "/" do
    json conn, %{ hello: :world }
  end

  resource :hello do

    post "/" do
      #TODO
    end



  # ------------------------------------
  # 异常处理
  # ------------------------------------
  rescue_from [MatchError, RuntimeError, UndefinedFunctionError], with: :custom_error

  rescue_from Maru.Exceptions.NotFound do
    conn
    |> put_status(404)
    |> json(%{message: "未找到资源"})
  end

  # ------------------------------------
  # private methods
  # ------------------------------------
  def custom_error(conn, exception) do
    conn
    |> put_status(500)
    |> json(%{message: "服务器异常"})
  end

  def not_found_response(conn) do
    conn |> put_status(404) |> json(%{message: "未找到资源!"})
  end

  defp update_fail_response(conn) do
    conn |> put_status(500) |> json(%{message: "更新失败!"})
  end



end
