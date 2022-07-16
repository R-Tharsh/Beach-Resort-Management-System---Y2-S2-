package resort.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import resort.dbconnection.DbConnection;
import resort.model.Event;
import resort.model.Restaurant;

public class EventDao {
	DbConnection dbconnection  = new DbConnection();

	// Event 
	private static final String INSERT_Event_SQL = "INSERT INTO events"
			+ "  (guest,mobile,eventname,facilities,Date) VALUES " + " (?, ?, ?,?,?);";

	private static final String SELECT_Event_BY_ID = "select id,guest,mobile,eventname,facilities,Date from events where id =?";
	private static final String SELECT_ALL_Events = "select * from events";
	private static final String SELECT_ALL_Eventsbyuser = "select * from events where guest = ?";
	private static final String DELETE_Event_SQL = "delete from events where id = ?;";
	private static final String UPDATE_Event_SQL = "update events set  guest=?,mobile=?,eventname=?,facilities=?,Date=? where id = ?;";

	public EventDao() {
	}

	// Delete Event
	public boolean deleteevent(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = dbconnection.getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_Event_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	// insert Event
	public void insertEvent(Event ba) throws SQLException {
		System.out.println(INSERT_Event_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = dbconnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_Event_SQL)) {
			preparedStatement.setString(1, ba.getGuest());
			preparedStatement.setInt(2, ba.getMobile());
			preparedStatement.setString(3, ba.geteventname());
			preparedStatement.setString(4, ba.getfacilities());
			preparedStatement.setString(5, ba.getDate());

			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
	}

	// select Event
	public Event selectEvent(int id) {
		Event bt = null;
		// Step 1: Establishing a Connection
		try (Connection connection = dbconnection.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_Event_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String guest = rs.getString("guest");

				int mobile = rs.getInt("mobile");
				String eventname = rs.getString("eventname");
				String facilities = rs.getString("facilities");
				String date = rs.getString("date");

				bt = new Event(id, guest, mobile, eventname, facilities, date);
			}

		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
		return bt;
	}
	// select All Events user
	public List<Event> selectAllEventsbyuser(String User) {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Event> bt = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = dbconnection.getConnection();

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Eventsbyuser);) {
			preparedStatement.setString(1, User);
			
			System.out.println(preparedStatement);
			
		
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String guest = rs.getString("guest");
				int mobile = rs.getInt("mobile");
				String eventname = rs.getString("eventname");
				String facilities = rs.getString("facilities");
				String date = rs.getString("Date");

				bt.add(new Event(id, guest, mobile, eventname, facilities, date));
			}
		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
		return bt;
	}
	// select All Events
	public List<Event> selectAllEvents() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Event> bt = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = dbconnection.getConnection();

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Events);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String guest = rs.getString("guest");
				int mobile = rs.getInt("mobile");
				String eventname = rs.getString("eventname");
				String facilities = rs.getString("facilities");
				String date = rs.getString("Date");

				bt.add(new Event(id, guest, mobile, eventname, facilities, date));
			}
		} catch (SQLException e) {
			dbconnection.printSQLException(e);
		}
		return bt;
	}

	// Update Event
	public boolean updateEvent(Event ba) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = dbconnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_Event_SQL);) {
			
			preparedStatement.setString(1, ba.getGuest());
			preparedStatement.setInt(2, ba.getMobile());
			preparedStatement.setString(3, ba.geteventname());
			preparedStatement.setString(4, ba.getfacilities());
			preparedStatement.setString(5, ba.getDate());
			preparedStatement.setInt(6, ba.getId());

			rowUpdated = preparedStatement.executeUpdate() > 0;
			System.out.println("Update"+preparedStatement);
		}
		return rowUpdated;
	}
}