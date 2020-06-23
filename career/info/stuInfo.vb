Imports System.Data.SqlClient
Public Class stuInfo
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub stuInfo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        Dim SQL = "select * from 毕业生信息 where 姓名 = '" + Label7.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        ds = New DataSet()
        da.Fill(ds, "stuInfo")
        Label6.Text = ds.Tables("stuInfo")(0)(0)
        Label7.Text = ds.Tables("stuInfo")(0)(1)
        Label8.Text = ds.Tables("stuInfo")(0)(2)
        Label9.Text = ds.Tables("stuInfo")(0)(3)
        Label10.Text = ds.Tables("stuInfo")(0)(4)
    End Sub

    Private Sub TabPage1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TabPage1.Click

    End Sub
End Class