<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AQICALC.pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AQI CALCULATOR</title> 
    <link href="../css/index.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 50px;
        }
        .auto-style3 {
            width: 149px;
        }
        .auto-style5 {
            text-align: center;
            color: white;
            font-size: 15px;
            font-family: Verdana;
            width: 624px;
        }
        .auto-style6 {
            width: 243px;
        }
        .auto-style7 {
            width: 65px;
        }
        .auto-style9 {
            width: 149px;
            height: 22px;
        }
        .auto-style10 {
            width: 116px;
        }
        .auto-style11 {
            width: 116px;
            height: 22px;
        }
    </style>
</head>
<body style="height: 643px; width: 1004px">
    <form id="form1" runat="server">
        <h1 style="color:aqua; font-family:Algerian;">AIR QUALITY INDEX CALCULATOR</h1>
        <div  class="divmaplink"><asp:HyperLink  CssClass="maplink" runat="server" Text="View Map" NavigateUrl="~/pages/map.aspx" /></div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style7">DATE</td>
                <td class="auto-style6">
                    <asp:Label ID="ldate" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">Station:</td>
                <td class="auto-style3">NSIT</td>
            </tr>
            <tr>
                <td colspan="2" rowspan="2">&nbsp;</td>
                <td class="auto-style11">Cty:</td>
                <td class="auto-style9">Delhi</td>
            </tr>
            <tr>
                <td class="auto-style10">State:</td>
                <td class="auto-style3">Delhi</td>
            </tr>
            </table>
            <table border='1' class="tablecalc">
            <tr>
                <td colspan="2">POLLUTANTS</td>
                <td>Concentration</td>
                <td  >Sub-Index</td>
                <td colspan="2" >AQI QUALITY INDEX</td>
            </tr>
            <tr>
                <td>PM10</td>
                <td class="auto-style1">24-hr avg</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbpm10" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="sipm10" runat="server" Text="0"></asp:Label>
                </td>
                <td rowspan="7">
                    <asp:Button CssClass="baqi" ID="baqi" runat="server" Font-Size="70px" OnClick="baqi_Click" Text="AQI =" />
                </td>
                <td class="res" rowspan="7">
                    <asp:Label CssClass="lres" ID="aqires" runat="server" Text="0" Font-Bold="True" Font-Size="35px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>PM2.5</td>
                <td class="auto-style1">24-hr avg</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbpm2_5" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="sipm2_5" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>SO2</td>
                <td class="auto-style1">24-hr avg</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbso2" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="siso2" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>NOx</td>
                <td class="auto-style1">24-hr avg</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbnox" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="sinox" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>*CO</td>
                <td class="auto-style1">max 8-hr</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbco" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="sico" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>O3</td>
                <td class="auto-style1">max 8-hr</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbo3" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="sio3" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>NH3</td>
                <td class="auto-style1">24-hr avg</td>
                <td>
                    <asp:TextBox CssClass="tb" ID="tbnh3" runat="server" placeholder="Enter value"></asp:TextBox>
                </td>
                <td>
                    <asp:Label CssClass="l" ID="sinh3" runat="server" Text="0"></asp:Label>
                </td>
            </tr>            
            </table>

            <table class="tablecontent">
                <tr>
                <td colspan="7">* Concentrations of minimum three pollutants are required; one of them should be PM10 or PM2.5</td>
            </tr>
            <tr>
                <td colspan="7">* The check displays &quot;1&quot; when a non-zero value is entered</td>
            </tr>
            <tr>
                <td class="good">Good<br />
                    (0–50)</td>
                <td colspan="3" class="con">Minimal Impact</td>
                <td class="poor">Poor<br />
                    (201–300)</td>
                <td colspan="2" class="con">Breathing discomfort to people on prolonged exposure</td>
            </tr>
            <tr>
                <td class="satisfact">Satisfactory<br />
                    (51–100)</td>
                <td colspan="3" class="con">Minor breathing discomfort to sensitive people</td>
                <td class="verypoor">Very Poor<br />
                    (301–400)</td>
                <td colspan="2" class="con">Respiratory illness to the people on prolonged exposure</td>
            </tr>
            <tr>
                <td class="moderate">Moderate<br />
                    (101–200)</td>
                <td colspan="3" class="con">Breathing discomfort to the people with lung,<br />
                    heart disease, children and older adults</td>
                <td class="severe">Severe<br />
                    (&gt;401)</td>
                <td colspan="2" class="con">Respiratory effects even on healthy people</td>
            </tr>
            </table>
    </form>
</body>
</html>
