defmodule Lensformation.PageControllerTest do
    use Lensformation.ConnCase

    test "GET /", %{conn: conn} do
        conn = get conn, "/"
        assert html_response(conn, 200) =~ "Welcome to Lensformation"
    end
end