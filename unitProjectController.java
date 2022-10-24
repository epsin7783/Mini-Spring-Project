package org.conan.controller;

import org.conan.domain.BoardVO;
import org.conan.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/unitproject")
@AllArgsConstructor
public class unitProjectController {
	private BoardService service;
	@GetMapping("/index")
	public void index(Model model) {
		log.info("index");
		model.addAttribute(("index"),service.getList());
	}
	
	@GetMapping("/about")
	public void about(Model model) {
		log.info("about");
		model.addAttribute(("about"),service.getList());
	}
	
	@GetMapping("/board")
	public void board(Model model) {
		log.info("board");
		model.addAttribute(("board"),service.getList());
	}
	
	@GetMapping("/hotel")
	public void hotel(Model model) {
		log.info("hotel");
		model.addAttribute(("hotel"),service.getList());
	}
	
	@GetMapping("/signin")
	public void signin(Model model) {
		log.info("signin");
		model.addAttribute(("signin"),service.getList());
	}
	
	@GetMapping("/signup")
	public void signup(Model model) {
		log.info("signup");
		model.addAttribute(("signup"),service.getList());
	}
	
	@GetMapping("/weather")
	public void weather(Model model) {
		log.info("weather");
		model.addAttribute(("weather"),service.getList());
	}
	
//	
//	@PostMapping("/register")
//	public String register(BoardVO board, RedirectAttributes rttr) {
//		log.info("register:"+board);
//		service.register(board);
//		rttr.addFlashAttribute("result",board.getBno());
//		return "redirect:/board/list";
//	}
//	
//	@GetMapping({"/get","/modify"})
//	public void get(@RequestParam("bno")Long bno, Model model) {
//		log.info("/get");
//		model.addAttribute("board",service.get(bno));
//	}
//	
//	@PostMapping("/modify")
//	public  String get(BoardVO board, RedirectAttributes rttr) {
//		log.info("modify :"+board);
//		if(service.modify(board)) {
//			rttr.addFlashAttribute("result","success");
//		}
//		return "redirect:/board/list";
//	}
//	
//	@PostMapping("/remove")
//	public String remove(@RequestParam("bno")Long
//			bno, RedirectAttributes rttr) {
//		log.info("remove........"+bno);
//			if(service.remove(bno)) {
//				rttr.addFlashAttribute("result","success");
//			}
//			return "redirect:/board/list";
//		}
//	
//	@GetMapping("/register")
//	public void register() {
//		
//	}
}

	
