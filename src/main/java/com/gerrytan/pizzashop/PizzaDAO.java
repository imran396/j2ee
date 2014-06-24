package com.gerrytan.pizzashop;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class PizzaDAO {
	
	@Autowired private SessionFactory sessionFactory;
	
	/**
	 * @Transactional annotation below will trigger Spring Hibernate transaction manager to automatically create
	 * a hibernate session. See src/main/webapp/WEB-INF/servlet-context.xml
	 */
	@Transactional
	public List<Pizza> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List pizzas = session.createQuery("from Pizza").list();
		return pizzas;
	}
	
	@Transactional
	public List<Pizza> findAllWithToppings() {
		Session session = sessionFactory.getCurrentSession();
		List pizzas = session.createQuery("select distinct p from Pizza as p left join fetch p.toppings").list();
		logger.debug(pizzas.toString());
		return pizzas;
	}

    @Transactional
    public String insertData(Pizza pizza){
        Session session = sessionFactory.getCurrentSession();
        session.save(pizza);
        return pizza.getName();
    }

    @Transactional
    public String UpdateData(Pizza pizza){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(pizza);
        return pizza.getName();
    }

    @Transactional
    public Pizza findById(long id) {
        return (Pizza) sessionFactory.getCurrentSession().get(Pizza.class,id);
    }

    @Transactional
    public void deleteById(long id) {
        Pizza pizza = (Pizza) sessionFactory.getCurrentSession().load(Pizza.class,id);
        sessionFactory.getCurrentSession().delete(pizza);

    }


}
