@RequestMapping("/usr/article/modify") public String
showModify(HttpServletRequest req, int id) { Integer loginedMemberId =
(Integer) req.getSession().getAttribute("loginedMemberId"); if
(loginedMemberId == null) { return "redirect:/usr/member/login"; }

Article article = articleService.getArticleById(id);
req.setAttribute("article", article); return "jsp/article/modify"; }
