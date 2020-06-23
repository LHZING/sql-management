Imports System.Data.SqlClient
Imports System.Data.OleDb
Public Class addstu
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub addstu_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 姓名 from 毕业生信息", cn)
        ds = New DataSet()
        da.Fill(ds, "teamInfo")
        rcount = ds.Tables("teamInfo").Rows.Count()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text.ToString = "" Then
            MsgBox("请填写学号！")
        ElseIf TextBox2.Text.ToString = "" Then
            MsgBox("请填写姓名！")
        ElseIf TextBox3.Text.ToString = "" Then
            MsgBox("请填写性别！")
        ElseIf TextBox4.Text.ToString = "" Then
            MsgBox("请填写学院！")
        ElseIf TextBox5.Text.ToString = "" Then
            MsgBox("请填写专业！")
        Else
            Try
                Const cnstr As String = "data source=127.0.0.1; initial catalog=test;integrated security=true;"
                Using Cnn As New SqlConnection(cnstr)
                    Dim SQL As String = "INSERT INTO 毕业生信息 VALUES ('" & TextBox1.Text.ToString & "', '" & TextBox2.Text.ToString & "', '" & TextBox3.Text.ToString & "','" & TextBox4.Text.ToString & "',   '" & TextBox5.Text.ToString & "')"
                    Dim command As New SqlCommand(SQL, Cnn)
                    command.Connection.Open()
                    command.ExecuteNonQuery()
                    Cnn.Close()
                    MsgBox("添加成功！")

                End Using

                TextBox1.Text = ""
                TextBox2.Text = ""
                TextBox3.Text = ""
                TextBox5.Text = ""
                TextBox4.Text = ""

            Catch ex As Exception
                MessageBox.Show("添加失败!", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error)
                MessageBox.Show(ex.Message)
            End Try
        End If
    End Sub
End Class