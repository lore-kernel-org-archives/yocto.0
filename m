Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96137E00AF1
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2014 10:23:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="494628101"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id C37E15F803F2; Wed,  5 Mar 2014 10:23:32 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:04 -0800
Message-Id: <f621f0a513c35c95a2464e1d37818ca601264b08.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 13/27] yocto-start/stop-autobuilder: start buildslave-janitor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Mar 2014 18:27:56 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

This adds starting and stopping the buildslave janitor
automatically.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 yocto-start-autobuilder | 24 ++++++++++++++----------
 yocto-stop-autobuilder  | 41 +++++++++++++++++++++++++++++++----------
 2 files changed, 45 insertions(+), 20 deletions(-)

diff --git a/yocto-start-autobuilder b/yocto-start-autobuilder
index 0998ee3..b34a60d 100755
--- a/yocto-start-autobuilder
+++ b/yocto-start-autobuilder
@@ -51,14 +51,14 @@ if os.path.isfile(os.path.join(AB_BASE, ".setupdone")):
     parser = SafeConfigParser()
     parser.read('config/autobuilder.conf')
     print
-    print "Reading " + os.path.join(AB_BASE, "conf/autobuilder.conf")
+    print "Reading " + os.path.join(AB_BASE, "config/autobuilder.conf")
     print 
     os.environ["SLAVEBASEDIR"] = AB_BASE.strip('"') + "/yocto-slave"
     print ' Setting %s to %s' % ("SLAVEBASEDIR", AB_BASE + "/yocto-slave")
     for section_name in parser.sections():
         for name, value in parser.items(section_name):
             print ' Setting %s to %s' % (name.upper(), value)
-            os.environ[name.upper()] = value.strip('"')
+            os.environ[name.upper()] = value.strip('"').strip("'")
             if os.environ[name.upper()].endswith("_DIR"):
                 if not os.path.exists(value):
                     try:
@@ -69,16 +69,20 @@ if os.path.isfile(os.path.join(AB_BASE, ".setupdone")):
     print
 
     if sys.argv[1] == "master" or sys.argv[1] == "both":
-
-       os.chdir(os.path.join(AB_BASE, "yocto-master"))
-       subprocess.call(["make", "start"])
-       os.chdir(AB_BASE)
+        os.chdir(os.path.join(AB_BASE, "yocto-master"))
+        subprocess.call(["make", "start"])
+        os.chdir(AB_BASE)
 
     if sys.argv[1] == "slave" or sys.argv[1] == "both":
-
-       os.chdir(os.path.join(AB_BASE, "yocto-slave"))
-       subprocess.call(["make", "start"])
-       os.chdir(AB_BASE)
+        os.chdir(os.path.join(AB_BASE, "yocto-slave"))
+        subprocess.call(["make", "start"])
+        os.chdir(AB_BASE)
+        if os.environ["OPTIMIZED_GIT_CLONE"] == "True":
+            os.chdir(AB_BASE)
+            subprocess.Popen("python bin/buildslave-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf"), 
+                           shell=True, stdin=None, 
+                           stdout=None, stderr=None, 
+                           close_fds=True)
 else:
     print "You have not sourced ./yocto-autobuilder-setup. Please do so first!"
     print ""
diff --git a/yocto-stop-autobuilder b/yocto-stop-autobuilder
index da53c02..5118ed4 100755
--- a/yocto-stop-autobuilder
+++ b/yocto-stop-autobuilder
@@ -20,7 +20,7 @@
 # along with this program; if not, write to the Free Software
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
-import os, sys, optparse, subprocess
+import os, sys, optparse, subprocess, signal, time
 from socket import gethostname
 
 usage  = """%prog [options] master|slave|both   
@@ -40,15 +40,36 @@ if len(args) != 2 or (sys.argv[1] != "both" and sys.argv[1] != "master" and sys.
 AB_BASE=os.path.dirname(os.path.abspath(sys.argv[0]))
 
 if sys.argv[1] == "master" or sys.argv[1] == "both":
-
-   os.chdir(os.path.join(AB_BASE, "yocto-master"))
-   subprocess.call(["make", "stop"])
-   os.chdir(AB_BASE)
+    os.chdir(os.path.join(AB_BASE, "yocto-master"))
+    subprocess.call(["make", "stop"])
+    os.chdir(AB_BASE)
 
 if sys.argv[1] == "slave" or sys.argv[1] == "both":
-
-   os.chdir(os.path.join(AB_BASE, "yocto-slave"))
-   subprocess.call(["make", "stop"])
-   os.chdir(AB_BASE)
-
+    os.chdir(os.path.join(AB_BASE, "yocto-slave"))
+    subprocess.call(["make", "stop"])
+    os.chdir(AB_BASE)
+    if os.path.exists('/tmp/.buildslave-janitor') and os.path.isfile('/tmp/.buildslave-janitor'):
+        print("A prior PID file exists. Attempting to kill.")
+        with open('/tmp/.buildslave-janitor', 'r') as f:
+            pid=f.readline()
+        try: 
+            os.kill(int(pid), signal.SIGKILL)
+            # We need to sleep for a second or two just to give the SIGKILL time
+            time.sleep(2)
+        except OSError as ex:
+            print("""We weren't able to kill the prior buildslave-janitor. Trying again.""")
+            pass
+        # Check if the process that we killed is alive.
+        try: 
+           os.kill(int(pid), 0)
+           raise Exception("""wasn't able to kill the process 
+                              HINT:use signal.SIGKILL or signal.SIGABORT""")
+        except OSError as ex:
+           pass
+    elif os.path.exists('/tmp/.buildslave-janitor') and not os.path.isfile('/tmp/.buildslave-janitor'):
+        raise Exception("""/tmp/.buildslave-janitor is a director. remove it to continue.""")
+    try:
+        os.unlink('/tmp/.buildslave-janitor')
+    except:
+        pass
 
-- 
1.8.1.2


