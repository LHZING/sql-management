Imports System.Data.SqlClient
Imports System.Data.OleDb
Public Class Form6
    Dim cn As SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim rcount As Integer
    Dim ccount As Integer
    Private Sub Form6_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        DateTimePicker1.Format = DateTimePickerFormat.Custom
        DateTimePicker1.CustomFormat = "yyyy-MM-dd"
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

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If TextBox1.Text.ToString = "" Then
            MsgBox("请填写姓名！")
        ElseIf ComboBox1.Text.ToString = "" Then
            MsgBox("请填写隶属车队！")
        ElseIf TextBox2.Text.ToString = "" Then
            MsgBox("请填写车号！")
        ElseIf TextBox3.Text.ToString = "" Then
            MsgBox("请填写出生地！")
        ElseIf DateTimePicker1.Value.ToString = "" Then
            MsgBox("请填写生日！")
        ElseIf TextBox5.Text.ToString = "" Then
            MsgBox("请填写国籍！")
        ElseIf TextBox6.Text.ToString = "" Then
            MsgBox("请填写身高！")
        ElseIf TextBox7.Text.ToString = "" Then
            MsgBox("请填写体重！")
        ElseIf TextBox8.Text.ToString = "" Then
            MsgBox("请填写个人网站！")
        Else
            Try
                Const cnstr As String = "data source=127.0.0.1; initial catalog=test;integrated security=true;"
                Using Cnn As New SqlConnection(cnstr)
                    'Dim SQL As String = "INSERT INTO playerInfo SET 车队名 = '" & TextBox1.Text.ToString & "',总部 = '" & TextBox2.Text.ToString & "',领队 = '" & TextBox3.Text.ToString & "',一号车手 = '" & TextBox4.Text.ToString & "',二号车手 = '" & TextBox5.Text.ToString & "',官方网站 = '" & TextBox6.Text.ToString & "' WHERE 车队名 = '" & TextBox1.Text.ToString & "'"

                    Dim SQL As String = "INSERT INTO playerInfo VALUES ('" & TextBox1.Text.ToString & "', '" & TextBox2.Text.ToString & "', '" & ComboBox1.Text.ToString & "', '" & TextBox3.Text.ToString & "', '" & DateTimePicker1.Value.ToString & "', '" & TextBox5.Text.ToString & "', '" & TextBox6.Text.ToString & "', '" & TextBox7.Text.ToString & "', 'None yet','0','0（0）','0','" & TextBox8.Text.ToString & "','A Freshman')"
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
                TextBox6.Text = ""
                TextBox7.Text = ""
                TextBox8.Text = ""
                ComboBox1.Text = ""
            Catch ex As Exception
                MessageBox.Show("添加失败!", "错误", MessageBoxButtons.OK, MessageBoxIcon.Error)
                MessageBox.Show(ex.Message)
            End Try

        End If

    End Sub
End Class