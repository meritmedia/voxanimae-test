
Partial Public Class voxanimae_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ipaddr.Text = Request.ServerVariables("REMOTE_ADDR")


        Using connection As New Data.SqlClient.SqlConnection("Data Source=72.18.154.138,1533;Initial Catalog=meritmedia;Persist Security Info=True;User ID=appuser;Password=2muchinfo")
            Dim command As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand()


            command.Connection = connection
            command.CommandText = "appuser.va_views_p"
            command.CommandType = Data.CommandType.StoredProcedure

            Dim parameter As New Data.SqlClient.SqlParameter()
            parameter.ParameterName = "@ip"
            parameter.SqlDbType = Data.SqlDbType.NVarChar
            parameter.Direction = Data.ParameterDirection.Input
            parameter.Value = ipaddr.Text

            command.Parameters.Add(parameter)
            connection.Open()
            Dim reader As Data.SqlClient.SqlDataReader = command.ExecuteReader()

        End Using
    End Sub




    ' Dim WithEvents emaillistBtn As New Button

    Protected Sub emaillist_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles emaillistBtn.ServerClick

        If addy.Text = "" Then
            status.InnerText = "Please enter an email address."
        Else
            Dim regex As Regex = New Regex("^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$")
            Dim match As Match = regex.Match(addy.Text)

            If match.Success Then

                Using connection As New Data.SqlClient.SqlConnection("Data Source=72.18.154.138,1533;Initial Catalog=meritmedia;Persist Security Info=True;User ID=appuser;Password=2muchinfo")
                    Dim command As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand()

                    command.Connection = connection
                    command.CommandText = "appuser.va_emaillist_p"
                    command.CommandType = Data.CommandType.StoredProcedure

                    Dim parameter As New Data.SqlClient.SqlParameter()
                    parameter.ParameterName = "@addy"
                    parameter.SqlDbType = Data.SqlDbType.NVarChar
                    parameter.Direction = Data.ParameterDirection.Input

                    parameter.Value = addy.Text
                    command.Parameters.Add(parameter)
                    connection.Open()
                    Dim reader As Data.SqlClient.SqlDataReader = command.ExecuteReader()
                    If reader.HasRows Then
                        Do While reader.Read()
                            status.InnerText = "Thank you for joining our list!" 'reader.GetString(0)
                        Loop

                    End If
                End Using
            Else
                status.InnerText = "Bad email address."
            End If
        End If
    End Sub


    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub
End Class
