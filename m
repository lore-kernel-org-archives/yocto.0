Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB942E00AA3
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200403"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id D61075F82A97; Wed,  5 Mar 2014 10:23:32 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:05 -0800
Message-Id: <ddc1067c9ac3a6546eff7236d22e48443f0c55eb.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 14/27] bin/buildslave-janitor: For fast-git checkouts
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:09 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This cleans up OGIT_TRASH_DIR and OGIT_MIRROR_DIR. Next few commits
bring it into the infrastructure.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 bin/buildslave-janitor | 125 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 125 insertions(+)
 create mode 100755 bin/buildslave-janitor

diff --git a/bin/buildslave-janitor b/bin/buildslave-janitor
new file mode 100755
index 0000000..153f18d
--- /dev/null
+++ b/bin/buildslave-janitor
@@ -0,0 +1,125 @@
+#!/usr/bin/python
+'''
+Created on Feb 19, 2014
+
+__author__ = "Richard Purdie"
+__copyright__ = "Copyright 2014, Linux Foundation"
+__credits__ = ["Richard Purdie"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Richard Purdie"
+__email__ = "richard.purdie@linuxfoundation.org"
+'''
+
+from __future__ import print_function
+import signal
+import os
+import sys
+import ConfigParser
+import threading
+import time
+
+if len(sys.argv) < 2:
+    print("Please specify the path to the config file on the commandline as the first argument")
+    sys.exit(1)
+
+config = ConfigParser.ConfigParser()
+config.read(sys.argv[1])
+
+sections = {}
+for section in config.sections():
+    sections[section] = dict(config.items(section))
+
+if "GitSettings" not in sections:
+    print("There is no GitSettings section in the configuration file?")
+    sys.exit(1)
+
+gitsettings = sections["GitSettings"]
+
+if "ogit_trash_dir" not in gitsettings:
+    print("Please set OGIT_TRASH_DIR in the configuration file")
+    sys.exit(1)
+
+if "ogit_mirror_dir" not in gitsettings:
+    print("Please set OGIT_MIRROR_DIR in the configuration file")
+    sys.exit(1)
+
+trashdir = gitsettings["ogit_trash_dir"].replace('"','').replace("'",'')
+mirrordir = gitsettings["ogit_mirror_dir"].replace('"','').replace("'",'')
+
+mirrorlist = [
+    "git://git.yoctoproject.org/meta-fsl-arm",
+    "git://git.yoctoproject.org/meta-fsl-ppc",
+    "git://git.yoctoproject.org/meta-intel",
+    "git://git.yoctoproject.org/meta-minnow",
+    "git://git.yoctoproject.org/meta-qt3",
+    "git://git.yoctoproject.org/poky",
+    "git://git.yoctoproject.org/eclipse-poky-kepler",
+    "git://git.yoctoproject.org/eclipse-poky-juno"
+]
+
+def trash_processor(trashdir):
+    print("Monitoring trashdir %s" % trashdir)
+    if not os.path.exists(trashdir):
+        os.makedirs(trashdir)
+    if trashdir == "/":
+        print("Not prepared to use a trashdir of /")
+        return
+    while True:
+        files = os.listdir(trashdir)
+        if files:
+            os.system("ionice -c 3 rm %s -rf" % trashdir)
+        else:
+            time.sleep(30*60) # 30 minutes
+    return
+
+def mirror_processor(mirrordir):
+    print("Updating mirrors in %s" % mirrordir)
+    mirrorpaths = []
+    for mirror in mirrorlist:
+        mirrorpaths.append(os.path.join(mirrordir, mirror.split("/")[2], mirror.split("/", 3)[3]))
+        if not os.path.exists(mirrorpaths[-1] + "/.git/"):
+            os.system("git clone %s %s" % (mirror, mirrorpaths[-1]))
+    while True:
+        for path in mirrorpaths:
+            os.chdir(path)
+            os.system("git fetch --all")
+        time.sleep(30*60) # 30 minutes
+    return
+
+#Check to see if this is running already. If so, kill it and rerun
+if os.path.exists('/tmp/.buildslave-janitor') and os.path.isfile('/tmp/.buildslave-janitor'):
+    print("A prior PID file exists. Attempting to kill.")
+    with open('/tmp/.buildslave-janitor', 'r') as f:
+        pid=f.readline()
+    try: 
+        os.kill(int(pid), signal.SIGKILL)
+        # We need to sleep for a second or two just to give the SIGKILL time
+        time.sleep(2)
+    except OSError as ex:
+        print("""We weren't able to kill the prior buildslave-janitor. Trying again.""")
+        pass
+    # Check if the process that we killed is alive.
+    try: 
+       os.kill(int(pid), 0)
+    except OSError as ex:
+       pass
+elif os.path.exists('/tmp/.buildslave-janitor') and not os.path.isfile('/tmp/.buildslave-janitor'):
+    raise Exception("""/tmp/.buildslave-janitor is a director. remove it to continue.""")
+try:
+    os.unlink('/tmp/.buildslave-janitor')
+except:
+    pass
+with open('/tmp/.buildslave-janitor', 'w') as f:
+    print(os.getpid(), file=f)
+
+threads = []
+threads.append(threading.Thread(target=trash_processor, args=(trashdir,)))
+threads[-1].start()
+threads.append(threading.Thread(target=mirror_processor, args=(mirrordir,)))
+threads[-1].start()
+
+# wait for all threads to finish
+for t in threads:
+    t.join()
+sys.exit(0)
-- 
1.8.1.2


