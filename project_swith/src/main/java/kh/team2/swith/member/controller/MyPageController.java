package kh.team2.swith.member.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.team2.swith.api.model.service.CloudinaryService;
import kh.team2.swith.member.model.service.MemberService;
import kh.team2.swith.member.model.vo.Profile;
import kh.team2.swith.member.model.vo.ProfileImg;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private CloudinaryService cloudinaryService;
	// 마이페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String myPage0() {
		return "myPage/myPage";
	}
	@RequestMapping(value = "/myskd", method = RequestMethod.GET)
	public ModelAndView myPage1(Principal principal, ModelAndView mv) {
		String member_id = principal.getName();
		System.out.println(member_id);
		mv.addObject("profileData", memberService.selectProfile(member_id));
		mv.addObject("profileImgData", memberService.selectProfileImg(member_id));
		mv.setViewName("myPage/mySchedule");
		return mv;
	}
	@RequestMapping(value = "/mystd", method = RequestMethod.GET)
	public ModelAndView myPage2(Principal principal, ModelAndView mv) {
		String member_id = principal.getName();
		System.out.println(member_id);
		mv.addObject("profileData", memberService.selectProfile(member_id));
		mv.addObject("profileImgData", memberService.selectProfileImg(member_id));
		mv.setViewName("myPage/myStudy");
		return mv;
	}
	@RequestMapping(value = "/mystden", method = RequestMethod.GET)
	public ModelAndView myPage3(Principal principal, ModelAndView mv) {
		String member_id = principal.getName();
		System.out.println(member_id);
		mv.addObject("profileData", memberService.selectProfile(member_id));
		mv.addObject("profileImgData", memberService.selectProfileImg(member_id));
		mv.setViewName("myPage/myStudyEnroll");
		return mv;
	}
	@RequestMapping(value = "/myinfo", method = RequestMethod.GET)
	public ModelAndView myPage4(Principal principal, ModelAndView mv) {
		String member_id = principal.getName();
		System.out.println(member_id);
		mv.addObject("userData", memberService.selectMember(member_id));
		mv.addObject("profileData", memberService.selectProfile(member_id));
		mv.addObject("profileImgData", memberService.selectProfileImg(member_id));
		mv.setViewName("myPage/myInfoPage");
		return mv;
	}
	@RequestMapping(value = "/myuppwd", method = RequestMethod.GET)
	public ModelAndView myPage5(Principal principal, ModelAndView mv) {
		String member_id = principal.getName();
		System.out.println(member_id);
		mv.addObject("profileData", memberService.selectProfile(member_id));
		mv.addObject("profileImgData", memberService.selectProfileImg(member_id));
		mv.setViewName("myPage/myPwdUpdate2");
		return mv;
	}
	@RequestMapping(value = "/mymout", method = RequestMethod.GET)
	public ModelAndView myPage6(Principal principal, ModelAndView mv) {
		String member_id = principal.getName();
		System.out.println(member_id);
		mv.addObject("profileData", memberService.selectProfile(member_id));
		mv.addObject("profileImgData", memberService.selectProfileImg(member_id));
		mv.setViewName("myPage/myLeavePage");
		return mv;
	}
	
	@RequestMapping(value = "/myprofileajax", method = RequestMethod.POST)
	public String myPage7(Principal principal
			, @RequestParam("file") MultipartFile file
			, Profile vo
			, ProfileImg pvo
			, RedirectAttributes rttr) throws IOException {
		String member_id = principal.getName();
		vo.setMember_id(member_id);
		int result1 = memberService.updateProfile(vo);
		
		Map<String,String> uploadResult = cloudinaryService.upload(file.getBytes(), "profileImg");
		pvo.setMember_id(member_id);
		pvo.setProfile_img_origin(file.getOriginalFilename());
		pvo.setProfile_img_route(uploadResult.get("url"));
		pvo.setProfile_img_save(uploadResult.get("publicId"));
		
		int result2 = memberService.updateProfileImg(pvo);
		
		if(result1 + result2 == 2) {
			rttr.addFlashAttribute("msg","프로필이 성공적으로 변경되었습니다.");
			return "redirect:/mypage/myskd";
		} else {
			rttr.addFlashAttribute("msg","프로필 변경을 실패했습니다.");
			return "redirect:/mypage/myskd";
		}
	}
}
