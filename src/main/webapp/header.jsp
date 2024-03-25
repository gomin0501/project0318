<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{
      margin: 0;
      padding: 0;
    }
    body, html{
    	height:100%;
    	width:100%;
    }
    header{
      height: 12%;
      background-color: grey;
      text-align: center;
      font-size: 1.5em;
    }
    header h1{
    	padding:2%;
    	color:white;
    }
    nav{
      height: 5%;
      background-color: black;
      text-align:center;
    }
    nav ul{
    	padding: 0.5% 0 1% 0;
    }
    nav li{
      list-style-type: none;
      color:white;
      display: inline;
      padding: 1% ;
    }
    nav li a{
      text-decoration: none;
      color: white;
    }
    section{
   		height:78%;
    }
    section h2{
    	text-align:center;
    	margin:2%;
    }
    footer{
    	height: 5%;
    	background-color:gray;
    	text-align:center;
    	text-transform: uppercase;
    	padding:0.5% 0 0.5% 0;
    	color:white;
    }
/* form css */
form h2{
	text-align:center;
	padding: 1% 0;
}
table{
	margin: 0 auto;
	width:60%;
	border:2px solid black;
	
}
th{
	background-color:rgb(224, 221, 221);
	text-align:center;
	padding:1% 0;
	border-bottom:none;
}


td{
	border:0.5px solid black;
	box-sizing:border-box;
}



td a{
	text-decoration:none;
}

input, select, button{
		height:100%;
		font-size:14px;
		border:0.5px solid rgb(224, 221, 221);
		padding:1%;
	}
.text{
	width:70%;
}
.radio{
	margin:0 1%;
}
.ps{
	width:65%;
	border:1px solid black;
}
.drop, .number{
	width:20%;
}


button,.b{
	width:20%;
	background-color:rgb(173, 170, 170);
	border:1px solid black;
	padding:0.5% 0;
}
button:hover{
	cursor:pointer;
}
caption{
	text-align:left;
}
.table{
	width:90%;
}
.table td{
	text-align:center;
	padding:0.5%;
}
#confirm{
	padding:1%;
}

#button{
 	text-align:center;
}
.check{
	padding: 1%;
}
.vote td{
	text-align:center;
}
  </style>
</head>
<body>
<header>
    <h1>지역구 의원 투표 프로그램 ver1.0</h1>
</header>
</body>
</html>