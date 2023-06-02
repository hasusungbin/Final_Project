package com.ace.thrifty.ptj.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ace.thrifty.board.model.dao.BoardDao;
import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.board.model.vo.Image;
import com.ace.thrifty.common.Utils;
import com.ace.thrifty.ptj.model.dao.PtjDao;
import com.ace.thrifty.ptj.model.vo.Ptj;

@Service
public class PtjServiceImpl implements PtjService {
	
	@Autowired
	PtjDao ptjDao;
	
	@Autowired
	BoardDao boardDao;
//	
//	@Override
//	public Ptj selectPtj() {
//		Ptj p = ptjDao.selectPtj();
//		return p;
//	}
	
	public Ptj selectPtjDetail(int boardNo) {
		
		return ptjDao.selectPtjDetail(boardNo);
		
	}
	
	public List<Ptj> selectPtj(String categorySNo) {
		
		return ptjDao.selectPtj(categorySNo);
	}
	
	public List<Ptj> selectPtjAll() {
		
		return ptjDao.selectPtjAll();
		
	}
	
	public int insertPtj(Board b , Ptj p , MultipartFile image, String webPath, String serverFolderPath) throws Exception {
		boardDao.insertBoard(b);
		int boardNo = b.getBoardNo();
		int result = 0;
		
		if(boardNo > 0 ) {
			p.setBoardNo(boardNo);
			result = ptjDao.insertPtj(p);
		}
		
		if(result > 0 && image != null) {
			List<Image> imageList = new ArrayList();
			String changeName = Utils.saveFile(image , serverFolderPath);
			
			Image img = new Image();
			img.setBoardNo(boardNo);
			img.setFileLevel(0);
			img.setOriginName(image.getOriginalFilename());
			img.setChangeName(changeName);
			
			imageList.add(img);
			System.out.println(imageList);
			
			if(!imageList.isEmpty()) {
				result = boardDao.insertImageList(imageList);
				if(!(result == imageList.size())) {
					throw new Exception("이미지 등록 예외발생");
				}
			}
			
		}
		return boardNo;
	}
	
}
