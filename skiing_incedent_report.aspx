<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skiing_incedent_report.aspx.cs" Inherits="Assignment_1.skiing_incedent_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skiing incedent report</title>
</head>
<body>
     <h1>Skiing incedent report</h1>
      
    <form id="form1" runat="server">
        <section>
            <label for="firstname">Your first name:</label>
            <asp:TextBox runat="server" id="firstname" placeholder="e.g. John..."></asp:TextBox>
        </section>

        <section>
            <label for="lastname">Your last name:</label>
            <asp:TextBox runat="server" id="lastname" placeholder="e.g. Smith..."></asp:TextBox>
        </section>

        <!--Checkbox - 1 -->
        <section>
            <h2>Your vehicle (used during the incident) </h2>
            <asp:CheckBoxList ID="aspx_vehicle" runat="server">
                <asp:ListItem Text="Snowbord" Value="Snowbord"></asp:ListItem>
                <asp:ListItem Text="Skiing" Value="Skiing"></asp:ListItem>            
                <asp:ListItem Text="Trash cover" Value="Trash cover"></asp:ListItem>            
                <asp:ListItem Text="Younger brother" Value="Younger brother"></asp:ListItem>    
            </asp:CheckBoxList>
        </section>
        
        <!--Checkbox - 2 -->
        <section>
            <h2>How did you get home?</h2>
            <asp:CheckBoxList ID="aspx_home" runat="server">
                <asp:ListItem Text="By my own" Value="By my own"></asp:ListItem>
                <asp:ListItem Text="Helicopter" Value="Helicopter"></asp:ListItem>            
                <asp:ListItem Text="Still here" Value="Still here"></asp:ListItem>            
            </asp:CheckBoxList>
        </section>

        <!--radio button - 1 -->
        <fieldset>
            <legend>How do you rate your condition?</legend>
            <asp:RadioButtonList runat="server" ID="aspx_condition">
                    <asp:ListItem Text="Wow! I wanna repeat that!" Value="Wow! I wanna repeat that!"></asp:ListItem>
                    <asp:ListItem Text="Well, I think that was a bad idea!" Value="Well, I think that was a bad idea!"></asp:ListItem>
                    <asp:ListItem Text="Can somebody kill me?" Value="Can somebody kill me?"></asp:ListItem>
                </asp:RadioButtonList>
        </fieldset>

        <!--radio button - 2 -->
        <fieldset>
            <legend>What did you think at the last minute just before the fall ?</legend>
            <asp:RadioButtonList runat="server" ID="aspx_last_min">
                    <asp:ListItem Text="My Cat" Value="My Cat"></asp:ListItem>
                    <asp:ListItem Text="I did not know that I am so flexible" Value="I did not know that I am so flexible"></asp:ListItem>
                    <asp:ListItem Text="What a Hack?!?" Value="What a Hack?!"></asp:ListItem>
                </asp:RadioButtonList>
        </fieldset>
        
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

            <!-- Submit Button -->
        <section>
            <asp:Button id="Enter" Text="Enter" runat="server" />
        </section>
    </form>
</body>
</html>
