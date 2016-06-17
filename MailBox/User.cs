using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MailBox
{
    public class User
    {
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Mail { get; set; }
        public string Country { get; set; }
        public List<int> Category { get; set; }
        public int Type { get; set; }
    }
}