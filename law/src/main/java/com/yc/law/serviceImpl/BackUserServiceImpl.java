package com.yc.law.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.law.entity.User;
import com.yc.law.mapper.BackUserMapper;
import com.yc.law.service.BackUserService;
import com.yc.law.util.Encrypt;

@Service("userService")
public class BackUserServiceImpl implements BackUserService {

	@Autowired
	private BackUserMapper backUserMapper;
	
	@Override
	public User login(User user) {
		try {
			user.setUpwd(Encrypt.md5AndSha(user.getUpwd()));
			return backUserMapper.findBackUserByNP(user);
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public List<User> findGeneralAll() {
		return backUserMapper.findGeneralUser();
	}
}
