
Imports System.Data.SqlClient
Public Class Form3

    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select * from playerRank", cn)
        ds = New DataSet()
        da.Fill(ds, "playerRank")
        DataGridView1.DataSource = ds.Tables("playerRank")
        da = New SqlDataAdapter("select 姓名 from playerInfo", cn)
        ds = New DataSet()
        da.Fill(ds, "playerInfo")
        rcount = ds.Tables("playerInfo").Rows.Count()
        For rCnt = 0 To rcount - 1
            ComboBox1.Items.Add(ds.Tables("playerInfo").Rows(rCnt)(0).ToString())
        Next

    End Sub
    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 姓名,车号,车队,身高,国籍 from playerInfo", cn)
        ds = New DataSet()
        da.Fill(ds, "playerInfo")
        DataGridView1.DataSource = ds.Tables("playerInfo")
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select * from playerRank", cn)
        ds = New DataSet()
        da.Fill(ds, "playerRank")
        DataGridView1.DataSource = ds.Tables("playerRank")
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select * from teamRank", cn)
        ds = New DataSet()
        da.Fill(ds, "teamRank")
        DataGridView1.DataSource = ds.Tables("teamRank")
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select * from teamInfo", cn)
        ds = New DataSet()
        da.Fill(ds, "teamInfo")
        DataGridView1.DataSource = ds.Tables("teamInfo")
    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        If ComboBox1.Text.ToString <> "" Then
            Form7.PictureBox1.Image = System.Drawing.Image.FromFile("../../pic/player/" + ComboBox1.Text.ToString + ".jpg")
            Form7.Label3.Text = ComboBox1.Text.ToString
            Form7.Show()
        Else
            MsgBox("请选择车手!")
        End If
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 车队名,冠军数 from teamInfo order by 冠军数 desc", cn)
        ds = New DataSet()
        da.Fill(ds, "teamInfo")
        DataGridView1.DataSource = ds.Tables("teamInfo")
    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        da = New SqlDataAdapter("select 姓名,领奖台数 from playerInfo order by 领奖台数 desc", cn)
        ds = New DataSet()
        da.Fill(ds, "playerInfo")
        DataGridView1.DataSource = ds.Tables("playerInfo")
    End Sub
End Class
