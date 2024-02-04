<% 
 String n1=request.getParameter("n1");
String n2=request.getParameter("n2");
String ch=request.getParameter("ch");
int a=Integer.parseInt(n1);
int b=Integer.parseInt(n2);
switch(ch)
{
     case "Add":
          out.println("add is "+(a+b));
          break;
     case "Sub":
    	 out.println("sub is "+(a-b));
    	 break;
     case "Mul":
         out.println("mul is "+(a*b));
         break;
    case "Div":
   	 out.println("div is "+(a/b));
   	 break;
}
%>