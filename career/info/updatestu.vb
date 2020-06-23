Imports System.Data.SqlClient
Imports System.Data.OleDb

Public Class updatestu
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub updatestu_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 姓名 from 毕业生信息", cn)
        ds = New DataSet()
        da.Fill(ds, "stuInfo")
        rcount = ds.Tables("stuInfo").Rows.Count()
        For rCnt = 0 To rcount - 1
            ComboBox1.Items.Add(ds.Tables("stuInfo").Rows(rCnt)(0).ToString())
        Next
    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Sql As String = "select * from 毕业生信息 where 姓名 = '" + ComboBox1.Text.ToString + "'"
        da = New SqlDataAdapter(Sql, cn)
        ds = New DataSet()
        da.Fill(ds, "stuInfo")
        TextBox1.Text = ds.Tables("stuInfo")(0)(0)
        TextBox2.Text = ds.Tables("stuInfo")(0)(1)
        TextBox3.Text = ds.Tables("stuInfo")(0)(2)
        TextBox4.Text = ds.Tables("stuInfo")(0)(3)
        TextBox5.Text = ds.Tables("stuInfo")(0)(4)

    End Sub
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            Const cnstr As String = "data source=127.0.0.1; initial catalog=test;integrated security=true;"
            Using Cnn As New SqlConnection(cnstr)
                Dim SQL As String = "UPDATE 毕业生信息 SET 姓名 = '" & TextBox2.Text.ToString & "',学号 = '" & TextBox1.Text.ToString & "',性别 = '" & TextBox3.Text.ToString & "',学院 = '" & TextBox4.Text.ToString & "',专业 = '" & TextBox5.Text.ToString & "' WHERE 姓名 = '" & TextBox2.Text.ToString & "'"
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