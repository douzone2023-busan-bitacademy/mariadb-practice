package bookshop.dao.test;

public class BookDaoTest {

	public static void main(String[] args) {
		testInsert();
	}

	private static void testInsert() {
		BookVo vo = null;
		BookDao dao = new BookDao();
		
		vo = new BookVo();
		vo.setTite("");
		vo.setAuthorNo();
		dao.insert(vo);
		
	}

}
