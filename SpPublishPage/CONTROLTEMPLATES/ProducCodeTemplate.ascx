﻿<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>

<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>

<%@ Import Namespace="Microsoft.SharePoint" %>

<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contoso.ProductCodeTemplate.ascx.cs" Inherits="Contoso.WebControls.FieldControls.CONTROLTEMPLATES.Contoso" %>

<SharePoint:RenderingTemplate ID="ProductCodeRenderingTemplate" runat="server">
    <Template>
        <asp:TextBox ID="ProductCodeTextBox" runat="server" />
        <asp:RegularExpressionValidator ID="ProductCodeValidator" runat="server"
            ControlToValidate="ProductCodeTextBox"
            ErrorMessage="Please enter a valid product code in the format @@@####."
            ValidationExpression="^[A-Z]{3}[0-9]{4}$" />
    </Template>
</SharePoint:RenderingTemplate>

<SharePoint:RenderingTemplate ID="ProductCodeDisplayRenderingTemplate" runat="server">
    <Template>
        <asp:HyperLink ID="ProductCodeHyperLink" runat="server" />
    </Template>
</SharePoint:RenderingTemplate>