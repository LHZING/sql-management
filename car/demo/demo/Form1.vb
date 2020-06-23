Imports System.Data.SqlClient
Public Class Form1
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        End

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text.ToString = "" Then
            MsgBox("请输入账号！")
        ElseIf TextBox2.Text.ToString = "" Then
            MsgBox("请输入密码！")
        Else
            Try
                Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
                cn = New SqlConnection(cnStr)
                da = New SqlDataAdapter("select * from accounts where name = '" & TextBox1.Text.ToString & "'", cn)
                ds = New DataSet()
                da.Fill(ds, "account")
                If TextBox2.Text.ToString <> ds.Tables("account")(0)(1) Then
                    MsgBox("密码错误！")
                ElseIf ds.Tables("account")(0)(2) = 0 And CheckBox1.Checked = True Then
                    MsgBox("抱歉，您没有管理员权限！")
                ElseIf CheckBox1.Checked = True Then
                    Me.Hide()
                    Form2.Show()
                ElseIf CheckBox1.Checked = False Then
                    Me.Hide()
                    Form3.Show()
                End If
            Catch ex As Exception
                MsgBox("账号不存在！")
            End Try
        End If

    End Sub
End Class
