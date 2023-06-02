package com.ace.thrifty.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.board.model.vo.Location;
import com.ace.thrifty.board.model.vo.SubCategory;
import com.ace.thrifty.board.model.vo.UpperCategory;
import com.ace.thrifty.smallgroup.model.vo.SmallGroup;

@Repository
public class BoardDao {

	@Autowired
	SqlSession sqlSession;
	
	public Board selectBoard() {
		return sqlSession.selectOne("boardMapper.selectBoard");
	}
	
	
	public int sgInsertBoard(Board b) {
		return sqlSession.insert("boardMapper.sgInsertBoard", b);
	}
	
	
		
	public List<UpperCategory >selectBoardCategoryList() {
		return sqlSession.selectList("boardMapper.selectCategoryList");		
	}
	public List<UpperCategory >selectUpperCategoryList() {
		return sqlSession.selectList("boardMapper.selectUpperCategoryList");
	}
	
	public List<SubCategory>selectSubCategoryList() {
		return sqlSession.selectList("boardMapper.selectSubCategoryList");
	}
	
	public List<Location> selectLocationList(){
		return sqlSession.selectList("boardMapper.selectLocationList");
	}
	
//	public String smallgrouplist(Board b, SmallGroup sg) {
//		return sqlSession.selectOne("boardMapper.smallgrouplist");
//	}
	public int sgUpdateBoard(Board b) {
		return sqlSession.update("boardMapper.sgUpdateBoard", b);
	}
}
