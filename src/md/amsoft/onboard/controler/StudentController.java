package md.amsoft.onboard.controler;

import md.amsoft.onboard.dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StudentController extends HttpServlet {

    private StudentDao studentDao;

    @Override
    public void init() throws ServletException {
        super.init();

        studentDao = new StudentDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("listStudents", "lista de studneti");
        request.setAttribute("studentList", studentDao.findAll());
        request.getRequestDispatcher("/static/index.jsp").forward(request, response);
    }
}
