<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8">
		<title>scripting element</title>
	</head>
	<body>
		<h1>스크립팅 엘리먼트</h1>
		<%!
			private int age;
			public int getAge(){
				return age;
			}
			public void setAge(int age){
				this.age = age;
			}
		%>
		<%
			int a = 10;
			out.println(a);	
			
		%>
		<%= a %>
		
		<ul>
		<% 
			for(int i=0; i<10; i++){
				out.println("<li>"+ i + "</li>");	
			}
		%>
		</ul>
		//위보다 아래가 더 편함. 자바는 문법이 정확하기 때문에 아래처럼 코딩하면 세미콜론을 안써도 됨
		<ul>
			<%for(int i=0;i<10;i++){%>
				<li><%=i %></li>
			<%} %>
		</ul>
	</body>
</html>