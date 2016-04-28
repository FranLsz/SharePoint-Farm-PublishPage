<%@ Page Language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="ProductosWebControls" Namespace="SpPublishPage" Assembly="Contoso.Website.Layouts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=8dec8fdacbd4988c" %>

<asp:content contentplaceholderid="PlaceHolderMain" runat="server">
    <PublishingWebControls:EditModePanel ID="EditModePanel" runat="server" CssClass="edit-mode-panel title-edit">

<SharePointWebControls:TextField ID="TitleField" runat="server" FieldName="Title"/>
    </PublishingWebControls:EditModePanel>
    <ProductosWebControls:ProductCodeField ID="ProductCodeField" FieldName="ContosoProductCode" runat="server"></ProductosWebControls:ProductCodeField>
    <PublishingWebControls:RichHtmlField ID="PageContentField" FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server" />
    <WebPartPages:WebPartZone ID="WebPartZone1" Title="Full" runat="server">
        <ZoneTemplate></ZoneTemplate>
    </WebPartPages:WebPartZone>
</asp:content>
