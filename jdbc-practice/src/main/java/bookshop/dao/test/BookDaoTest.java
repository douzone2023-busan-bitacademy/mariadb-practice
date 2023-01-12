package bookshop.dao.test;

import bookshop.dao.BookDao;
import bookshop.vo.BookVo;

public class BookDaoTest {

	public static void main(String[] args) {
		// insertTest();
	}

	private static void insertTest() {
		BookVo vo = null;
		BookDao dao = new BookDao();
		
		vo = new BookVo();
		vo.setTitle("트와일라잇");
		vo.setAuthorNo(1L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("뉴문");
		vo.setAuthorNo(1L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("이클립스");
		vo.setAuthorNo(1L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("브레이킹던");
		vo.setAuthorNo(1L);
		vo.setStatus("대여가능");
		dao.insert(vo);
	
		vo = new BookVo();
		vo.setTitle("아리랑");
		vo.setAuthorNo(2L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("젊은그들");
		vo.setAuthorNo(3L);
		vo.setStatus("대여가능");
		dao.insert(vo);
		
		vo = new BookVo();
		vo.setTitle("아프니깐 청춘이다");
		vo.setAuthorNo(4L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("귀천");
		vo.setAuthorNo(5L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("태백산맥");
		vo.setAuthorNo(6L);
		vo.setStatus("대여가능");
		dao.insert(vo);

		vo = new BookVo();
		vo.setTitle("풀하우스");
		vo.setAuthorNo(7L);
		vo.setStatus("대여가능");
		dao.insert(vo);		
	}

}
