package com.handong.ourapp.popular;

import java.awt.PageAttributes.MediaType;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;



@Controller
@RequestMapping(value = "/popular")
public class PopularController {

	@Autowired
	private PopularServiceImpl popularService;
	
	@Autowired
	private PopularDAO dao;

	@RequestMapping(value = "/popularlist", method = RequestMethod.GET)
	public String foodlist(Model model) {
		model.addAttribute("popularlist", popularService.getPopularList());
		return "popularlist";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value="/addok")
	public String addPostOk(@RequestParam("photo1") MultipartFile photo,PopularVO vo) {
		
	
		try {
			vo.setPhoto(photo.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(popularService.insertPopular(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		
		return "redirect:popularlist";
	}

	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detailPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "detailform";
	}
	
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "editform";
	}
	
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "view";
	}


	/*
	@RequestMapping(value="/editok")
	public String editPostOk(@RequestParam MultipartFile photo,PopularVO vo) {
		
	
		try {
			vo.setPhoto(photo.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(popularService.insertPopular(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		
		return "redirect:popularlist";
	}*/
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOk(PopularVO vo) {
		if (popularService.updatePopular(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공");
		return "redirect:popularlist";
	}

	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if (popularService.deletePopular(id) == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공");
		return "redirect:../popularlist";
	}
	/*
	@RequestMapping(value="/preview.do", produces="text/plain;charset=UTF-8")
    public void preview(HttpServletRequest request, HttpServletResponse response){
        PopularVO fileInfo = null;
        InputStream is = null;
        try {
            String fileId = request.getParameter("fileId");
            
            int fileSeq = Integer.parseInt(request.getParameter("fileSeq"));
            PopularVO param = new PopularVO();
            //param.setPid(fileId);
            param.setPid(fileSeq);
            
            fileInfo = popularService.getByteImage(param);
            
            String contentType = "image/jpeg";
            response.setContentType(contentType); 
    
            is = new ByteArrayInputStream(fileInfo.getPhoto());
            
            ServletOutputStream os = response.getOutputStream();
            int binaryRead;
            
            while ((binaryRead = is.read()) != -1)    {
                os.write(binaryRead);
            }
 
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            
        }
    }


	
	@RequestMapping(value="/view")
	public String view() {
	    return "view";
	}
	     
	
	@RequestMapping(value="/getByteImage/{id}")
	public ResponseEntity<byte[]> getByteImage() {
	    Map<String, Object> map = dao.getByteImage();
	       byte[] imageContent = (byte[]) map.get("photo");
	       final HttpHeaders headers = new HttpHeaders();
	       headers.setContentType(MediaType.IMAGE_PNG);
	       return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
	}*/

}