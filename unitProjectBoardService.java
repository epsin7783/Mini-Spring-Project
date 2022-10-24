package org.conan.service;

import java.util.List;

import org.conan.domain.BoardVO;

public interface unitProjectBoardService {
	public void register(BoardVO board);
	public BoardVO get(Long bno);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
	public List<BoardVO> getList();
}
