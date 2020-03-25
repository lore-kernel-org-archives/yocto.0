Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.470.1585256077854722042
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 13:54:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=okQyBAyR;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 793D7E018E2; Thu, 26 Mar 2020 13:54:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BAD5E018AB
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2020 13:54:35 -0700 (PDT)
Received: by mail-oi1-f194.google.com with SMTP id k18so6888992oib.3
        for <yocto@yoctoproject.org>; Thu, 26 Mar 2020 13:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=9ytV5fvASPDXK1z61FZZIBqmhVe6zzPHDyhwzy+MV8M=;
        b=okQyBAyRJmQ2cVmPV6SPktR3TKqjdNsDqSjgrFDzUovb9ENXkaYwWQX71sSGqOLI1s
         Bcc+EO2RlBEQ6WhvIKa27L4egVPph5l3XFC+y535TTutFTS0WvSgCcEAXQJfS9fp+S/d
         Cjq7vbE65hI/BmjkpO8YNpFRTPZGZFK8at3gy2iHTrv/xwPoenXOZr3iQhMEH90JpmZT
         gv+yZusrstVvz17gMOf+55iVgl0qQlon/KHrvT4VDY+jdlo4LDfcjOEWahe7w5mCRWAE
         1r8EXWyVQevbG+Bz6kkEBTXfBfUM9PtwMRSAQODOL2V/JpeTzyvMXuAUWZDJlneBWCLJ
         H8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=9ytV5fvASPDXK1z61FZZIBqmhVe6zzPHDyhwzy+MV8M=;
        b=LIS4jf+LgoeCSc61DFuvYhH5GhptjvgvSrJTLIZJrp1GXSdkELrkqoCxBzRq67aRZY
         Rv2ddKmQZwfb7F57zRaxlnYGs3dYkCeMgXyutI1CYsAYzHy72zPzqNRV14AkvqtzqlVG
         gwvrx//ufT9D2t0C2qLKOkeXEhHIqFfA+iGBx3NWHV5m0ElnFKy3JGVY3JTYz+vYv4JT
         HwqgVUsNKeYn6vqu6v0NLNiWnu60Ff6nRkYcHhUEf4Wd3RsqYCWZCsK3pF4d5DilqatD
         eoYKylyYiLYWOb/c90nJl4EHC09y/5hz3CpkiTwdqHQTwXoVPkCL3bYCjYdPU1bp+sIr
         Tf1A==
X-Gm-Message-State: ANhLgQ3k5E4Ck63QSh/5KqSmFqHGV6zYjdm01mNigYvR6xnhTF1pwvt8
	QbHA9MRB3TrsTax8gThcKus=
X-Google-Smtp-Source: ADFU+vumgQirIJLd9eb/wIAH17HZmrC3G+Fxy9ppg5+eUMwwITCSfJDF6r/CFHmUh2EXhqM24Q7sLw==
X-Received: by 2002:aca:3b41:: with SMTP id i62mr1624918oia.55.1585256074827;
        Thu, 26 Mar 2020 13:54:34 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id e21sm832353ooh.31.2020.03.26.13.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 13:54:34 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 2CC7B2A0690; Tue, 24 Mar 2020 22:06:17 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH] pacemaker: add missing patch for python3 usage
Date: Tue, 24 Mar 2020 22:06:14 -0700
Message-Id: <20200325050614.14342-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3

From: Jeremy Puhlman <jpuhlman@mvista.com>

---
 .../pacemaker/0001-Fix-python3-usage.patch         | 176 +++++++++++++++++++++
 1 file changed, 176 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
new file mode 100644
index 0000000..05d7a76
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
@@ -0,0 +1,176 @@
+From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Sun, 15 Mar 2020 21:09:33 +0000
+Subject: [PATCH] Fix python3 usage
+
+Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
+Upstream-Status: Pending
+---
+ cts/CTSlab.py.in                              | 2 +-
+ cts/OCFIPraTest.py.in                         | 2 +-
+ cts/cluster_test.in                           | 2 +-
+ cts/cts-exec.in                               | 2 +-
+ cts/cts-fencing.in                            | 2 +-
+ cts/cts-log-watcher.in                        | 2 +-
+ cts/cts-scheduler.in                          | 2 +-
+ cts/environment.py                            | 2 +-
+ cts/fence_dummy.in                            | 2 +-
+ cts/pacemaker-cts-dummyd.in                   | 2 +-
+ daemons/fenced/fence_legacy.in                | 2 +-
+ doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-
+ doc/Pacemaker_Development/pot/Ch-Python.pot   | 2 +-
+ tools/pcmk_simtimes.in                        | 2 +-
+ 14 files changed, 14 insertions(+), 14 deletions(-)
+
+diff --git a/cts/CTSlab.py.in b/cts/CTSlab.py.in
+index f4ae60dc1..55a0d4ecf 100644
+--- a/cts/CTSlab.py.in
++++ b/cts/CTSlab.py.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Command-line interface to Pacemaker's Cluster Test Suite (CTS)
+ """
+ 
+diff --git a/cts/OCFIPraTest.py.in b/cts/OCFIPraTest.py.in
+index 81a5da8c0..bbadf938a 100644
+--- a/cts/OCFIPraTest.py.in
++++ b/cts/OCFIPraTest.py.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ 
+ '''OCF IPaddr/IPaddr2 Resource Agent Test'''
+ 
+diff --git a/cts/cluster_test.in b/cts/cluster_test.in
+index e0d28509d..f982be05a 100755
+--- a/cts/cluster_test.in
++++ b/cts/cluster_test.in
+@@ -171,4 +171,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_numtests"
+     || echo "+ To use a different configuration, remove ~/.cts and re-run cts (or edit it manually)."
+ 
+ echo Now paste the following command into this shell:
+-echo "@PYTHON@ `dirname "$0"`/CTSlab.py -L \"$CTS_logfile\" --syslog-facility \"$CTS_logfacility\" --no-unsafe-tests --stack \"$CTS_stack\" $CTS_adv --at-boot \"$CTS_boot\" $cts_extra \"$CTS_numtests\" --nodes \"$CTS_node_list\""
++echo "/usr/bin/env python3 `dirname "$0"`/CTSlab.py -L \"$CTS_logfile\" --syslog-facility \"$CTS_logfacility\" --no-unsafe-tests --stack \"$CTS_stack\" $CTS_adv --at-boot \"$CTS_boot\" $cts_extra \"$CTS_numtests\" --nodes \"$CTS_node_list\""
+diff --git a/cts/cts-exec.in b/cts/cts-exec.in
+index 592d850b4..9a653a442 100644
+--- a/cts/cts-exec.in
++++ b/cts/cts-exec.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Regression tests for Pacemaker's pacemaker-execd
+ """
+ 
+diff --git a/cts/cts-fencing.in b/cts/cts-fencing.in
+index 2d9999ca0..8e3fb7203 100644
+--- a/cts/cts-fencing.in
++++ b/cts/cts-fencing.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Regression tests for Pacemaker's fencer
+ """
+ 
+diff --git a/cts/cts-log-watcher.in b/cts/cts-log-watcher.in
+index 28f4efe7f..b4ed5024f 100644
+--- a/cts/cts-log-watcher.in
++++ b/cts/cts-log-watcher.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Remote log reader for Pacemaker's Cluster Test Suite (CTS)
+ 
+ Reads a specified number of lines from the supplied offset
+diff --git a/cts/cts-scheduler.in b/cts/cts-scheduler.in
+index 8fa16fb69..d4306b02b 100644
+--- a/cts/cts-scheduler.in
++++ b/cts/cts-scheduler.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Regression tests for Pacemaker's scheduler
+ """
+ 
+diff --git a/cts/environment.py b/cts/environment.py
+index db9d3db16..9d103fda9 100644
+--- a/cts/environment.py
++++ b/cts/environment.py
+@@ -639,7 +639,7 @@ class Environment(object):
+         print("\t [--yes | -y]                 continue to run cts when there is an interaction whether to continue running pacemaker-cts")
+         print("\t ")
+         print("\t Example: ")
+-        # @PYTHON@ would be better here but not worth making file this a .in
++        # /usr/bin/env python3 would be better here but not worth making file this a .in
+         print("\t    python sys.argv[0] -g virt1 -r --stonith ssh --schema pacemaker-2.0 500")
+ 
+         sys.exit(status)
+diff --git a/cts/fence_dummy.in b/cts/fence_dummy.in
+index a2692b1e0..f1d111205 100644
+--- a/cts/fence_dummy.in
++++ b/cts/fence_dummy.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """Dummy fence agent for testing
+ """
+ 
+diff --git a/cts/pacemaker-cts-dummyd.in b/cts/pacemaker-cts-dummyd.in
+index bde98c5c9..c2e6d89f4 100644
+--- a/cts/pacemaker-cts-dummyd.in
++++ b/cts/pacemaker-cts-dummyd.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Slow-starting idle daemon that notifies systemd when it starts
+ """
+ 
+diff --git a/daemons/fenced/fence_legacy.in b/daemons/fenced/fence_legacy.in
+index 7324757e3..136125322 100755
+--- a/daemons/fenced/fence_legacy.in
++++ b/daemons/fenced/fence_legacy.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ 
+ # Pacemaker targets compatibility with Python 2.7 and 3.2+
+ from __future__ import print_function, unicode_literals, absolute_import, division
+diff --git a/doc/Pacemaker_Development/en-US/Ch-Python.txt b/doc/Pacemaker_Development/en-US/Ch-Python.txt
+index 42d35b649..467e1c524 100644
+--- a/doc/Pacemaker_Development/en-US/Ch-Python.txt
++++ b/doc/Pacemaker_Development/en-US/Ch-Python.txt
+@@ -17,7 +17,7 @@ If a Python file is meant to be executed (as opposed to imported), it should
+ have a +.in+ extension, and its first line should be:
+ ====
+ ----
+-#!@PYTHON@
++#!/usr/bin/env python3
+ ----
+ ====
+ which will be replaced with the appropriate python executable when Pacemaker is
+diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot b/doc/Pacemaker_Development/pot/Ch-Python.pot
+index ed71331ce..27c7e22e5 100644
+--- a/doc/Pacemaker_Development/pot/Ch-Python.pot
++++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
+@@ -39,7 +39,7 @@ msgstr ""
+ 
+ #. Tag: screen
+ #, no-c-format
+-msgid "#!@PYTHON@"
++msgid "#!/usr/bin/env python3"
+ msgstr ""
+ 
+ #. Tag: para
+diff --git a/tools/pcmk_simtimes.in b/tools/pcmk_simtimes.in
+index 6e362243b..28009f499 100644
+--- a/tools/pcmk_simtimes.in
++++ b/tools/pcmk_simtimes.in
+@@ -1,4 +1,4 @@
+-#!@PYTHON@
++#!/usr/bin/env python3
+ """ Timing comparisons for crm_simulate profiling output
+ """
+ 
+-- 
+2.23.0
+
-- 
2.13.3

