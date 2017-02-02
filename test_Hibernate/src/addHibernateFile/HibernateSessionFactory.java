package addHibernateFile;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.sun.org.apache.regexp.internal.recompile;

//加载hibernate配置文件
public class HibernateSessionFactory {
	private SessionFactory sessionFactory;
	public HibernateSessionFactory(){		
	}
	
	public SessionFactory config(){
		try {
			Configuration configuration = new Configuration();
			Configuration configure = configuration.configure("hibernate.cfg.xml");
			return configure.buildSessionFactory();
		} catch (Exception e) {
			e.getMessage();
			return null;
		}
	}
	
	public Session getSession(){
		sessionFactory=config();
		return sessionFactory.openSession();
	}
}
