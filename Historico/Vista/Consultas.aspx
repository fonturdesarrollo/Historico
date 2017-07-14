<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="Historico.Consultas" %>

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Histórico RRHH</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	    <style type="text/css">
            .auto-style1 {
                width: 628px;
            }
        </style>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Histórico</strong> RRHH</a>

								</header>

							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1><asp:Label ID="lblTitulo" runat ="server"></asp:Label><br /></h1>
										</header>

										<ul class="actions"
											
										</ul>
									</div>
									<span class="image object">
										<img src="images/pic10.jpg" alt="" />
									</span>
								</section>

							<!-- Section -->
                            <form id="form1" runat="server">
                                
                            <table>
                                <tr class="auto-style2" >
                                    <td class="auto-style1">
                                        <asp:Label runat="server" ID="lblCedula" Text="Cedula"  ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCedula" Width="250px" Text=""></asp:TextBox>
                                        <ASP:RequiredFieldValidator id="rqrValidaCedula" runat="server" errormessage="Debe colocar la cedula" width="132px" controltovalidate="txtCedula" display="Dynamic" ForeColor ="Red"></ASP:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="auto-style2" >
                                    <td class="auto-style1">
                                        <asp:Label runat="server" ID="lblFecha1" Text="Fecha quincena, ejemplo: para consultar la primera quincena del mes coloque (01/MES/AÑO), para consultar la segunda quincena coloque (16/MES/AÑO)"  ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtFecha1" Width="250" Text=""></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                                    
                                <p><asp:Button Text="Buscar" runat="server" ID ="btnGuardaLista"  CssClass ="button" CausesValidation="true" OnClick="btnGuardaLista_Click" /></p>

                                        <asp:GridView ID="gridDetalle" runat="server" CssClass="subtitulo" EmptyDataText="No existen Registros" 
                                            GridLines="Horizontal" AutoGenerateColumns="False" OnRowCommand="gridDetalle_RowCommand" >
                                            <HeaderStyle CssClass ="registroTitulo" Font-Size="10px" />
                                            <AlternatingRowStyle CssClass ="registroNormal" Font-Size="10px" />
                                                <RowStyle CssClass ="registroAlternado" Font-Size="10px" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Quincena 1" HeaderStyle-Width="80">
                                                    <ItemTemplate>
                                                         <asp:Label runat="server" ID="lblPQuincena" Text='<%# Eval("Quincena1") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Quincena 2" HeaderStyle-Width="80">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblSQuincena" Text='<%# Eval("Quincena2") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Cédula" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblCedula" Text='<%# Eval("Cedula") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Apellido" HeaderStyle-Width="50">
                                                    <ItemTemplate>
                                                     <asp:Label runat="server" ID="lblApellido" Text='<%# Eval("Apellido") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Nombre" HeaderStyle-Width="50">
                                                    <ItemTemplate>
                                                     <asp:Label runat="server" ID="lblNombre" Text='<%# Eval("Nombre") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Concepto" HeaderStyle-Width="50">
                                                    <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblCodigo" Text='<%# Eval("CodigoConcepto") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Nombre Concepto" HeaderStyle-Width="80">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblNombreConcepto" Text='<%# Eval("NombreConcepto") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Importe" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblImporte" Text='<%# Eval("Importe") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 1" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar1" Text='<%# Eval("Variacion1") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 2" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar2" Text='<%# Eval("Variacion2") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 3" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar3" Text='<%# Eval("Variacion3") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 4" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar4" Text='<%# Eval("Variacion4") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 5" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar5" Text='<%# Eval("Variacion5") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 6" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar6" Text='<%# Eval("Variacion6") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Variación 7" HeaderStyle-Width="60">
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" ID="lblVar7" Text='<%# Eval("Variacion7") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>


                                  </form>


							<!-- Section -->


						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->


							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
                                        <li><a href="../Index.aspx">Inicio</a></li>
                                        <li><a href="Consultas.aspx?TipoNomina=Fijos">Fijos</a></li>
										<li><a href="Consultas.aspx?TipoNomina=Pasaje">Pasaje</a></li>
										<li><a href="Consultas.aspx?TipoNomina=NuevoCirco">Nuevo Circo</a></li>
										<li>Acción Centralizada (EN CONSTRUCCION)</li>
									</ul>
								</nav>

							<!-- Section -->

							<!-- Section -->


							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy;: Desarrollado por la Gerencia de TI, División de Desarrollo de Sistemas.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assets/js/main.js"></script>

	</body>
</html>