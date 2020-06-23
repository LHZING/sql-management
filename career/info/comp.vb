Imports System.Data.SqlClient
Public Class comp
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub comp_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
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


        da = New SqlDataAdapter("select 文章名称 from 招聘文章信息", cn)
        ds = New DataSet()
        da.Fill(ds, "paperInfo")
        rcount = ds.Tables("paperInfo").Rows.Count()
        For rCnt = 0 To rcount - 1
            ComboBox2.Items.Add(ds.Tables("paperInfo").Rows(rCnt)(0).ToString())
        Next
    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If ComboBox1.Text.ToString <> "" Then
            stuInfo.Label7.Text = ComboBox1.Text.ToString
            stuInfo.Show()
        Else
            MsgBox("请选择姓名!")
        End If
    End Sub
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If ComboBox2.Text.ToString <> "" Then
            paperInfo.Label10.Text = ComboBox2.Text.ToString
            paperInfo.Show()
        Else
            MsgBox("请选择文章名称!")
        End If
    End Sub
End Class