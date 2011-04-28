Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38F734C80570
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 00:45:16 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2011 22:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,278,1301900400"; d="scan'208";a="915442357"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2011 22:45:15 -0700
Message-Id: <a1d0bb2c85741e8d21cefd00c7191f111664cc0a.1303968733.git.liping.ke@intel.com>
In-Reply-To: <cover.1303968733.git.liping.ke@intel.com>
References: <cover.1303968733.git.liping.ke@intel.com>
Old-Date: Thu, 28 Apr 2011 13:26:19 +0800
Date: Thu, 28 Apr 2011 13:35:55 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: (No subject)
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
X-List-Received-Date: Thu, 28 Apr 2011 05:45:16 -0000

From: Liping Ke <liping.ke@intel.com>

Subject: [PATCH 1/1] Resend:[Image-Creator]Make bitbake server type configurable (xmlrpc, none)

Add -t options in bitbake for configuring server type.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/bin/bitbake |   22 +++++++++++++++++-----
 1 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/bitbake/bin/bitbake b/bitbake/bin/bitbake
index 6d05289..2c45224 100755
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
 
+    parser.add_option("-t", "--servertype", help = "choose which server to user, none or xmlrpc",
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
+                 "Valid interfaces: xmlrpc [default]." % servertype)
 
     # Save a logfile for cooker into the current working directory. When the
     # server is daemonized this logfile will be truncated.
-- 
1.7.0.4


