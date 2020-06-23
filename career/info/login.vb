Imports System.Data.SqlClient
Public Class login
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub login_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
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
                da = New SqlDataAdapter("select * from 用户信息 where 账号 = '" & TextBox1.Text.ToString & "'", cn)
                ds = New DataSet()
                da.Fill(ds, "account")
                If TextBox2.Text.ToString <> ds.Tables("account")(0)(1) Then
                    MsgBox("密码错误！")
                ElseIf ds.Tables("account")(0)(0) = "管理员" And CheckBox1.Checked = True Then


                    admin.Show()
                ElseIf ds.Tables("account")(0)(0) = "企业" And CheckBox2.Checked = True Then

                    comp.Show()
                ElseIf ds.Tables("account")(0)(0) = "学生" And CheckBox3.Checked = True Then

                    student.Show()
                End If
            Catch ex As Exception
                MsgBox("账号不存在！")
            End Try
        End If

    End Sub
End Class
