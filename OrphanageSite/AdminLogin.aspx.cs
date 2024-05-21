﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrphanageSite
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUsername"] != null)
            {
                Response.Redirect("~/Admin/AdminDashboard.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // For demonstration purposes, let's assume the admin username is "admin" and password is "password"

            if (username == "admin" && password == "password")
            {
                // Admin authentication successful, store admin username in session
                Session["AdminUsername"] = username;
                // Redirect to admin dashboard
                Response.Redirect("~/Admin/AdminDashboard.aspx");
            }
            else
            {
                // Admin authentication failed, display error message
                lblMessage.Text = "Invalid username or password";
            }
        }
    }
}