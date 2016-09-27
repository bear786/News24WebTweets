<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="News24WebTweets.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News24 Tweets</title>
    <link href="Content/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="item">
                        <div class="head">
                            <div class="name">
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Icon") %>' runat="server" />
                                <span class="user"><%# Eval("Name") %></span>
                            </div>
                            <div class="time">
                                <%# Eval("RelativeTime") %>
                            </div>
                        </div>

                        <div class="tweet-wrapper">
                            <span class="text"><%# Eval("Text") %></span>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
