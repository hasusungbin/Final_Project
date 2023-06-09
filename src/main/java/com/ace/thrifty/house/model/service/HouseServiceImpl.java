package com.ace.thrifty.house.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ace.thrifty.board.model.dao.BoardDao;
import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.common.Utils;
import com.ace.thrifty.common.model.vo.Coordinate;
import com.ace.thrifty.house.model.dao.HouseDao;
import com.ace.thrifty.house.model.vo.House;
import com.ace.thrifty.house.model.vo.Room;
import com.ace.thrifty.house.model.vo.RoomImg;

@Service
public class HouseServiceImpl implements HouseService{
	
	private final HouseDao houseDao;
	private final BoardDao boardDao;

	public HouseServiceImpl(HouseDao houseDao, BoardDao boardDao) {
		this.houseDao = houseDao;
		this.boardDao = boardDao;
	}

	@Override
	public int insertHouse(Board b, House h, List<Room> rooms, Map<String, List<MultipartFile>> roomImgs, String webPath, String serverFolderPath) throws Exception {
		
		boardDao.insertBoard(b);
		int boardNo =b.getBoardNo();
		h.setBoardNo(boardNo);
		
		List<List<MultipartFile>> roomImgsV = new ArrayList();
		List<RoomImg> roomImgList = new ArrayList();
		Iterator<String> keys = roomImgs.keySet().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			roomImgsV.add(roomImgs.get(key));
		}
		for (int i = 0; i < rooms.size(); i++) {
			rooms.get(i).setBoardNo(boardNo);
			houseDao.insertRoom(rooms.get(i));
			int roomNo = rooms.get(i).getRoomNo();
			for(int j = 0; j < roomImgsV.get(i).size(); j++) {
				MultipartFile file = roomImgsV.get(i).get(j);
				String changeName = Utils.saveFile(file, serverFolderPath);
				RoomImg roomImg = RoomImg
						.builder()
						.roomNo(roomNo)
						.originName(file.getOriginalFilename())
						.changeName(changeName)
						.imgLevel(j)
						.build();
				roomImgList.add(roomImg);
			}
		}
		String thumbnail = webPath + roomImgList.get(0).getChangeName();
		h.setThumbnail(thumbnail);
		int result = houseDao.insertHouse(h);
		int result1 = houseDao.insertRoomImg(roomImgList);

		return result1;
	}
	
	@Override
	public List<Object> selectHouse(int boardNo) {
		List<Object> list = new ArrayList();
		list.add(boardDao.selectBoard(boardNo));
		list.add(houseDao.selectHouse(boardNo));
		return list;
	}

	@Override
	public Map<String, Object> selectBoard(Board b) {
		return houseDao.selectBoard(b);
	}

	@Override
	public List<Object> selectHouseList() {
		return houseDao.selectHouseList();
	}
	
	@Override
	public List<Object> selectLocation(Coordinate c) {
		return houseDao.selectLocation(c);
	}

	@Override
	public List<Object> selectRoomImg(int roomNo) {
		return houseDao.selectRoomImg(roomNo);
	}


	
	
	
}
