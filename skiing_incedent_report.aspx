    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skiing_incedent_report.aspx.cs" Inherits="Assignment_1.skiing_incedent_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skiing incedent report</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css">
</head>
<body>
     <h1>Skiing incedent report</h1>
      
    <form id="aspx_form1" runat="server">
        <!--User input firstname-->
        <section>
            <label for="aspx_user_firstname">Your first name:</label>
            <asp:TextBox runat="server" id="aspx_user_firstname" placeholder="e.g. John..."></asp:TextBox>
            <!--Required Field Validator for user`s first name-->
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please, enter your first name" ControlToValidate="aspx_user_firstname"></asp:RequiredFieldValidator>
        </section>

        <!--User input lastname-->
        <section>
            <label for="aspx_user_lastname">Your last name:</label>
            <asp:TextBox runat="server" id="aspx_user_lastname" placeholder="e.g. Smith..."></asp:TextBox>
            <!--Required Field Validator for user`s last name-->
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please, enter your last name" ControlToValidate="aspx_user_lastname"></asp:RequiredFieldValidator>
        </section>

        <!--User input phone number-->
        <section>
            <label for="aspx_user_phonenumber">Your phone number:</label>
            <asp:TextBox runat="server" id="aspx_user_phonenumber" placeholder=""></asp:TextBox>
            <!-- Regular Expression Validator for user`s phone number
                I used regular expression because for now this is the only way I can check 
                if user`s phone number is valid or not -->
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="aspx_user_phonenumber" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ErrorMessage="Please, enter a valid phone number."></asp:RegularExpressionValidator>
        <!--Source: http://www.harshbaid.in/2013/08/03/regular-expression-for-us-and-canada-phone-number/ 
            Author - Harsh Baid (Sitecore & Microsoft Certified Software Engineer)-->
        </section>

        <!--Checkbox - 1 -->
        <section>
            <label>Your vehicle (used during the incident) </label>
            <asp:CheckBoxList ID="aspx_vehicle" runat="server">
                <asp:ListItem Text="Snowbord" Value="Snowbord"></asp:ListItem>
                <asp:ListItem Text="Skiing" Value="Skiing"></asp:ListItem>            
                <asp:ListItem Text="Trash cover" Value="Trash cover"></asp:ListItem>            
                <asp:ListItem Text="Younger brother" Value="Younger brother"></asp:ListItem>    
            </asp:CheckBoxList>
        </section>
        
        <!--Checkbox - 2 -->
        <section>
            <label>How did you get home?</label>
            <asp:CheckBoxList ID="aspx_home" runat="server">
                <asp:ListItem Text="By my own" Value="By my own"></asp:ListItem>
                <asp:ListItem Text="Helicopter" Value="Helicopter"></asp:ListItem>            
                <asp:ListItem Text="Still here" Value="Still here"></asp:ListItem>            
            </asp:CheckBoxList>
        </section>

        <!--How many fingers broke user? -->
        <section>
            <label>How many fingers have you broken?</label>
            <asp:TextBox runat="server" ID="aspx_fingers"></asp:TextBox>
        <!--Range Validator for user`s broken fingers
            (do not understand why it is not working for numbers from 3 to 10 ? :( )
            -->
            <asp:RangeValidator runat="server"  
                ControlToValidate="aspx_fingers" 
                MinimumValue="0" 
                MaximumValue="20"
                ErrorMessage="Please, enter a fingers number between 0 and 20." >
            </asp:RangeValidator>
        </section>

        <!--radio button - 1 -->
        <section>
            <label>How do you rate your condition?</label>
            <asp:RadioButtonList runat="server" ID="aspx_condition">
                    <asp:ListItem Text="Wow! I wanna repeat that!" Value="Wow! I wanna repeat that!"></asp:ListItem>
                    <asp:ListItem Text="Well, I think that was a bad idea!" Value="Well, I think that was a bad idea!"></asp:ListItem>
                    <asp:ListItem Text="Can somebody kill me?" Value="Can somebody kill me?"></asp:ListItem>
                </asp:RadioButtonList>
        </section>

        <!--radio button - 2 -->
        <section>
            <label>What did you think at the last minute just before the fall ?</label>
            <asp:RadioButtonList runat="server" ID="aspx_last_min">
                    <asp:ListItem Text="My Cat" Value="My Cat"></asp:ListItem>
                    <asp:ListItem Text="I did not know that I am so flexible" Value="I did not know that I am so flexible"></asp:ListItem>
                    <asp:ListItem Text="What a Hack?!?" Value="What a Hack?!"></asp:ListItem>
                </asp:RadioButtonList>
        </section>
        
        <!--drop-down list -->
        <section>
            <label for="level">Level of your insurance:</label>
            <asp:DropDownList runat="server" ID="aspx_insurance">
                    <asp:ListItem Text="- Select one -" Value="- Select one -"></asp:ListItem>
                    <asp:ListItem Text="I can break one more leg!" Value="I can break one more leg!"></asp:ListItem>
                    <asp:ListItem Text="Bring me hot chocolate!" Value="Bring me hot chocolate!"></asp:ListItem>
                    <asp:ListItem Text="Maybe you can call my mom?!" Value="Maybe you can call my mom?"></asp:ListItem>
                    <asp:ListItem Text="You know what to do with my body." Value="You know what to do with my body."></asp:ListItem>
            </asp:DropDownList>
        </section>

        <!-- Validation Summary -->
        <section>
            <label>Did I do everything right?</label>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>

        <!-- Server-side Validation -->
        <section id="confirmbox" runat="server">

        </section>

            <!-- Submit Button -->
        <section>
            <asp:Button id="aspx_Enter" Text="Enter" runat="server" />
        </section>
    </form>
</body>
</html>
