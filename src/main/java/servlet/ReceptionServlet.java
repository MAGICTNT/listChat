package servlet;

import entity.Chat;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/reception")
public class ReceptionServlet extends HttpServlet {
    private List<Chat> chatsList = new ArrayList<>();
    public void init(){

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("chats", chatsList);
        getServletContext().getRequestDispatcher("/WEB-INF/reception.jsp").forward(req, resp);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Chat newChat = Chat.builder()
                .idChat(chatsList.size())
                .nom(req.getParameter("nom"))
                .race(req.getParameter("race"))
                .repasFavoris(req.getParameter("repas"))

                .dateDeNaissance(LocalDate.parse(req.getParameter("dateDeNaissance")))
                .build();
        chatsList.add(newChat);
        doGet(req, resp);
    }
}
