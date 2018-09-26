<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Setup the connection string for AutoAPI. If name is not AutoAPI, 
        // use the parameter to pass the connection string name to use.
        Proinfocus.AutoAPI.Initialize();

        // Optional. Restrict access to these tables. Examples below:
        
        // Proinfocus.AutoAPI.ProtectEndPoints.Add("Users");
        // Proinfocus.AutoAPI.ProtectEndPoints.Add("Customers");

        // Optional. Give alias name to end-points. Examples below.
        // Eg: Users=>People where Users is actual table name and it is mapped to People.
        // API call will be like https://domain.com/api/People or https://domain.com/api/People/1
        
        // Proinfocus.AutoAPI.EndPointAliases.Add("Users=>WhoIamI");
        // Proinfocus.AutoAPI.EndPointAliases.Add("Customers=>Clients");
    }   
     
    void Application_BeginRequest(object sender, EventArgs e)
    {
        // Setup the AutoAPI request handler and start processing the calls.
        Proinfocus.AutoAPI.StartAPI();
    }
</script>
