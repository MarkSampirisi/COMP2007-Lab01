<%--
Name: Mark Sampirisi - 200271985
Date: 5/14/2015
Purpose: This is a web form for collecting student information. Upon the user submitting the information, the inputted data is relayed back to the user in text form.--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MarkSampirisi_200271985_Lab1._default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Student Input Form</title>
</head>
<body>
    <%--Form for collecting student information--%>
    <form id="form1" runat="server">
    <div>
        <%--Name, password and address input text boxes--%>
        Name:<br /><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        Password:<br /><asp:TextBox ID="txtPassword" runat="server" type="password"></asp:TextBox>
        <br />
        Address:<br /><textarea id="txtAddress" name="txtAddress" cols="20" rows="3"></textarea>
        <br />

        <%--Radio button list "rdoEducation" to select current level of education--%>
        Education Level:<br />
        <asp:RadioButtonList ID="rdoEducation" runat="server">
            <asp:ListItem Text="High School" Value="High School"></asp:ListItem>
            <asp:ListItem Text="College" Value="College"></asp:ListItem>
            <asp:ListItem Text="Graduate" Value="Graduate"></asp:ListItem>
            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:RadioButtonList><br />
        <%--Check box list "chbxLaptop" asks user to specify if they own a laptop (yes or no)--%>
        Do you own a Laptop?<br />
        <asp:radioButtonList ID="rdoLaptop" runat="server">
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:radioButtonList><br />
        <%--Check box list "chbxSkills" asks user to select all skills that apply to them--%>
        Skills (check all that apply): <br />
        <asp:CheckBoxList ID="chbxSkills" runat="server" OnSelectedIndexChanged="chbxSkills_SelectedIndexChanged">
            <asp:ListItem Text="HTML" Value="HTML"></asp:ListItem>
            <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
            <asp:ListItem Text="CSS" Value="CSS"></asp:ListItem>
            <asp:ListItem Text="C#" Value="C#"></asp:ListItem>
            <asp:ListItem Text="Java" Value="Java"></asp:ListItem>
        </asp:CheckBoxList><br />
        <%--Drop Down List "ddlProvince" asks user to specify from a list which province they live in--%>
        Province:<br />
        <asp:DropDownList ID="ddlProvince" runat="server">
        <asp:ListItem Text="AB" Value="AB"></asp:ListItem>
        <asp:ListItem Text="BC" Value="BC"></asp:ListItem>
        <asp:ListItem Text="ON" Value="ON"></asp:ListItem>
        <asp:ListItem Text="QC" Value="QC"></asp:ListItem>
        </asp:DropDownList><br /><br />
        <%--Submit button--%>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />
    </div>
    <div>
        <%--These labels will show the inputted information after the sumbit button is clicked--%>
        <h4>Results:</h4>
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblEducation" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblLaptop" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblSkills" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblProvince" runat="server" Text=""></asp:Label><br />
    </div>
    </form>
</body>
</html>
