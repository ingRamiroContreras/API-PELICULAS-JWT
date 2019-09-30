class AddFechaReservaColumnToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :reservas, :fecha_reserva, :timestamps
  end
end
