<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" type="text/javascript">
         function showHidePassword(obj) {

        if (obj.checked) {

            document.getElementById('<%=PasswordBox.ClientID %>').type = 'text';
            document.getElementById('<%=ConfirmBox.ClientID %>').type = 'text';

        }

        else {

            document.getElementById('<%=PasswordBox.ClientID %>').type = 'password';
            document.getElementById('<%=ConfirmBox.ClientID %>').type = 'password';

        }

    }
    </script>
    <div class="padd">
    
    <div class="container formtext text pad">.
        <div class="row">
            <section class="col-sm-12  col-md-12">
                <div class="col-sm-offset-5">
                     <div class="form-horizontal ">
                    <div class="form-group ">
                    
   <asp:Label CssClass="col-sm-6 control-label " ID="Email" runat="server" Text="Email"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control" placeholder="Enter your email" ID="EmailBox" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validators" ID="EmailValidator" runat="server" ErrorMessage="Field is Required" ForeColor="#FF3300" ControlToValidate="EmailBox" SetFocusOnError="True" ClientIDMode="Static" Display="Dynamic" ViewStateMode="Enabled"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="EmailReg" runat="server"  CssClass="validators" ErrorMessage="Please enter correct emial" SetFocusOnError="True" ClientIDMode="Static" Display="Dynamic" ViewStateMode="Enabled" ControlToValidate="EmailBox" ValidateRequestMode="Enabled" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
    </div></div></div>
                <div class="form-horizontal ">
                    <div class="form-group ">
                    
   <asp:Label CssClass="col-sm-6 control-label " ID="UserName" runat="server" Text="User name"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control" placeholder="Pick a user name" ID="UserNameBox" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validators" ID="UserValidator" runat="server" ErrorMessage="Field is Required" ForeColor="#FF3300" ControlToValidate="UserNameBox" SetFocusOnError="True" ClientIDMode="Static" Display="Dynamic" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
    </div></div></div>
                   
                 <div class="form-horizontal ">
                <div class="form-group ">
                     
   <asp:Label CssClass="col-sm-6 control-label " ID="Password" runat="server" Text="Password"></asp:Label>
      <div class="col-sm-6 ">
       <asp:TextBox CssClass="form-control" placeholder="Enter password" ID="PasswordBox" runat="server" TextMode="Password" ></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validators" ID="passwordValidator" runat="server" ErrorMessage="Field is Required" ForeColor="#FF3300" ControlToValidate="PasswordBox" SetFocusOnError="True" ClientIDMode="Static" Display="Dynamic" ViewStateMode="Enabled"></asp:RequiredFieldValidator>

    </div></div></div>
                  <div class="form-horizontal ">
                <div class="form-group ">
                 
                        
   <asp:Label CssClass="col-sm-6 control-label " ID="ConfirmLabel" runat="server" Text="Confirm Password"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control" placeholder="Confirm Password" TextMode="Password"  ID="ConfirmBox" runat="server"></asp:TextBox> <asp:Label ID="UserExists" CssClass="validators" runat="server" Text="" ></asp:Label>
          <asp:RequiredFieldValidator CssClass="validators" ID="confirmValidator" runat="server" ErrorMessage="Field is required" ControlToValidate="ConfirmBox" SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="comparePassword" CssClass="validators" runat="server" ErrorMessage="Password doesn't match" SetFocusOnError="True" ControlToCompare="PasswordBox" ControlToValidate="ConfirmBox" ForeColor="#FF3300" ClientIDMode="Static" Display="Dynamic" ViewStateMode="Enabled"  ValidateRequestMode="Enabled" ></asp:CompareValidator>
          </div></div></div>  
                 <div class="form-horizontal ">
                    <div class="form-group ">
                <asp:Label CssClass="col-sm-6 control-label " ID="Address" runat="server" Text="Address"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control" placeholder="Enter your Address" ID="AddressBox" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validators" ID="AddressValidator" runat="server" ErrorMessage="Field is Required" ForeColor="#FF3300" ControlToValidate="AddressBox" SetFocusOnError="True" ClientIDMode="Static" Display="Dynamic" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
          <br/>
          <input class="text" id="ShowPassword" type="checkbox" onclick="showHidePassword(this)" />&nbsp;Show Password
    </div></div></div>
                    <div class=" btn-toolbar pull-right col-sm-offset-5   " style="padding-right: 80px">
                 <asp:Button class="btn btn-success  Submit  "  id="SignUp" type="submit" Text="Sign Up"  runat="server" Height="36px" Width="146px" OnClick="SignIn_Click"   />
            </div>
</div>
               
            </section>
        </div>
    </div></div>
</asp:Content>

