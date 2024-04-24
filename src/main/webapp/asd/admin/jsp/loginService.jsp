<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="admin.AdminLoginDao"%>
<%@ page import="admin.AdminVO"%>
<%
    // Get the username and password from the form
    String inputId = request.getParameter("inputId");
	String inputPassword = request.getParameter("inputPassword");
	System.out.print(request.getParameter("inputId"));

    // Create an instance of AdminVO with the username and password
    AdminVO adminVO = new AdminVO(inputId, inputPassword);

    // Create an instance of AdminLoginDao
    AdminLoginDao alDAO = new AdminLoginDao();

    // Call the adminLogin method to validate the user
    AdminVO adminLoginResultVO = alDAO.adminLogin(adminVO);
	//log(adminLoginResultVO.getAdminId());
    // Check if the login was successful
    if (adminLoginResultVO != null) {
        // Login successful
        session.setAttribute("id", adminLoginResultVO.getAdminId()); // Save the username in session
        response.sendRedirect("dashboard.jsp"); // Redirect to the welcome page
    } else {
        // Login failed
        out.println("<h2>Login Failed</h2>");
        out.println("<p>Invalid username or password. Please try again.</p>");
    }
%>