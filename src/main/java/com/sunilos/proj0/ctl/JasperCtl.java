package com.sunilos.proj0.ctl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sunilos.proj0.exception.ApplicationException;
import com.sunilos.proj0.service.MarksheetServiceInt;

@Controller
@RequestMapping(value = "/report")
public class JasperCtl {
	private static Logger log = Logger.getLogger(JasperCtl.class);

	@Autowired
	private MarksheetServiceInt service;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView generatePdf(ModelAndView mav)
			throws ApplicationException, JRException {

		/*
		 * String jrxmlFileName =
		 * "D:/Workspace2/ORS_Project0/src/main/webapp/resources/report/report2.jrxml"
		 * ;
		 */
		/*
		 * String pdfFile =
		 * "D:/Workspace2/ORS_Project0/src/main/webapp/resources/report/report1.pdf"
		 * ;
		 */
		System.out.println("Before complilation");
		/*
		 * net.sf.jasperreports.engine.JasperReport jasperReport =
		 * JasperCompileManager .compileReport(jrxmlFileName);
		 * System.out.println("After complilation");
		 */
		Map<String, Object> map = new HashMap<String, Object>();

		List list = service.getMeritList(0, 0);
		System.out.println(list.get(1));

		JRDataSource JRDataSource = new JRBeanCollectionDataSource(list, false);
		map.put("datasource", JRDataSource);

		/*
		 * JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,
		 * null, JRDataSource);
		 */
		System.out.println("After Complilation");

		mav = new ModelAndView("pdfReport", map);

		/*
		 * File outDir = new File("C:/Users/Admin/Documents/Jasper");
		 * outDir.mkdirs();
		 * JasperExportManager.exportReportToPdfFile(jasperPrint,
		 * "C:/Users/Admin/Documents/Jasper/report2.pdf");
		 */

		return mav;

	}
}
