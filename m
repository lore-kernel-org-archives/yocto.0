Return-Path: <insop.song@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AFF3E01484;
	Tue, 19 Mar 2013 04:14:30 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id wd20so289110obb.9
	for <multiple recipients>; Tue, 19 Mar 2013 04:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=h8yl06wJI6GOVcBty6k0z8vr6a9IVhYhIV6A0dVYYaU=;
	b=xTDD58H3/X0z2BnSI/SbK1Km/2LNsET+cy0E0lA0IGgwGDm+u20gZIs50oLzZQdzqY
	Z31hZtW2cgyjp83VudEmJoKI63lj4piIqypnZE1hfPsMIS2aS8LIdrVSGpIdfhyfk++J
	9qqBxTTfA8V6ceMpQ1G7EZaOuXYviLdnWSOJQ9jQ+wdTLt3XTsSRCm0QSNPYeSz88G2I
	gICLjmPqllR2CzEtf/n87mLSEto+NoZubvbIdmJWqMHUBpUqKtapLntWtL9wruqCVw3p
	McjDW6rkNKYMxfliwl4M78AabtrQ3hiLWP86pnM5i8SIYJxpA8azcmvg4yoJiY7z3SKh
	9QyQ==
X-Received: by 10.60.11.8 with SMTP id m8mr1008870oeb.22.1363691670390;
	Tue, 19 Mar 2013 04:14:30 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id ek4sm10610631obc.6.2013.03.19.04.14.28
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 04:14:29 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 04:14:20 -0700
Message-Id: <8e260f937e1ddad0fb19e36b6b3b6d8d9aa299c4.1363691191.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1363691191.git.insop.song@gmail.com>
References: <insop.song@gmail.com> <cover.1363691191.git.insop.song@gmail.com>
In-Reply-To: <cover.1363691191.git.insop.song@gmail.com>
References: <cover.1363691191.git.insop.song@gmail.com>
Subject: [meta-realtime][PATCH 1/1] create a script directory and add a script to run test program and collect data
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
X-List-Received-Date: Tue, 19 Mar 2013 11:14:31 -0000

- run_rt-app.py runs rt-app on the target machine and collects the
  output log to host

- how to run:
$ fab -f run_rt-app.py run_app

Note: requires fabric (python program) on the host

Signed-off-by: Insop Song <insop.song@gmail.com>
---
 docs/00-INDEX         |    4 +--
 docs/00-README        |    6 ++--
 scripts/README        |    1 +
 scripts/run_rt-app.py |   88 +++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 94 insertions(+), 5 deletions(-)
 create mode 100644 scripts/README
 create mode 100644 scripts/run_rt-app.py

diff --git a/docs/00-INDEX b/docs/00-INDEX
index 41d83a5..878e5d0 100644
--- a/docs/00-INDEX
+++ b/docs/00-INDEX
@@ -1,4 +1,4 @@
-This is a brief list of all the files in meta-virtualization/docs and what
+This is a brief list of all the files in meta-realtime/docs and what
 they contain. If you add a documentation file, please list it here in
 alphabetical order as well.
 
@@ -6,5 +6,5 @@ alphabetical order as well.
         - this file.
 
 00-README
-        - info on the goals of meta-virtualization and this docs subdir
+        - info on the goals of meta-realtime and this docs subdir
 
diff --git a/docs/00-README b/docs/00-README
index 6fea112..f20baca 100644
--- a/docs/00-README
+++ b/docs/00-README
@@ -1,6 +1,6 @@
-meta-virtualization: docs
+meta-realtime: docs
 =========================
 
-The docs subdirectory is a holding tank for meta-virtualization related
+The docs subdirectory is a holding tank for meta-realtime related
 READMEs, documentation, testing information, configuration and other 
-notes that help the users of meta-virt.
+notes that help the users of meta-realtime.
diff --git a/scripts/README b/scripts/README
new file mode 100644
index 0000000..48034e6
--- /dev/null
+++ b/scripts/README
@@ -0,0 +1 @@
+This directory contains Various useful scripts for working with meta-realtime
diff --git a/scripts/run_rt-app.py b/scripts/run_rt-app.py
new file mode 100644
index 0000000..3beb20c
--- /dev/null
+++ b/scripts/run_rt-app.py
@@ -0,0 +1,88 @@
+#
+# run rt-app on remote machine and collect the data
+#
+# note:
+#
+# 0. install fabric 1.6 on the develop host
+# - $ pip install fabric
+#
+# 1. copy ssh public key (copy and paste host's "~/.ssh/id_rsa.pub" to the remote's ~/.ssh/authorized_keys)
+#
+# 2. update the "env.hosts" with your remote system
+#
+# 3. run the script from the host
+# - $ fab -f run_rt-app.py run_app
+#
+
+from __future__ import with_statement
+from fabric.api import *
+from fabric.contrib import *
+from fabric.contrib.console import confirm
+
+import socket
+import getpass
+import datetime
+import time
+import datetime
+
+
+env.hosts = ['root@192.168.1.78']
+remote_ip = env.hosts[0]
+
+now = datetime.datetime.now()
+
+YES	= "/usr/bin/yes"
+KILLALL	= "/usr/bin/killall"
+SCP	= "/usr/bin/scp"
+
+RTAPP	= "/usr/bin/rt-app"
+
+period_t	= 100000
+run_t		= 30000
+
+num_run = 10
+sec_run = 100
+
+dir_name	= "/home/root"
+f_name		= "rt-app_run_log-%s.txt" % now.strftime("%Y-%m-%d-%H-%M")
+file_name	= "%s/%s" % (dir_name, f_name)
+	
+def pre():
+	print "\n==========================================================="
+	print "1. Conecting remote : %s" % env.hosts[0]
+	print "===========================================================\n"
+
+	# scripts that runs on the remote
+	un = run("uname -a", quiet=True)
+	hn = run("hostname", quiet=True)
+	print "running script on host [%s], OS[%s]" % (hn, un)
+
+#
+# run the app on the remote and collect the data into log
+#
+def main():
+	print "\n==========================================================="
+	print "2. Running rt-app %s times.." % num_run
+	print "===========================================================\n"
+
+	run('echo \"test log (period = %s, execution time %s) run %s times on each %s sec \n\n\" > %s' % \
+		(period_t, run_t, num_run, sec_run, file_name))
+	for i in range(0, num_run):
+		run("%s -t %s:%s:d -D %s >> %s" %  \
+			(RTAPP, period_t, run_t, sec_run, file_name))
+
+#
+# bring the data log to the host
+#
+def post():
+	# running this from local host
+	local("%s %s:%s ." % (SCP, remote_ip, file_name))
+
+	print "\n=============================================================================="
+	print "3. Run finished, and log file ""%s"" is copied to host." % f_name
+	print "==============================================================================\n"
+
+def run_app():
+	pre()
+	main()
+	post()
-- 
1.7.9.5


