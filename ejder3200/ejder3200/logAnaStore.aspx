﻿<%@ Page Title="" Language="C#" MasterPageFile="~/logStore.Master" AutoEventWireup="true" CodeBehind="logAnaStore.aspx.cs" Inherits="ejder3200.logAnaStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="text-align: center; margin:auto;">
     <br />
     <br />
<h3> <strong>ALIŞVERİŞ YAPABİLMEK İÇİN GİRİŞ YAPINIZ</strong></h3> <br />

    <asp:Repeater ID="rptCards" runat="server">
    <ItemTemplate>
        <%# (Container.ItemIndex % 3 == 0 ? "<div class='row'>" : "") %>
        <div class="col-md-4">
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        
                        <img class="d-block w-100" src='<%# Eval("r1") %>' alt="After" />
                        <%--<h3>AFTER</h3>--%>
                        <div class="additional-info">
                           <h4><%# Eval("ad") %></h4>
                            <h4><%# Eval("fiyat") %></h4><h5>TL</h5>
                            <%--<button class="btn btn-primary">Sepete Ekle</button>--%>
                        </div>
                    </div>
                    <div class="card-back">
                        <img class="d-block w-100" src='<%# Eval("r2") %>' alt="Before" />
                        <%--<h3>BEFORE</h3>--%>
                        <div class="additional-info">
                             <h4><%# Eval("ad") %></h4>
                            <h4><%# Eval("fiyat") %></h4><h5>TL</h5>
                            <%--<button class="btn btn-primary">Sepete Ekle</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%# (Container.ItemIndex % 3 == 2 || Container.ItemIndex == rptCards.Items.Count - 1 ? "</div>" : "") %>
    </ItemTemplate>
</asp:Repeater>

</div>
</asp:Content>