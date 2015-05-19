package com.team9.kwiz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team9.kwiz.model.SignUp;
import com.team9.kwiz.model.User;
import com.team9.kwiz.dao.SignUpDAO;;


@Controller
public class SignUpController {
	@Autowired private SignUpDAO signUpDAO;


	
}
