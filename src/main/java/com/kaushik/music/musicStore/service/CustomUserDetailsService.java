package com.kaushik.music.musicStore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kaushik.music.musicStore.dao.UserRepository;
import com.kaushik.music.musicStore.model.User;

@Service
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;
	
	public CustomUserDetailsService() {
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if(user.equals(null)) {
			throw new UsernameNotFoundException("Not Found Username");
		}
		return new CustomUserDetails(user);
	}

}
