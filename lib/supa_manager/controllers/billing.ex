defmodule SupaManager.Controllers.Billing do
  use SupaManager, :controller

  @moduledoc """
  Billing controller for SupaManager.

  Currently we discard all billing however, this could be used in future.
  """

  def overdue_invoices(conn, _params) do
    conn
    |> put_status(200)
    |> json([])
  end

  def org_payments(conn, _params) do
    conn
    |> put_status(200)
    |> json([])
  end

  def project_subscription(conn, _params) do
    conn
    |> put_status(200)
    |> json(%{
      addons: [],
      # TODO - This is a hack, we should be able to get this from the DB
      billing: %{
        billing_cycle_anchor: 1_649_352_205,
        current_period_end: 1_680_888_205,
        current_period_start: 1_678_209_805
      },
      tier: %{
        key: "FREE",
        name: "Free tier",
        # ? Note: From Supabase
        price_id: "price_1IUYQkJDPojXS6LNPlPj8cmd",
        # ? Note: From Supabase
        prod_id: "prod_J6lyomOwmaOcdA",
        supabase_prod_id: "tier_free",
        unit_amount: 0
      }
    })
  end
end
