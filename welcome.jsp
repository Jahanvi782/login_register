<%@ page import="jakarta.servlet.http.HttpSession" %>

<body>
    <%
        // Retrieve  session object
        HttpSession session = request.getSession(false);

        // if the session is not null and the username attribute is set
        if (session != null && session.getAttribute("username") != null) {
            // Get the username from session obj
            String username = (String) session.getAttribute("username");
    %>

      <div class="container">
        <h1>Welcome, <%= username %>!</h1>
        <p>We're delighted to have you here 🌟</p>
        <h3>Explore, learn, and connect with our vibrant community! 🚀</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    </div>

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>


</body>

