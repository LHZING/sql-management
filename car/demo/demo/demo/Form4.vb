Imports System.Data.SqlClient
Imports System.Data.OleDb

Public Class Form4
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub Form4_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 姓名 from playerInfo", cn)
        ds = New DataSet()
        da.Fill(ds, "playerInfo")
        rcount = ds.Tables("playerInfo").Rows.Count()
        For rCnt = 0 To rcount - 1
            ComboBox1.Items.Add(ds.Tables("playerInfo").Rows(rCnt)(0).ToString())
        Next
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If ComboBox1.Text.ToString = "" Then
            MsgBox("请选择车手！")
        Else
            Try
                Const cnstr As String = "data source=127.0.0.1; initial catalog=test;integrated security=true;"
                Using Cnn As New SqlConnection(cnstr)
                    Dim command As New SqlCommand("DELETE FROM playerInfo WHERE 姓名 = '" & ComboBox1.Text.ToString & "'", Cnn)
                    command.Connection.Open()
                    command.ExecuteNonQuery()
                    da = New SqlDataAdapter("select 姓名 from playerInfo", Cnn)
                    ds = New DataSet()
                    da.Fill(ds, "playerInfo")
                    rcount = ds.Tables("playerInfo").Rows.Count()
                    ComboBox1.Items.Clear()
                    For rCnt = 0 To rcount - 1
                        ComboBox1.Items.Add(ds.Tables("playerInfo").Rows(rCnt)(0).ToString())
                    Next
                    Cnn.Close()
                End Using
                MessageBox.Show("删除成功!", "成功", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Catch ex As Exception
                MessageBox.Show("删除失败!", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error)
                MessageBox.Show(ex.Message)
            End Try
        End If
    End Sub

End Class