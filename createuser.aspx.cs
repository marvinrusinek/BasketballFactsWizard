using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        ProfileCommon pc = new ProfileCommon();
        pc.Initialize(CreateUserWizard1.UserName.ToString(), true);

        pc.FirstName = Firstname.Text;
        pc.LastName = Lastname.Text;
        pc.Age = Age.Text;
        
        pc.Save();
    }
}