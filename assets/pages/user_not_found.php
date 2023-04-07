<div class="container mt-4  border shadow-sm rounded bg-white p-1 d-flex justify-content-center">
    <div id="main">
            <div class="fof">
                    <h1>User Not Found</h1>
            </div>
    </div>
</div>


<style>

    
    *{
    transition: all 0.6s;
}

html {
    height: 50%;
}

body{
    font-family: 'Lato', sans-serif;
    color: #888;
    margin: 0;
}

#main{
    display: table;
    width:70%;
    height: 100vh;
    text-align: center;
}

.fof{
	  display: table-cell;
	  vertical-align: middle;
}

.fof h1{
	  font-size: 50px;
	  display: inline-block;
	  padding-right: 12px;
	  animation: type .5s alternate infinite;
}

@keyframes type{
	  from{box-shadow: inset -3px 0px 0px #888;}
	  to{box-shadow: inset -3px 0px 0px transparent;}
}
</style>