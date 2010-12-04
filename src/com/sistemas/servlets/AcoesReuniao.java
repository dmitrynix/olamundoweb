package com.sistemas.servlets;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sistemas.dao.*;
import com.sistemas.entidades.Contato;
import com.sistemas.entidades.Reuniao;

public class AcoesReuniao {

	private static ReuniaoDAO reuniaoDao = new ReuniaoDAO();
	private static ContatoDAO contatoDao = new ContatoDAO();

	public static String salvar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Reuniao reuniao = mapReuniao(request);

		reuniaoDao.salvar(reuniao);

//		return ver(request, response);
		return listar(request, response);
	}

	public static String atualizar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Reuniao reuniao = mapReuniao(request);

		reuniaoDao.update(reuniao);

		return ver(request, response);
	}

	public static String apagar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Reuniao reuniao = findReuniao(request);

		reuniaoDao.excluir(reuniao);

		return listar(request, response);
	}

	public static String listar(HttpServletRequest request,
			HttpServletResponse response) {

		List<Reuniao> reunioes = reuniaoDao.getAll();

		request.setAttribute("reunioes", reunioes);

		return "reuniao_index.jsp";
	}

	public static String ver(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		Reuniao reuniao = findReuniao(request);

		request.setAttribute("reuniao", reuniao);

		return "reuniao_ver.jsp";
	}

	public static String editar(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		Reuniao reuniao = findReuniao(request);

		request.setAttribute("reuniao", reuniao);

		return "reuniao_editar.jsp";
	}

	public static String adiciona_contato(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		Reuniao reuniao = findReuniao(request);
		List<Contato> contatos = contatoDao.getAll();

		request.setAttribute("reuniao", reuniao);
		request.setAttribute("contatos", contatos);

		return "reuniao_adiciona_contato.jsp";
	}

	public static String adicionar_contato(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Reuniao reuniao = findReuniao(request);

		reuniaoDao.adicionar_contato(reuniao,
				request.getParameter("contato_id"));

		return ver(request, response);
	}

	public static String remover_contato(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Reuniao reuniao = findReuniao(request);

		reuniaoDao.remover_contato(reuniao,
				request.getParameter("contato_id"));

		return ver(request, response);
	}

	private static Reuniao findReuniao(HttpServletRequest request)
			throws ParseException {
		Reuniao reuniao = reuniaoDao.getById(Integer.parseInt(request
				.getParameter("id")));
		return reuniao;
	}

	private static Reuniao mapReuniao(HttpServletRequest request)
			throws ParseException {
		Reuniao reuniao = new Reuniao();
		// Start here
		String contato_id = null;
		if (request.getParameter("id") != null) {
			contato_id = request.getParameter("id");
		}
		String local = request.getParameter("local");
		String dataStr = request.getParameter("data");

		Date data = null;
		data = new SimpleDateFormat("dd/MM/yyyy").parse(dataStr);

		if (contato_id != null) {
			reuniao.setId(Long.parseLong(contato_id));
		}
		reuniao.setLocal(local);
		reuniao.setData(data);
		// end here
		return reuniao;
	}
}