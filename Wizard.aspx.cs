using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Collections.Generic;

public partial class Wizard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        person.Text = Profile.FirstName;

        RadioButtonList[] arrRBL = new RadioButtonList[] { Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10 };
        Dictionary<int, string> strQandA = new Dictionary<int, string>();
        for (int i = 0; i < arrRBL.Length; i++)
             strQandA.Add(i + 1, arrRBL[i].SelectedValue);
        Session["mySession"] = strQandA;
        
    }

    protected void score_quiz(object sender, EventArgs e)
    {
        int RightAnswers = 0;
        string commentary = "";

        if (Q1.SelectedValue == "A")
        {
            RightAnswers += 1;
        }

        if (Q2.SelectedValue == "C")
        {
            RightAnswers += 1;
        }

        if (Q3.SelectedValue == "D")
        {
            RightAnswers += 1;
        }

        if (Q4.SelectedValue == "A")
        {
            RightAnswers += 1;
        }

        if (Q5.SelectedValue == "B")
        {
            RightAnswers += 1;
        }

        if (Q6.SelectedValue == "C")
        {
            RightAnswers += 1;
        }

        if (Q7.SelectedValue == "A")
        {
            RightAnswers += 1;
        }

        if (Q8.SelectedValue == "D")
        {
            RightAnswers += 1;
        }

        if (Q9.SelectedValue == "C")
        {
            RightAnswers += 1;
        }

        if (Q10.SelectedValue == "B")
        {
            RightAnswers += 1;
        }

        finalScore.Text = "Your Score: " + "<strong>" + Convert.ToString(RightAnswers) + "</strong>" + " out of 10";

        if (RightAnswers == 10)
        {
            commentary += "<h3 style='color:lime'>" + "Nothin' But Net" + "</h3><br />" + "You must live and breathe basketball. You got them all right. Enjoy the basketball season.";
        }
        else if ((RightAnswers == 7) || (RightAnswers == 8) || (RightAnswers == 9))
        {
            commentary += "<h3 style='color:lime'>" + "Slam Dunk!" + "</h3><br />" + "You're one serious fan of basketball. Keep it up and watch all the NBA action.";
        }
        else if ((RightAnswers == 4) || (RightAnswers == 5) || (RightAnswers == 6))
        {
            commentary += "<h3 style='color:lime'>" + "Nice Shot" + "</h3><br />" + "You can do a little better. Keep trying, and make sure you sit and watch some more basketball this season.";
        }
        else if ((RightAnswers == 0) || (RightAnswers == 1) || (RightAnswers == 2) || (RightAnswers == 3))
        {
            commentary += "<h3 style='color:lime'>" + "Technical Foul!" + "</h3><br />" + "Oh, no game here. Maybe basketball isn't your sport. Or you can prove us wrong by taking the quiz later.";
        }
        else
            commentary += "<h3 style='color:lime'>" + "Score is invalid." + "</h3>";

        scoreCommentary.Text = commentary;
    }

    protected void Wizard1_OnNextButtonClick(object sender, EventArgs e)
    {
        if (Q1.SelectedValue == "A")
        {
            Label1.Text = "Correct!";
        }
        else
        {
            Label1.Text = "Incorrect!";
        }

        if (Q2.SelectedValue == "C")
        {
            Label2.Text = "Correct!";
        }
        else
        {
            Label2.Text = "Incorrect!";
        }

        if (Q3.SelectedValue == "D")
        {
            Label3.Text = "Correct!";
        }
        else
        {
            Label3.Text = "Incorrect!";
        }

        if (Q4.SelectedValue == "A")
        {
            Label4.Text = "Correct!";
        }
        else
        {
            Label4.Text = "Incorrect!";
        }

        if (Q5.SelectedValue == "B")
        {
            Label5.Text = "Correct!";
        }
        else
        {
            Label5.Text = "Incorrect!";
        }

        if (Q6.SelectedValue == "C")
        {
            Label6.Text = "Correct!";
        }
        else
        {
            Label6.Text = "Incorrect!";
        }

        if (Q7.SelectedValue == "A")
        {
            Label7.Text = "Correct!";
        }
        else
        {
            Label7.Text = "Incorrect!";
        }

        if (Q8.SelectedValue == "D")
        {
            Label8.Text = "Correct!";
        }
        else
        {
            Label8.Text = "Incorrect!";
        }

        if (Q9.SelectedValue == "C")
        {
            Label9.Text = "Correct!";
        }
        else
        {
            Label9.Text = "Incorrect!";
        }

        if (Q10.SelectedValue == "B")
        {
            Label10.Text = "Correct!";
        }
        else
        {
            Label10.Text = "Incorrect!";
        }
    }
}