const {pool} = require("../config/database")
const CAMPOS = "id, razonsocial, contacto, ruc, direccion";


const validarCampos = ({ razonsocial, contacto, ruc, direccion } = {}) => {
  const errores = [];
  if (razonsocial.trim() === "") errores.push("La razón social es obligatoria");
  if (contacto.trim() === "") errores.push("El contacto es obligatorio");
  if (ruc === undefined || String(ruc).length !== 11)
    errores.push("El RUC debe tener 11 dígitos");
  if (direccion.trim() === "") errores.push("La dirección es obligatoria");

  return errores;
};

const listarProveedores = async (req, res) => {
  try {
    const [proveedores] = await pool.query(
      "SELECT * FROM proveedores ORDER BY id",
    );
    res.status(200).json({
      ok: true,
      total: proveedores.length,
      data: proveedores,
    });
  } catch (e) {
    console.error(e);
    res.status(500).json({
      ok: false,
      message: "Error interno en el servidor",
    });
  }
};