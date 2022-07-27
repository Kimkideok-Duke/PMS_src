package team5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.TestDao;

@Service
public class TestService {
	@Autowired(required=false)
	private TestDao dao;
}
