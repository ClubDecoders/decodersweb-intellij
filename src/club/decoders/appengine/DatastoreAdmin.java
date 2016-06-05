package club.decoders.appengine;

import java.util.ArrayList;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

import club.decoders.models.AnnouncementModel;
import club.decoders.models.Member;
import club.decoders.models.Question;
import club.decoders.models.User;

public class DatastoreAdmin {

	protected static DatastoreService datastoreService = DatastoreServiceFactory
			.getDatastoreService();

	public static boolean insertUser(User user) {

		Entity entity = new Entity("User", user.getUsn());
		entity.setProperty("usn", user.getUsn());
		entity.setProperty("name", user.getName());
		entity.setProperty("branch", user.getBranch());
		entity.setProperty("semester", user.getSemester());
		entity.setProperty("email", user.getEmail());
		entity.setProperty("phone", user.getPhone());
		entity.setProperty("password", user.getPassword());

		datastoreService.put(entity);

		return false;

	}

	public static User retrieveUser(String usn) {
		User user = new User();
		Query q = new Query("User");
		PreparedQuery pq = datastoreService.prepare(q);
		for (Entity all : pq.asIterable()) {
			if (all.getProperty("usn").equals(usn)) {
				user.setUsn(all.getProperty("usn").toString());
				user.setName(all.getProperty("name").toString());
				user.setBranch(all.getProperty("branch").toString());
				user.setSemester(all.getProperty("semester").toString());
				user.setPhone(all.getProperty("phone").toString());
				user.setEmail(all.getProperty("email").toString());
				user.setPassword(all.getProperty("password").toString());
			}
		}
		return user;
	}

	public static boolean isLoginVerified(String usn, String pass) {
		boolean status = false;
		Query q = new Query("User");
		PreparedQuery pq = datastoreService.prepare(q);
		for (Entity all : pq.asIterable()) {
			if (all.getProperty("usn").equals(usn)) {
				if (all.getProperty("password").equals(pass)) {
					status = true;
					break;
				}
			}
		}
		return status;
	}
	
	public static boolean insertHackathonAnnouncement(AnnouncementModel amodel) {
		try {
			Entity entity = new Entity("Announcements", amodel.getAnId());
			entity.setProperty("andate", amodel.getAndate());
			entity.setProperty("antitle", amodel.getAntitle());
			entity.setProperty("antext", amodel.getAntext());
			entity.setProperty("anurl", amodel.getAnurl());
			entity.setProperty("anperson", amodel.getAnperson());
			getDatastoreService().put(entity);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public static ArrayList<AnnouncementModel> getAllAnnouncements() {
		Query q = new Query("Announcements");
		PreparedQuery pq = getDatastoreService().prepare(q);
		ArrayList<AnnouncementModel> anmodels = new ArrayList<AnnouncementModel>();
		for (Entity all : pq.asIterable()) {
			Object anId = all.getKey().getName();
			Object andate = all.getProperty("andate");
			Object antitle = all.getProperty("antitle");
			Object antext = all.getProperty("antext");
			Object anurl = all.getProperty("anurl");
			Object anperson = all.getProperty("anperson");
			if (anId != null && andate != null && antext != null
					&& anurl != null && anperson != null) {
				anmodels.add(new AnnouncementModel(andate.toString(), antitle
						.toString(), antext.toString(), anurl.toString(),
						anperson.toString(), anId.toString()));
			}
		}
		club.decoders.models.AnnouncementModelSorter sorter = new club.decoders.models.AnnouncementModelSorter(anmodels);
		anmodels = sorter.sortList();
		return anmodels;
	}
	
	public static void insertAdmin(String name,String usn,String password)
	{
		Entity entity = new Entity("Admin",usn);
		entity.setProperty("name", name);
		entity.setProperty("usn", usn);
		entity.setProperty("password", password);
		getDatastoreService().put(entity);
	}
	public static boolean isAdmin(String usn,String password)
	{
		boolean status = false;
		Query q = new Query("Admin");
		PreparedQuery pq = datastoreService.prepare(q);
		for (Entity all : pq.asIterable()) {
			if (all.getProperty("usn").equals(usn)) {
				if (all.getProperty("password").equals(password)) {
					status = true;
					break;
				}
			}
		}
		return status;
	}

	private static DatastoreService getDatastoreService() {
		// TODO Auto-generated method stub
		return datastoreService;
	}
	
	public static void insertMember(Member member)
	{
		Entity entity = new Entity("Member", member.getUsn());
		entity.setProperty("usn", member.getUsn());
		entity.setProperty("name", member.getName());
		entity.setProperty("branch", member.getBranch());
		entity.setProperty("semester", member.getSemester());
		entity.setProperty("email", member.getEmail());
		entity.setProperty("phone", member.getPhone());
		entity.setProperty("password", member.getPassword());
		entity.setProperty("score", member.getScore());
		entity.setProperty("solved", member.getSolvedQNo());

		datastoreService.put(entity);
	}
	public static Member retrieveMember(String usn) {
		Member user = new Member();
		Query q = new Query("Member");
		PreparedQuery pq = datastoreService.prepare(q);
		for (Entity all : pq.asIterable()) {
			if (all.getProperty("usn").equals(usn)) {
				user.setUsn(all.getProperty("usn").toString());
				user.setName(all.getProperty("name").toString());
				user.setBranch(all.getProperty("branch").toString());
				user.setSemester(all.getProperty("semester").toString());
				user.setPhone(all.getProperty("phone").toString());
				user.setEmail(all.getProperty("email").toString());
				user.setPassword(all.getProperty("password").toString());
			}
		}
		return user;
	}
	
	public static boolean isMember(String usn,String password)
	{
		boolean foundUser = false;;
		Query q = new Query("Member");
		PreparedQuery pq = datastoreService.prepare(q);
		for(Entity all:pq.asIterable())
		{
			if(all.getProperty("usn").equals(usn))
			{
				if(all.getProperty("password").equals(password))
				{
					foundUser = true;
					break;
				}
			}
		}
		return foundUser;
	}
	public static void insertProblem(Question q)
	{
		Entity entity = new Entity("Questions",q.getQid());
		entity.setProperty("qid", q.getQid());
		entity.setProperty("problem", q.getProblem());
		entity.setProperty("solution", q.getSolution());
		getDatastoreService().put(entity);
	}
	public static ArrayList<Question> getAllQuestions()
	{
		ArrayList<Question> alist = new ArrayList<Question>();
		Query q = new Query("Questions");
		PreparedQuery pquery = getDatastoreService().prepare(q);
		for(Entity all:pquery.asIterable())
		{
			int qid=Integer.parseInt(all.getProperty("qid").toString());
			String problem = all.getProperty("problem").toString();
			String solution = all.getProperty("solution").toString();
			alist.add(new Question(qid, problem, solution));
		}
		return alist;
	}
	public static boolean doesQIDExist(int qid)
	{
		Query q = new Query("Questions");
		PreparedQuery pquery = getDatastoreService().prepare(q);
		for(Entity all:pquery.asIterable())
		{
			if(Integer.parseInt(all.getProperty("qid").toString())== qid)
			{
				return true;
			}
		}
		return false;
		
	}

}
