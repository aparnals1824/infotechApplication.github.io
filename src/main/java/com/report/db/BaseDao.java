package com.report.db;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDao {
	@PersistenceContext
	private EntityManager em;

	@SuppressWarnings("rawtypes")
	public List listByQuery(String queryString, List parameters) {
		List list = null;
		try {
			Query query = em.createQuery(queryString);
			if (parameters != null) {
				if (parameters.size() > 0) {
					for (int i = 0; i < parameters.size(); i++) {
						query.setParameter(i + 1, parameters.get(i));
					}
				}
			}
			list = query.getResultList();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@SuppressWarnings("rawtypes")
	public int executeQuery(String queryString, List parameters) {
		int result=0;
		try {
			Query query = em.createQuery(queryString);
			if (parameters != null) {
				if (parameters.size() > 0) {
					for (int i = 0; i < parameters.size(); i++) {
						query.setParameter(i + 1, parameters.get(i));
					}
				}
			}
			
			result=query.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	@SuppressWarnings("rawtypes")
	public Object getByQuery(String queryString, List parameters) {
		Object object = null;
		try {
			Query query = em.createQuery(queryString);
			if (parameters != null) {
				if (parameters.size() > 0) {
					
					for (int i = 0; i < parameters.size(); i++) {
						query.setParameter(i + 1, parameters.get(i));
					}
				}
			}
			
			object = query.getSingleResult();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return object;
	}

	@SuppressWarnings("rawtypes")
	public Object getByNativeQuery(String queryString, List parameters, Class resultClass) {
		Object object = null;
		try {
			Query query = em.createNativeQuery(queryString, resultClass);
			if (parameters != null) {
				if (parameters.size() > 0) {
					for (int i = 0; i < parameters.size(); i++) {
						query.setParameter(i + 1, parameters.get(i));
					}
				}
			}
			object = query.getSingleResult();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return object;
	}
	
	
	@SuppressWarnings("rawtypes")
	public List listByNativeQuery(String queryString, List parameters, Class resultClass) {
		List list = null;
		try {
			Query query = em.createNativeQuery(queryString, resultClass);
			if (parameters != null) {
				if (parameters.size() > 0) {
					for (int i = 0; i < parameters.size(); i++) {
						query.setParameter(i + 1, parameters.get(i));
					}
				}
			}
			list = query.getResultList();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Object geById(Class cls, Integer primaryKey) {
		Object object = null;
		try {
			object = em.getReference(cls, primaryKey);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return object;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Object get(Class clas, int id) {
		return em.find(clas, id);

	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Object> list(Class clas) {
		return em.createQuery("from " + clas.toString().replace("class", "").trim()).getResultList();
	}

	public Object create(Object entity) {
		em.persist(entity);
		em.flush();
		return entity;
	}

	public Object update(Object entity) {
		return em.merge(entity);
	}

	public void delete(Object entity) {
		em.remove(entity);
	}

	@SuppressWarnings("rawtypes")
	public void deleteById(Class clas, int entityId) {
		Object entity = get(clas, entityId);
		delete(entity);
	}

	@SuppressWarnings("rawtypes")
	public Object saveAndGet(Object entity, Class cls) {
		Object object = null;
		em.persist(entity);
		List list = list(cls);
		if (list != null) {
			if (list.size() > 0) {
				object = list.get(list.size() - 1);
			}
		}
		return object;
	}

	public String getUserId(String username) {
		List result = null;
		try {
			String query = "select user_id from e_petition.ci_user where mbl ='" + username+"'";
			result = findSql(query);
			int size1 = result.size();
			System.out.println("size  cn:" + result.get(0)+"vvb"+result.get(0).toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result.get(0).toString();
				
		}

	private List findSql(String query) {
		// TODO Auto-generated method stub
		return null;
	}

	public List getCount(int userid) {
		// TODO Auto-generated method stub
		return null;
	}
	@SuppressWarnings("rawtypes")
	public int updateQuery(String queryString, List parameters) {
		int rows=0;
		System.out.println("indaoooo");
		try {
			Query query = em.createQuery(queryString);
			if (parameters != null) {
				if (parameters.size() > 0) {
					for (int i = 0; i < parameters.size(); i++) {
						query.setParameter(i + 1, parameters.get(i));
					}
				}
			}
			rows=query.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rows;
	}
	
}
