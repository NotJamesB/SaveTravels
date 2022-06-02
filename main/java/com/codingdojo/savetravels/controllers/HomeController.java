package com.codingdojo.savetravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.services.ExpenseService;

@Controller
public class HomeController {
	
	@Autowired
	ExpenseService expenseService;
	
	@RequestMapping("/expense")
	public String index(Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("allExpenses", expenses);
		return "index.jsp";
	}
	@GetMapping("/expense/new")
	public String newExpense(@ModelAttribute("expense") Expense expense) {
		return "new.jsp";
	}
    @PostMapping("/expense")
    public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
            expenseService.createExpense(expense);
            return "redirect:/expense";
        }
    }
	
}
