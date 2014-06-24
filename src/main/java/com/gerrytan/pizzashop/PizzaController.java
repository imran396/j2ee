package com.gerrytan.pizzashop;

import java.util.List;

import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


@Controller
@RequestMapping("/")
public class PizzaController {

    @Autowired
    private PizzaDAO pizzaDAO;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {
        List<Pizza> pizzas = pizzaDAO.findAll();
        model.addAttribute("pizzas", pizzas);

        List<Pizza> pizzasWithToppings = pizzaDAO.findAllWithToppings();
        model.addAttribute("pizzasWithToppings", pizzasWithToppings);
        return "index";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String testing() {
        return "new";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)

    public ModelAndView processSubmit(
            @ModelAttribute("pizza") Pizza pizza,
            BindingResult result) {
        System.out.println("pizza Name:" + pizza.getName());
        String test = pizzaDAO.insertData(pizza);
        System.out.println(test);
        //return form success view
        return new ModelAndView("redirect:");

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)

    public String edit(@PathVariable String id,Model model) {

       System.out.println(id);
       List<Pizza> pizza = pizzaDAO.findById(id);
        model.addAttribute("pizza", pizza);

       return "edit";
    }

}
