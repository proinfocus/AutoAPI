<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Setup the connection string for AutoAPI. If name is not AutoAPI, 
        // use the parameter to pass the connection string name to use.
        Proinfocus.AutoAPI.Initialize();

        // Optional. Restrict access to these tables.
        // AutoAPI.ProtectEndPoints.Add("Users");
        // AutoAPI.ProtectEndPoints.Add("Customers");
    }   
     
    void Application_BeginRequest(object sender, EventArgs e)
    {
        // Setup the AutoAPI request handler and start processing the calls.
        Proinfocus.AutoAPI.StartAPI();
    }
</script>
