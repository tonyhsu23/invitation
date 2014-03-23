function getName() {  
  console.log("ready")
  var name = $("#pname").val();
  
  if(typeof name === "undefined")
  	console.log("undefined...");
  else
  	console.log(name);
}