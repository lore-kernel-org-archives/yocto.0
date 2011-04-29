Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A6BE4C8024E
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 19:31:36 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Apr 2011 17:31:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,283,1301900400"; d="scan'208";a="427485400"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 28 Apr 2011 17:31:35 -0700
Message-Id: <b159a7d7ceecfee05a7c1dc5e447176ff478444d.1304036312.git.liping.ke@intel.com>
In-Reply-To: <cover.1304036312.git.liping.ke@intel.com>
References: <cover.1304036312.git.liping.ke@intel.com>
Old-Date: Fri, 29 Apr 2011 08:16:51 +0800
Date: Fri, 29 Apr 2011  8:22:06 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] Resend:[Image-Creator]Make bitbake server type configurable(xmlrpc, none)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Apr 2011 00:31:36 -0000

From: Liping Ke <liping.ke@intel.com>

Add -t options in bitbake for configuring server type.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/bin/bitbake |   22 +++++++++++++++++-----
 1 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/bitbake/bin/bitbake b/bitbake/bin/bitbake
index 6d05289..b898f63 100755
--- a/bitbake/bin/bitbake
+++ b/bitbake/bin/bitbake
@@ -39,8 +39,6 @@ import bb.msg
 from bb import cooker
 from bb import ui
 from bb import server
-from bb.server import none
-#from bb.server import xmlrpc
 
 __version__ = "1.11.0"
 logger = logging.getLogger("BitBake")
@@ -71,7 +69,7 @@ def get_ui(config):
         return getattr(module, interface).main
     except AttributeError:
         sys.exit("FATAL: Invalid user interface '%s' specified.\n"
-                 "Valid interfaces: depexp, goggle, ncurses, knotty [default]." % interface)
+                 "Valid interfaces: depexp, goggle, ncurses, hob, knotty [default]." % interface)
 
 
 # Display bitbake/OE warnings via the BitBake.Warnings logger, ignoring others"""
@@ -161,6 +159,9 @@ Default BBFILES are the .bb files in the current directory.""")
     parser.add_option("-u", "--ui", help = "userinterface to use",
                action = "store", dest = "ui")
 
+    parser.add_option("-t", "--servertype", help = "Choose which server to user, none or xmlrpc",
+               action = "store", dest = "servertype")
+
     parser.add_option("", "--revisions-changed", help = "Set the exit code depending on whether upstream floating revisions have changed or not",
                action = "store_true", dest = "revisions_changed", default = False)
 
@@ -175,8 +176,19 @@ Default BBFILES are the .bb files in the current directory.""")
     loghandler = event.LogHandler()
     logger.addHandler(loghandler)
 
-    #server = bb.server.xmlrpc
-    server = bb.server.none
+    # Server type could be xmlrpc or none currently, if nothing is specified,
+    # default server would be none
+    if configuration.servertype:
+        server_type = configuration.servertype
+    else:
+        server_type = 'none'
+
+    try:
+        module = __import__("bb.server", fromlist = [server_type])
+        server = getattr(module, server_type)
+    except AttributeError:
+        sys.exit("FATAL: Invalid server type '%s' specified.\n"
+                 "Valid interfaces: none [default]." % servertype)
 
     # Save a logfile for cooker into the current working directory. When the
     # server is daemonized this logfile will be truncated.
-- 
1.7.0.4


