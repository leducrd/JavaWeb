package edu.cvtc.web.security;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.google.common.base.Strings;

import edu.cvtc.web.dao.impl.UserIO;
import edu.cvtc.web.model.User;
import edu.cvtc.web.util.CookieUtility;

/**
 * Servlet Filter implementation class RegisterFilter
 */
@WebFilter("/RegisterFilter")
public class RegisterFilter implements Filter {

	private FilterConfig filterConfig = null;
	
	public void init(FilterConfig fConfig) throws ServletException {
		
		this.filterConfig = fConfig;
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		if (isIgnoredPath(request, filterConfig) || isRegistered(request, response)) {
			chain.doFilter(request, response);
		} else {
			((HttpServletRequest) request).getRequestDispatcher("register.jsp").forward(request, response);
		}
	}
	
	private static boolean isIgnoredPath(final ServletRequest request, final FilterConfig filterConfig) {
		
		final String requestURI = ((HttpServletRequest) request).getRequestURI();
		final String pathsToIgnore = filterConfig.getInitParameter("pathsToIgnore");
		
		for (final String path : pathsToIgnore.split(",")) {
			
			if (requestURI.contains(path)) {
				return true;
			}
		}
		
		return false;
	}
	
	private static boolean isRegistered(final ServletRequest request, final ServletResponse response) {
		
		final HttpSession session = ((HttpServletRequest) request).getSession();
		User user = (User) session.getAttribute("user");
		
		if (user == null) {
			
			final Cookie[] cookies = ((HttpServletRequest) request).getCookies();
			final String emailAddress = CookieUtility.getCookieValue(cookies, "emailCookie");
			
			if (Strings.isNullOrEmpty(emailAddress)) {
				return false;
			} else {
				final String path = session.getServletContext().getRealPath("/WEB-INF/EmailList.txt");
				user = UserIO.getUser(emailAddress, path);
				
				if (user == null) {
					return false;
				}
				session.setAttribute("user", user);
				session.setAttribute("registered", true);
			}
			
		}
		return true;
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		filterConfig = null;
	}


}
