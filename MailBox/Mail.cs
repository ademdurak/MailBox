using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MailBox
{
    public class Mail
    {
        public Categories Category { get; set; }
        public String Header { get; set; }
        public String Content { get; set; }
    }
}