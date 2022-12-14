package DAO;

import java.util.List;

import javax.sql.rowset.spi.TransactionalWriter;
import Model.Trasaction;


public interface ITransactionDAO {
	List<Trasaction> findAll();
	List<Trasaction> findByUserId(int userId);

}
