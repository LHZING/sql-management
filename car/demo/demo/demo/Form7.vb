
Imports System.Data.SqlClient
Public Class Form7
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub Label1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label1.Click

    End Sub

    Private Sub Form7_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False

        '获取车手信息
        Dim cnStr As String = "Data Source=127.0.0.1; Initial Catalog=test;Integrated Security=true"
        cn = New SqlConnection(cnStr)
        Dim SQL = "select * from playerInfo where 姓名 = '" + Label3.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        ds = New DataSet()
        da.Fill(ds, "playerInfo")
        Label5.Text = ds.Tables("playerInfo")(0)(2)
        Label7.Text = ds.Tables("playerInfo")(0)(1)
        Label9.Text = ds.Tables("playerInfo")(0)(4)
        Label11.Text = ds.Tables("playerInfo")(0)(3)
        Label13.Text = ds.Tables("playerInfo")(0)(5)
        RichTextBox1.Text = ds.Tables("playerInfo")(0)(13)
        'cn.Close()
        '统计该车手获得的年度冠亚季军数
        Dim num1 As Integer = 0, num2 As Integer = 0, num3 As Integer = 0
        SQL = "select * from playerRank where 冠军 = '" + Label3.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        da.Fill(ds, "num1")
        num1 = ds.Tables("num1").Rows.Count()
        SQL = "select * from playerRank where 亚军 = '" + Label3.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        da.Fill(ds, "num2")
        num2 = ds.Tables("num2").Rows.Count()
        SQL = "select * from playerRank where 季军 = '" + Label3.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        da.Fill(ds, "num3")
        num3 = ds.Tables("num3").Rows.Count()
        Label29.Text = "2000年至2017年，" + Label3.Text.ToString + "获得年度冠军" + num1.ToString + "次，年度亚军" + num2.ToString + "次，年度季军" + num3.ToString + "次。"
        '获取车队信息
        SQL = "select * from teamInfo where 车队名 = '" + Label5.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        ds = New DataSet()
        da.Fill(ds, "teamInfo")
        Me.PictureBox2.Image = System.Drawing.Image.FromFile("../../pic/team/" + Label5.Text.ToString + ".jpg")
        Label16.Text = ds.Tables("teamInfo")(0)(0)
        Label26.Text = ds.Tables("teamInfo")(0)(1)
        Label22.Text = ds.Tables("teamInfo")(0)(2)
        Label18.Text = ds.Tables("teamInfo")(0)(3)
        Label20.Text = ds.Tables("teamInfo")(0)(4)
        Label24.Text = ds.Tables("teamInfo")(0)(5)
        Label28.Text = ds.Tables("teamInfo")(0)(6)
        cn.Close()
        '统计该车队获得的年度冠亚季军数
        SQL = "select * from teamRank where 冠军 = '" + Label16.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        da.Fill(ds, "num4")
        num1 = ds.Tables("num4").Rows.Count()
        SQL = "select * from teamRank where 亚军 = '" + Label16.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        da.Fill(ds, "num5")
        num2 = ds.Tables("num5").Rows.Count()
        SQL = "select * from teamRank where 季军 = '" + Label16.Text.ToString + "'"
        da = New SqlDataAdapter(SQL, cn)
        da.Fill(ds, "num6")
        num3 = ds.Tables("num6").Rows.Count()
        Label30.Text = "2000年至2017年，" + Label16.Text.ToString + "获得年度冠军" + num1.ToString + "次，年度亚军" + num2.ToString + "次，年度季军" + num3.ToString + "次。"

    End Sub
End Class