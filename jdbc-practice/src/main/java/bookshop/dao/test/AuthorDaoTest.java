package bookshop.dao.test;

public class AuthorDaoTest {

	public static void main(String[] args) {
		// testInsert();
		testFindAll();
	}

	private static void testInsert() {
		AuthorVo vo = null;
		AythorDao dao = new AuthorDao();
		
		vo = new AuthorVo();
		vo.setName("스테파니메이어");
		dao.insert(vo);

		vo = new AuthorVo();
		vo.setName("조정래");
		dao.insert(vo);

		vo = new AuthorVo();
		vo.setName("김동인");
		dao.insert(vo);

		vo = new AuthorVo();
		vo.setName("김난도");
		dao.insert(vo);

		vo = new AuthorVo();
		vo.setName("천상병");
		dao.insert(vo);

		vo = new AuthorVo();
		vo.setName("조정래");
		dao.insert(vo);

		vo = new AuthorVo();
		vo.setName("원수연");
		dao.insert(vo);
	}

	private static void testFindAll() {
		List<AuthorVo> list = new AuthorDao().findAll();
		for(AuthroVo vo : list) {
			System.out.println(vo);
		}
	}
}
