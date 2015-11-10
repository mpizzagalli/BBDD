var insertData = function(dbName, colName, num) {

  var col = db.getSiblingDB(dbName).getCollection(colName);

  for (i = 0; i < num; i++) {
    x = Math.floor(Math.random() * 1000000);
    doc = {
      id: i,
      nombre: 'Martin Juarez',
      password: 'asdasd' ,
      codigo_postal: x,
      genero: 'masculino',
      edad: 29,
      fecha_creacion: '30/02/2015'
    }
    col.insert(doc);
  }

  print(col.count());
}
