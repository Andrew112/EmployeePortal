﻿
using Logger;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Web.Controllers
{
    public class BaseController : Controller
    {
		private ILog _Log;
		public BaseController()
		{
			_ILog = Log.GetInstance;
		}
		// GET: Base
		protected override void OnException(ExceptionContext filterContext)
		{
			_ILog.LogException(filterContext.Exception.ToString());
			filterContext.ExceptionHandled = true;
			this.View("Error").ExecuteResult(this.ControllerContext);
		}
	}
}