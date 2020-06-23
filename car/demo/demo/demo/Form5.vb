Imports System.Data.SqlClient
Imports System.Data.OleDb
Public Class Form5
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub Form5_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 车队名 from teamInfo", cn)
        ds = New DataSet()
        da.Fill(ds, "teamInfo")
        rcount = ds.Tables("teamInfo").Rows.Count()
        For rCnt = 0 To rcount - 1
            ComboBox1.Items.Add(ds.Tables("teamInfo").Rows(rCnt)(0).ToString())
        Next
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Sql As String = "select * from teamInfo where 车队名 = '" + ComboBox1.Text.ToString + "'"
        da = New SqlDataAdapter(Sql, cn)
        ds = New DataSet()
        da.Fill(ds, "teamInfo")
        TextBox1.Text = ds.Tables("teamInfo")(0)(0)
        TextBox2.Text = ds.Tables("teamInfo")(0)(1)
        TextBox3.Text = ds.Tables("teamInfo")(0)(2)
        TextBox4.Text = ds.Tables("teamInfo")(0)(3)
        TextBox5.Text = ds.Tables("teamInfo")(0)(4)
        TextBox6.Text = ds.Tables("teamInfo")(0)(6)

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            Const cnstr As String = "data source=127.0.0.1; initial catalog=test;integrated security=true;"
            Using Cnn As New SqlConnection(cnstr)
                Dim SQL As String = "UPDATE teamInfo SET 车队名 = '" & TextBox1.Text.ToString & "',总部 = '" & TextBox2.Text.ToString & "',领队 = '" & TextBox3.Text.ToString & "',一号车手 = '" & TextBox4.Text.ToString & "',二号车手 = '" & TextBox5.Text.ToString & "',官方网站 = '" & TextBox6.Text.ToString & "' WHERE 车队名 = '" & TextBox1.Text.ToString & "'"
                Dim command As New SqlCommand(SQL, Cnn)
                command.Connection.Open()
                command.ExecuteNonQuery()
                Cnn.Close()
                MsgBox("修改成功！")
            End Using
        Catch ex As Exception
            MessageBox.Show("修改失败!", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error)
            MessageBox.Show(ex.Message)
        End Try
    End Sub
End Class