package restaurant.interfaces;

import java.sql.SQLException;
import java.util.List;
import restaurant.entity.Staff;

/**
 * The StaffRepository interface represents a repository for managing staff
 * members.
 */
public interface StaffRepository {
  void insert(Staff staff) throws SQLException;

  void update(Staff staff) throws SQLException;

  Staff findById(int staffId) throws SQLException;

  void delete(int staffId)throws SQLException;

  List<Staff> findAll() throws SQLException;
}
