﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using _17help.Models;

namespace _17help.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Confusion()
        {
            return View();
        }
        public IActionResult nav()
        {
            return View();
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Register()
        {
            return View();
        }

        public IActionResult LogOn()
        {
            return View();
        }

        public IActionResult FirstProblem()
        {
            return View();
        }

        public IActionResult Problem()
        {

            return View();
            
        }
        public IActionResult ProblemIndex()
        {
            return View();
        }

        public IActionResult Navbar()
        {
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
