Imports System.Data.SqlClient
Public Class paperInfo
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub paperInfo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        Dim SQL = "select * from 招聘文章信息 where 文章名称 = '" + Label10.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        ds = New DataSet()
        da.Fill(ds, "paperInfo")
        Label9.Text = ds.Tables("paperInfo")(0)(0)
        Label10.Text = ds.Tables("paperInfo")(0)(1)
        Label11.Text = ds.Tables("paperInfo")(0)(2)
        Label12.Text = ds.Tables("paperInfo")(0)(3)
        Label13.Text = ds.Tables("paperInfo")(0)(4)
        Label14.Text = ds.Tables("paperInfo")(0)(5)
        Label15.Text = ds.Tables("paperInfo")(0)(6)
        Label16.Text = ds.Tables("paperInfo")(0)(7)
    End Sub

    Private Sub TabPage1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TabPage1.Click

    End Sub
End Class