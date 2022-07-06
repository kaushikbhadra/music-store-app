package com.kaushik.music.musicStore.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class MusicStoreSecurityConfig{

	
	@Autowired
	private UserDetailsService userDetailsService;
	
	public MusicStoreSecurityConfig() {
	}
	
//	JPA authentication
	@Bean
    public AuthenticationProvider  authenticationProvider(){
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(new BCryptPasswordEncoder());
        return provider;
    }
	
	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/").permitAll()
			.antMatchers("/admin/**").hasAuthority("ADMIN")
			.antMatchers("/customer/**").hasAuthority("USER")
			.and()
			.formLogin()
			.loginPage("/login")
           	.defaultSuccessUrl("/product/product-lists")
           	.failureUrl("/login?error")
            .usernameParameter("username")
            .passwordParameter("password")
            .permitAll()
            .and()
            .logout()
            .logoutSuccessUrl("/login?logout")
            .permitAll();
		
		 return http.build();
     
    }
     

}
