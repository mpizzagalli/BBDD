var map1 = function(){
  var date = this["FechaBOJA"].split('/')
  if(this["Tipo"] == "Resoluciones" && date[1] == 4 && date[2] == 2013){
    emit(this["Tipo"],1)
  }
}

var reduce1 = function(key,values){
  return Array.sum(values)
}

var map2 = function(){
  emit(this["Tipo"],1);
}

var reduce2 = function(key,values){
  return Array.sum(values);
}

var map4 = function(){
  var cantPags = this["PaginaFinal"] - this["PaginaInicial"] + 1
  emit(this["Tipo"],cantPags)
}

var reduce4 = function(key,values){
  var cantPagsMax = 0;
  for (var i=0; i < values.length; i++){
    if(values[i] > cantPagsMax){
      cantPagsMax = values[i];
    }
  }
  return(cantPagsMax);
}
