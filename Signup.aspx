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
            <section class="col-sm-12 ">
                <div class="col-sm-offset-5">
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
        <asp:TextBox CssClass="form-control" placeholder="Confirm Password" TextMode="Password"  ID="ConfirmBox" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validators" ID="confirmValidator" runat="server" ErrorMessage="Field is required" ControlToValidate="ConfirmBox" SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:CompareValidator CssClass="validators" ID="comparePassword" runat="server" ErrorMessage="Password doesn't match" SetFocusOnError="True" ControlToValidate="ConfirmBox" ValueToCompare="PasswordBox" Display="Dynamic" ForeColor="Red"></asp:CompareValidator><br/>
          <input class="text" id="ShowPassword" type="checkbox" onclick="showHidePassword(this)" />&nbsp;Show Password
          </div></div></div>  </div>
                    <div class=" btn-toolbar pull-right col-sm-offset-5   " style="padding-right: 80px">
                 <asp:Button class="btn btn-success  Submit  "  id="SignIn" type="submit" Text="Sign in"  runat="server" Height="36px" Width="146px" OnClick="SignIn_Click"   />
            </div>

               
            </section>
        </div>
    </div></div>
</asp:Content>

