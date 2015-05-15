using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarkSampirisi_200271985_Lab1
{
    public partial class _default : System.Web.UI.Page
    {
        //String skillsSelection to contain the selected skill choices
        String skillsSelection = "";
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //populate the labels with the enterd information
            lblName.Text = "Name: " + txtName.Text;
            lblPassword.Text = "Password: " + txtPassword.Text;
            lblAddress.Text = "Address: " + Request.Form["txtAddress"];
            lblEducation.Text = "Education Level: " + rdoEducation.Text;
            lblLaptop.Text = "Owns a Laptop? : " + rdoLaptop.Text;
            lblSkills.Text = "Skills: " + skillsSelection;
            lblProvince.Text = "Province: " + ddlProvince.SelectedValue;
            btnSubmit.Enabled = false;         
        }

        protected void chbxSkills_SelectedIndexChanged(object sender, EventArgs e)
        {
            //loop through skills checkbox list
            foreach (ListItem item in chbxSkills.Items)
            {
                if (item.Selected)
                {
                // If the item is selected, add the value to the list.
                    skillsSelection = skillsSelection + item.Text + ", ";
                }

            }
        }
    }
}