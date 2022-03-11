<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Τροποποίηση εγγραφής</title>
</head>
<body bgcolor="#968e8d">
    <form id="form1" runat="server" >
        <div style="height: 613px; width: 1359px" back-color="grey">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Τροποποίηση εγγραφής"></asp:Label>
            <br />
            <br />
            *Στον παρακάτω πίνακα φαίνονται τα στοιχεία των εμβολιασμένων και υπάρχει η δυνατότητα τροποποίησης οποιασδήποτε εγγραφής .<br />
            <br />
            *Πατώντας το κουμπί Αρχική Σελίδα επιστρέφετε στην κεντρική σελίδα.<br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Αρχική Σελίδα" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="1268px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Αμκα" HeaderText="Αμκα" SortExpression="Αμκα" />
                    <asp:BoundField DataField="Όνομα" HeaderText="Όνομα" SortExpression="Όνομα" />
                    <asp:BoundField DataField="Επίθετο" HeaderText="Επίθετο" SortExpression="Επίθετο" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Τηλέφωνο" HeaderText="Τηλέφωνο" SortExpression="Τηλέφωνο" />
                    <asp:BoundField DataField="Φύλο" HeaderText="Φύλο" SortExpression="Φύλο" />
                    <asp:BoundField DataField="Ηλικία" HeaderText="Ηλικία" SortExpression="Ηλικία" />
                    <asp:BoundField DataField="Διεύθυνση_κατοικίας" HeaderText="Διεύθυνση_κατοικίας" SortExpression="Διεύθυνση_κατοικίας" />
                    <asp:BoundField DataField="Ημερομηνία_ώρα" HeaderText="Ημερομηνία_ώρα" SortExpression="Ημερομηνία_ώρα" />
                    <asp:BoundField DataField="Υποκείμενα_νοσήματα" HeaderText="Υποκείμενα_νοσήματα" SortExpression="Υποκείμενα_νοσήματα" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="C:\Users\gfilippaios\Desktop\WebApplication2\database\ides5.mdb" DeleteCommand="DELETE FROM `Table1` WHERE `ID` = ?" InsertCommand="INSERT INTO `Table1` (`ID`, `Αμκα`, `Όνομα`, `Επίθετο`, `Email`, `Τηλέφωνο`, `Φύλο`, `Ηλικία`, `Διεύθυνση_κατοικίας`, `Ημερομηνία_ώρα`, `Υποκείμενα_νοσήματα`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `ID`, `Αμκα`, `Όνομα`, `Επίθετο`, `Email`, `Τηλέφωνο`, `Φύλο`, `Ηλικία`, `Διεύθυνση_κατοικίας`, `Ημερομηνία_ώρα`, `Υποκείμενα_νοσήματα` FROM `Table1`" UpdateCommand="UPDATE `Table1` SET `Αμκα` = ?, `Όνομα` = ?, `Επίθετο` = ?, `Email` = ?, `Τηλέφωνο` = ?, `Φύλο` = ?, `Ηλικία` = ?, `Διεύθυνση_κατοικίας` = ?, `Ημερομηνία_ώρα` = ?, `Υποκείμενα_νοσήματα` = ? WHERE `ID` = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="Αμκα" Type="String" />
                    <asp:Parameter Name="Όνομα" Type="String" />
                    <asp:Parameter Name="Επίθετο" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Τηλέφωνο" Type="String" />
                    <asp:Parameter Name="Φύλο" Type="String" />
                    <asp:Parameter Name="Ηλικία" Type="String" />
                    <asp:Parameter Name="Διεύθυνση_κατοικίας" Type="String" />
                    <asp:Parameter Name="Ημερομηνία_ώρα" Type="String" />
                    <asp:Parameter Name="Υποκείμενα_νοσήματα" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Αμκα" Type="String" />
                    <asp:Parameter Name="Όνομα" Type="String" />
                    <asp:Parameter Name="Επίθετο" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Τηλέφωνο" Type="String" />
                    <asp:Parameter Name="Φύλο" Type="String" />
                    <asp:Parameter Name="Ηλικία" Type="String" />
                    <asp:Parameter Name="Διεύθυνση_κατοικίας" Type="String" />
                    <asp:Parameter Name="Ημερομηνία_ώρα" Type="String" />
                    <asp:Parameter Name="Υποκείμενα_νοσήματα" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
