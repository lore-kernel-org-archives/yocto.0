Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 319F9E0097D; Wed, 29 Aug 2018 06:30:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B92E3E0090C
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:30:43 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 06:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,303,1531810800"; d="scan'208";a="87312187"
Received: from centaurus01.png.intel.com ([10.221.183.13])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2018 06:30:42 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org,
	paul.eggleton@intel.com, aaron.chun.yew.chan@intel.com
Date: Wed, 29 Aug 2018 21:25:53 +0800
Message-Id: <20180829132555.23054-4-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
References: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder-helper][PATCH 4/6] resume-lava-jobs: Add lava-job cleanup script
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
X-List-Received-Date: Wed, 29 Aug 2018 13:30:44 -0000

This script is needed to inform LAVA server to end the lava-job
process and shutdowns the board/device gracefully while removing
the lava-overlay tmpfs resides on LAVA dispatcher end.

Once lava-job completely endsm it returns a signal to host machine
to continue with the remaining steps in autobuilder before it
completes and end the entire job workflow.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 lava/resume-lava-jobs | 79 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100755 lava/resume-lava-jobs

diff --git a/lava/resume-lava-jobs b/lava/resume-lava-jobs
new file mode 100755
index 0000000..40f2b77
--- /dev/null
+++ b/lava/resume-lava-jobs
@@ -0,0 +1,79 @@
+#!/usr/bin/env python3
+#
+# =====================================================================================
+# Developed By : Chan, Aaron <aaron.chun.yew.chan@intel.com>
+# Organization : Yocto Project Open Source Technology Center (Intel)
+# Date         : 27-Aug-2018 (Initial release)
+# =====================================================================================
+#
+# This script is to trigger a signal to LAVA server to terminate the lava-job once the
+# test cases has been completely executed on the target hardware from the host machine.
+# Once LAVA server receives the signal to end the job, LAVA server will clean-up tmpfs
+# overlay on LAVA Dispatcher and gracefully shutdown the target hardware/board/device.
+# In the same way, autobuilder will received the handoff signal from LAVA server and
+# run any remaining post script and end the job in autobuilder.
+#
+# Options:
+# $1 - Supply the NFS and/or absolute path on the board_info.json generated from hardware.
+# $2 - Supply the command to run on target hardware, by default "shutdown" to power down
+#      target hardware/board/device
+#
+import subprocess
+import argparse
+import re
+import os
+import sys
+
+sys.path.append(os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),"scripts"))
+import utils
+
+parser = argparse.ArgumentParser(description='SSH Client to Target Board.')
+parser.add_argument('--json', action='store', dest='brdinfo', help='Define default board user')
+parser.add_argument('--cmd', action='store', dest='ipcmd', help='Define default command to the board')
+
+results = parser.parse_args()
+
+# Enable this section on manual run
+# os.environ['ABHELPER_JSON'] = "config.json /home/pokybuild/yocto-autobuilder-helper/config-intelqa-x86_64-lava.json"
+
+brdinfo = results.brdinfo
+if os.path.isfile(os.path.expanduser(brdinfo)):
+    os.environ['ABHELPER_JSON'] += (" " + brdinfo)
+    ourconfig=utils.loadconfig()
+else:
+    print("ERROR: Failed to retrieve [%s] thru NFS. Check your NFS mount on the worker/hosts" % brdinfo)
+    sys.exit(1)
+
+ipcmd = results.ipcmd
+ipaddr = ourconfig['network']['ipaddr'].strip('\n')
+user = ourconfig['user'].strip('\n')
+
+if user is None or ipaddr is None:
+    print("ERROR: Failed to retrieve (e.g username/IP) from hardware. Check network interface on target device.")
+    sys.exit(1)
+else:
+    if re.match(ipcmd, 'shutdown'):
+        ipcmd = 'touch minnow.idle.done'
+    else:
+        ipcmd = 'echo Completed.'
+    shellCommand = ["ssh", "-oStrictHostKeyChecking=no", "%s@%s" % (user, ipaddr), "uname -a;", ipcmd]
+
+    ssh = subprocess.Popen(shellCommand, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
+    ssherr = ssh.stderr.read().decode('utf-8')
+
+    if re.search('man-in-the-middle\s*attack', ssherr):
+        match=True
+    elif re.search('Connection\s*timed\*out', ssherr):
+        print("ERROR: Connection to board timeout due board unresponsive, check your hardware.")
+        match=False
+    else:
+        match=False
+
+    if match:
+        ssh_keygen = subprocess.Popen(
+            ["ssh-keygen", "-f", "\"" + os.path.expanduser("~/.ssh/known_hosts") + "\"", "-R", ipaddr],
+            stdout=subprocess.PIPE, stderr=subprocess.PIPE)
+        sshout = subprocess.Popen(shellCommand, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
+        print("INFO: %s" % sshout.stdout.read())
+    else:
+        print("ERROR %s" % sshout.stderr.read())
-- 
2.11.0


