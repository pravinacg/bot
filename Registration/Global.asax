<%@ Application Language="C#" %>


<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        var displayModes = System.Web.WebPages.DisplayModeProvider.Instance.Modes;
       // var userAgent = HttpContext.Current.Request.UserAgent.ToLower();


        System.Web.WebPages.DisplayModeProvider.Instance.Modes.Insert(0, new
        System.Web.WebPages.DefaultDisplayMode("Tablet")
        {
            ContextCondition = (ctx =>
            ctx.Request.UserAgent.IndexOf("iPad", StringComparison.OrdinalIgnoreCase) >= 0 ||
            ctx.Request.UserAgent.IndexOf("Android", StringComparison.OrdinalIgnoreCase) >= 0 &&
            ctx.Request.UserAgent.IndexOf("mobile", StringComparison.OrdinalIgnoreCase) < 1)
        });

        System.Web.WebPages.DisplayModeProvider.Instance.Modes.Insert(1, new System.Web.WebPages.DefaultDisplayMode("Mobile")
        {
            ContextCondition = (ctx =>
                System.Web.HttpContext.Current.Request.Browser.IsMobileDevice)
        });


        System.Web.WebPages.DisplayModeProvider.Instance.Modes.Insert(0, new  System.Web.WebPages.DefaultDisplayMode("tablet")
        {
            ContextCondition = (context => (System.Web.WebPages.BrowserHelpers.GetOverriddenUserAgent(context)) == "Tab")
        });

        //DisplayModeProvider.Instance.Modes.Insert(1, new DefaultDisplayMode("tv")
        //{
        //    ContextCondition = (context => GetDeviceType(context.GetOverriddenUserAgent()) == "tv")
        //}); 
        //System.Web.WebPages.DisplayModeProvider.Instance.Modes.Insert(0, new System.Web.WebPages.DefaultDisplayMode ("iPad")
        //{
        //    ContextCondition = (context => context.GetOverriddenUserAgent().IndexOf
        //    ("iPad", StringComparison.OrdinalIgnoreCase) >= 0)
        //});

        // Code that runs on application startup

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
