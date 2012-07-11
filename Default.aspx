<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 731px;
            width: 1100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    &nbsp;<asp:Label ID="Branch" runat="server" Text="Branch"></asp:Label>
&nbsp;:
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <br />
    To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    Subject :&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="subappend" runat="server" 
        Text="Branch login details of VIA WORLD for flight ticketing"></asp:Label>
    <br />
    <br />
    Body :&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Dear Team" ></asp:Label>
    
    &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    
    ,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" 
        Text="Please find below the VIA WORLD login ID for "></asp:Label>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Link" runat="server" Text="Link:"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" Text="http://www.viaworld.in/agent"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Type" runat="server" Text="Type:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="user" runat="server" ForeColor="#FF3300" Text="User"></asp:Label>
    
    <br />
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="loginid" runat="server" Text="LoginId:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lid" runat="server" ForeColor="Red" Text="9379770676"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="deskid" runat="server" Text="DeskId:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="desk" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;
    <asp:Label ID="pwd" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    <br />
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Height="285px" TextMode="MultiLine" 
        Width="1035px">
        1)Please do not share your Login / Password details with any individual outside of your branch or with other branches / staff… Avoid MISUSE.
        2)You will have to login each time you access the portal.
        3)The portal will time you out after inactivity (session expiry) depending on the session expiry set on your computer.
        4)BRANCHES WILL BE RESPONSIBLE FOR ALL BILLING FROM THE LOGIN CREATED FOR YOU.
        5)An ‘Auto Nil” entry (Day End) must be done at the end of each day. 
        6)Cheques are not to be collected. The liability of credit against cheques rests with the Branch Head/concerned staff making the booking. 
        7)The amount in full for a Travel transaction against cash or cheque must be transferred to Trip Toe Travels at the end of each day to our Axis Bank and entry through Exchange on Net (Maraekat). The wait for cheque clearance /credit rests with the Branch accepting the cheque.
        
        Note: Use this ID for domestic bookings only, however you can also search international fares in this ID. It is advisable to cross check internatonal fares with our back office team before committing anything to passengers.
        
             
    </asp:TextBox>
    
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit"/>
    
    </form>
</body>
</html>
