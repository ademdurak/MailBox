<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MailBox.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <fieldset>
        <legend>Kayıt Form <i class="fa fa-pencil pull-right"></i></legend>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Adınız" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtName" runat="server" placeholder="Adınız" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Soyadınız" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtLastname" runat="server" placeholder="Soyadınız" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Mail*" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtMail" runat="server" placeholder="Mail" ValidationGroup="RegisterG" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">            
            <asp:Label ID="CountryText" runat="server" Text="Ülke" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control ddl">
                    <asp:ListItem>Türkiye</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Kategori*" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <div class="checkbox">
                    <label>
                        <asp:CheckBoxList ID="CheckCategory" runat="server">
                            <asp:ListItem Selected="True" Value="1">Gündem</asp:ListItem>
                            <asp:ListItem Value="2">Teknoloji</asp:ListItem>
                            <asp:ListItem Value="3">Spor</asp:ListItem>
                        </asp:CheckBoxList>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Tür*" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <div class="radio">
                    <label>
                        <asp:RadioButtonList ID="RadioType" runat="server">
                            <asp:ListItem Selected="True" Value="1">Günlük</asp:ListItem>
                            <asp:ListItem Value="2">Haftalık</asp:ListItem>
                        </asp:RadioButtonList>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Kayıt ol" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnCancel" ValidationGroup="RegisterG" runat="server" CssClass="btn btn-warning" Text="Temizle" OnClick="btnCancel_Click" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblResult" Text="" runat="server" />
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <asp:RegularExpressionValidator ErrorMessage="Geçersiz mail adresi" Font-Bold="true" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtMail" runat="server" ValidationGroup="RegisterG" /><br />
                <asp:RequiredFieldValidator ErrorMessage="Mail adresi boş geçilemez" ForeColor="Red" Font-Bold="true" ControlToValidate="txtMail" runat="server" />
            </div>
        </div>
    </fieldset>
</asp:Content>
