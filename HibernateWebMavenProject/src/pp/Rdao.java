package pp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import javax.transaction.Transactional;

public class Rdao {
	Session session;
	public int addProduct(Product p)
	{
		session=new Configuration().configure().buildSessionFactory().openSession();
		int i=(int) session.save(p);
		session.beginTransaction().commit();
		return i;
	}
	
	public List<Product> showProduct()
	{
		session=new Configuration().configure().buildSessionFactory().openSession();
		Query qr=session.createQuery("from Product");
		return qr.list();
	}
	
	public List<Product> showByPagenation(int s, int t)
	{
		session=new Configuration().configure().buildSessionFactory().openSession();
		Query qr=session.createQuery("from Product");
		qr.setFirstResult(s);
		qr.setMaxResults(t);
		return qr.list();
	}
	
	@Transactional
	public void deleteProduct(int id)
	{
		session=new Configuration().configure().buildSessionFactory().openSession();
		Product p=new Product();
		p.setId(id);
		session.delete(p);
		session.beginTransaction().commit();
	}
	
	public void updateProduct(Product p)
	{
		session=new Configuration().configure().buildSessionFactory().openSession();
		session.update(p);
		session.beginTransaction().commit();
	}
}
