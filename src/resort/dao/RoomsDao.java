package resort.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import resort.dbconnection.DbConnection;
import resort.model.Rooms;

public class RoomsDao {

DbConnection dbconnection = new DbConnection();



	// rooms
	private static final String INSERT_rooms_SQL = "INSERT INTO rooms"
			+ " ( roomtype,NoBeds,Facilities,CostPerDay,filename,path) VALUES " + " (?, ?, ?,?,?,?);";

	private static final String SELECT_rooms_BY_ID = "select id,roomtype,NoBeds,Facilities,CostPerDay from rooms where id =?";
	private static final String SELECT_ALL_erooms = "select * from rooms";
	private static final String DELETE_rooms_SQL = "delete from rooms where id = ?;";
	private static final String UPDATE_rooms_SQL = "update rooms set   roomtype = ?,NoBeds = ?,Facilities = ?,CostPerDay = ?  where id = ?;";


	public RoomsDao() {	
	}
	
// insert Rooms
	public void insertRooms(Rooms room) throws SQLException {
		System.out.println(INSERT_rooms_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = dbconnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_rooms_SQL)) {
			preparedStatement.setString(1, room.getRoomtype());
			preparedStatement.setInt(2, room.getNobeds());
			preparedStatement.setString(3, room.getFacilities());
			preparedStatement.setInt(4, room.getCost());
			preparedStatement.setString(5, room.getFilename());
			preparedStatement.setString(6, room.getPath());

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
	}

	// select Room
	public Rooms selectRoom(int id) {
		Rooms room = null;
		// Step 1: Establishing a Connection
		try (Connection connection = dbconnection.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_rooms_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String roomtype = rs.getString("roomtype");

				int nobeds = rs.getInt("NoBeds");
				String facilities = rs.getString("Facilities");
				int cost = rs.getInt("CostPerDay");

				room = new Rooms(id, roomtype, nobeds, facilities, cost);
			}

		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
		return room;
	}

	// select All Rooms
	public List<Rooms> selectAllRooms() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Rooms> rooms = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = dbconnection.getConnection();

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_erooms);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String roomtype = rs.getString("roomtype");
				int nobeds = rs.getInt("NoBeds");
				String facilities = rs.getString("Facilities");
				int cost = rs.getInt("CostPerDay");
				String filename = rs.getString("filename");
				String path = rs.getString("path");
				rooms.add(new Rooms(id, roomtype, nobeds, facilities, cost, filename, path));
			}
		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
		return rooms;
	}

	// Delete rooms
	public boolean deleteRoom(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = dbconnection.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_rooms_SQL);) {

			statement.setInt(1, id);
			System.out.println(statement);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	// Update Room
	public boolean updateRooms(Rooms room) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = dbconnection.getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_rooms_SQL);) {
			statement.setString(1, room.getRoomtype());
			statement.setInt(2, room.getNobeds());
			statement.setString(3, room.getFacilities());
			statement.setInt(4, room.getCost());
			statement.setInt(5, room.getId());
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

}