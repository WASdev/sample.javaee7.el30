package com.ibm.ws.samples.el30;

import java.io.IOException;

import javax.el.ELProcessor;
import javax.el.LambdaExpression;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EL30SampleServlet
 */
@WebServlet("/EL30SampleServlet")
public class EL30SampleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EL30SampleServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doWork(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // not implemented
    }

    private void doWork(HttpServletRequest request, HttpServletResponse response) throws IOException {

        ServletOutputStream sos = response.getOutputStream();
                            
        sos.println("A simple sample to show how EL 3.0 can be invoked in a standalone servlet outside of JSP files.");
		sos.println("");
		sos.println("");
        ELProcessor elp = new ELProcessor();

        LambdaExpression expression = (LambdaExpression) elp.eval("(x->x+1)");
        sos.println("A simple lambda expression, (x->x+1), passing in a parameter of 2: " + expression.invoke("2").toString()); // add one		
    }

}
