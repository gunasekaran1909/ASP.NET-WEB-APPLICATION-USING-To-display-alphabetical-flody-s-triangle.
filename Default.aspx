<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="flodytriangle.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Alphabet Floyd's Triangle</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        h3 {
            color: #333;
        }
        pre {
            font-family: "Courier New", Courier, monospace;
            text-align: left;
            display: inline-block;
            background-color: #f9f9f9;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Alphabet Floyd's Triangle</h2>
            <label for="txtRows">Enter the number of rows:</label>
            <asp:TextBox ID="txtRows" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvRows" runat="server" ControlToValidate="txtRows"
                ErrorMessage="Rows are required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rangeRows" runat="server" ControlToValidate="txtRows" 
                MinimumValue="1" MaximumValue="100" Type="Integer"
                ErrorMessage="Please enter a number between 1 and 100." ForeColor="Red"></asp:RangeValidator>
            <br /><br />
            <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClick="btnGenerate_Click" />
            <br /><br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
