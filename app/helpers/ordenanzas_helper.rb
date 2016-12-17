module OrdenanzasHelper
  def vigente?(ord)

    if ord.vigente == true
      "Si"
    else
      "No"
    end
  end
end
