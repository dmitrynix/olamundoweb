package com.sistemas.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.sistemas.entidades.Reuniao;

public class ReuniaoDAO {

	private Connection conn;

	public ReuniaoDAO() {
		conn = ConnectionFactory.getConnection();
	}

	public void salvar(Reuniao reuniao) {
		String sql = "insert into reunioes(data, local) values (?, ?)";

		try {

			String dataFormatadaStr = null;

			dataFormatadaStr = new SimpleDateFormat("yyyy-MM-dd")
					.format(reuniao.getData());

			java.sql.Date dataSql = java.sql.Date.valueOf(dataFormatadaStr);

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setDate(1, dataSql);
			stmt.setString(2, reuniao.getLocal());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Reuniao getById(Integer id) {
		String sql = "select * from reunioes where id=?";
		PreparedStatement stmt;
		ResultSet rs;
		Reuniao reuniao = new Reuniao();
		try {
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);

			rs = stmt.executeQuery();

			if (rs.next()) {
				Long contato_id = new Long(rs.getInt("id"));

				reuniao.setId(contato_id);
				reuniao.setLocal(rs.getString("local"));
				reuniao.setData(rs.getDate("data"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reuniao;
	}

	public void excluir(Reuniao reuniao) {
		String sql = "delete from reunioes where id=?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setLong(1, reuniao.getId());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public List<Reuniao> getAll() {
		String sql = "select * from reunioes";
		List<Reuniao> listaReunioes = new ArrayList<Reuniao>();

		PreparedStatement stmt;
		ResultSet rs = null;
		try {
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				Reuniao reuniao = new Reuniao();
				reuniao.setId(rs.getLong("id"));
				reuniao.setLocal(rs.getString("local"));
				reuniao.setData(rs.getDate("data"));

				listaReunioes.add(reuniao);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listaReunioes;
	}

    public void update(Reuniao reuniao) throws Exception {

		String dataFormatadaStr = null;

		dataFormatadaStr = new SimpleDateFormat("yyyy-MM-dd")
				.format(reuniao.getData());

		java.sql.Date dataSql = java.sql.Date.valueOf(dataFormatadaStr);

        String sql = "update reunioes set local=?, data=?" +
                " where id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, reuniao.getLocal());
        stmt.setDate(2, dataSql);
        stmt.setFloat(3, reuniao.getId());
        stmt.executeUpdate();
    }
}