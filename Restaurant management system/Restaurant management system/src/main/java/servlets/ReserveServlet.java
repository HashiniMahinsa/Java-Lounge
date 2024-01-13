package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import entities.ReservationObj;
import DAO.ResDAO;

/**
 * Servlet implementation class ReserveServlet
 */
@WebServlet("/ReserveServlet")
public class ReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name"); 
		String date = request.getParameter("reservationDate");
		String stime = request.getParameter("startHour");
		String etime = request.getParameter("endHour");
		String seats = request.getParameter("tableSeats");
		String email = request.getParameter("email"); 
		//int bill=(stime-etime)*seats*100;
		
		ReservationObj res = new ReservationObj();
		res.setName(name);
		res.setDate(date);
		res.setStime(stime);
		res.setEtime(etime);
		res.setSeats(seats);
		res.setEmail(email);
		//res.setBill(bill);
		
		ResDAO dao = new ResDAO();
		boolean result = dao.insert(res);
		if(result)
		{
			
			
			

		    
		        // SMTP server information for Outlook
		        String host = "smtp.office365.com";
		        int port = 587;
		        String username = "hashini.mahinsa.fernando@outlook.com";
		        String password = "MissGatab(1";

		        // Sender and recipient email addresses
		        String senderEmail = "hashini.mahinsa.fernando@outlook.com";
		        String recipientEmail = email;

		        // Email subject and content
		        String subject = "Reservation";
		        String messageContent = "your reservation is confirmed";

		        // Create properties for the SMTP session
		        Properties props = new Properties();
		        props.put("mail.smtp.auth", "true");
		        props.put("mail.smtp.starttls.enable", "true");
		        props.put("mail.smtp.host", host);
		        props.put("mail.smtp.port", port);

		        // Create a session with authentication
		        Session session = Session.getInstance(props, new Authenticator() {
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication(username, password);
		            }
		        });

		        try {
		            // Create a new email message
		            Message message = new MimeMessage(session);
		            message.setFrom(new InternetAddress(senderEmail));
		            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
		            message.setSubject(subject);
		            message.setText(messageContent);

		            // Send the email
		            Transport.send(message);

		            System.out.println("Email sent successfully!");
		        } catch (MessagingException e) {
		            System.out.println("Failed to send email. Error: " + e.getMessage());
		        }
		}
		
	}
		    
	
	
	
	
	

}




