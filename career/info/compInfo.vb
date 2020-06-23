Imports System.Data.SqlClient
Public Class compInfo
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub compInfo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        Dim SQL = "select * from 企业信息 where 企业全称 = '" + Label5.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        ds = New DataSet()
        da.Fill(ds, "compInfo")
        Label5.Text = ds.Tables("compInfo")(0)(1)
        Label6.Text = ds.Tables("compInfo")(0)(0)
        Label7.Text = ds.Tables("compInfo")(0)(2)
        Label8.Text = ds.Tables("compInfo")(0)(3)
    End Sub
End Class