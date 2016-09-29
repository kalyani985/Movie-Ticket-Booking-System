<%@ Page Title="" Language="C#" MasterPageFile="~/SMB_team7/cinema.Master" AutoEventWireup="true" CodeBehind="MovieDetail.aspx.cs" Inherits="Movie_Team7.SMB_team7.MovieDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 311px;
    }
    .auto-style2 {
        height: 18px;
    }
    .auto-style3 {
        width: 218px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table class="movies">
        <tr>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="MoviePicture"></asp:Label>
            </td>
            <td>&nbsp;<table class="movies">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movie Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="detailName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="detailLanguage" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Release Date:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="detailRelease" runat="server" Text="lable"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Runtime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="detailRuntime" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="detailDescription" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="movies">
        <tr>
            <td class="auto-style3">
                <asp:TreeView ID="detailCinema" runat="server" OnSelectedNodeChanged="detailCinema_SelectedNodeChanged">
                </asp:TreeView>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="561px">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Book" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</form>

</asp:Content>
