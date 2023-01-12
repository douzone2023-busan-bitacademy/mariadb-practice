package bookshop.dao.test;

import java.util.List;

import bookshop.dao.AuthorDao;
import bookshop.vo.AuthorVo;

public class AuthorDaoTest {

	public static void main(String[] args) {
		// insertTest();
		findAllTest();
	}

	private static void findAllTest() {
		List<AuthorVo> list = new AuthorDao().findAll();
		for(AuthorVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void insertTest() {
		AuthorVo vo = null;
		AuthorDao dao = new AuthorDao();
		
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

}
