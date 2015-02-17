Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD35EE00779; Tue, 17 Feb 2015 13:40:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90E37E00744
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:27 -0800 (PST)
Received: by iecrl12 with SMTP id rl12so41891293iec.2
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=rCUGM0h4csIoa0NPNzavrlK4goyhBHj3II+3DGjAdtI=;
	b=SwGc1ZRao3iXUq7U8KOufO8JMtvQafZX25NhzDPbEgYdfyUMZdz6/jM5n7iqve8p7b
	td58a+Pr15MKAeSSFG5nSwLYwkv1qi9+gS7WTI4h44k/V9hUaCzQ5r3M1aRDGirK74GO
	d9lsj5s1LB0qDpe9pjnp+HQp9aDq/N7PMq/mKZYRWvz17mXxhZ97wtFFvey1hs8UUVPK
	+MiL9+Xwuvklqau2kIaqxqEUW32OKBp32pcUIpBUf4iAg64hHfu3D1+amgn3ne9UOAT8
	B7FAqx8cp1Pkq48Wr0e9r7wk0+UzubOD37czT/XTOY6a5FV4a8FJb+yiwjfEfZ9jMIlH
	4msw==
X-Gm-Message-State: ALoCoQkews91K4vbCJwX26FMp9MqicY0CelbO1L0QEUc/6XzxP+BLhmKYQL2pGxqXHWCd04NPKoW
X-Received: by 10.50.66.243 with SMTP id i19mr31011211igt.7.1424209227283;
	Tue, 17 Feb 2015 13:40:27 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id qs3sm10761789igb.8.2015.02.17.13.40.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 17 Feb 2015 13:40:26 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Feb 2015 16:41:15 -0500
Message-Id: <1424209275-12304-4-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
References: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
Subject: [autobuilder][PATCH 4/4] janitor: clean up janitor logging
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
X-List-Received-Date: Tue, 17 Feb 2015 21:40:31 -0000

If OPTIMIZED_GIT_CLONE was set, the worker janitor was start up and
depending on the system, produce an error of the form:

/bin/sh: line 1: 11093 Killed                  python bin/buildworker-janitor [path-to--autobuilder]/config/autobuilder.conf >> yocto-worker/janitor.log 2>&1

By removing the shell-redirect from the Popen() call and instead sending
all logs directly to a regular log file, the error goes to the log where
it belongs.  Since this happens regularly when the host is both a control
and a build node, this change also makes it clearer to the user that
something bad has not necessarily happened the first time they try to
start up the autobuilder.

At the same time, since the logs tend to not have much in them by way of
context, adding a timestamp to each new start of the janitor makes it much
easier when looking over the old logs to see if errors are current or long
in the past.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 yocto-start-autobuilder | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/yocto-start-autobuilder b/yocto-start-autobuilder
index 7078163..ee597df 100755
--- a/yocto-start-autobuilder
+++ b/yocto-start-autobuilder
@@ -20,7 +20,7 @@
 # along with this program; if not, write to the Free Software
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
-import os, sys, optparse, subprocess
+import os, sys, optparse, subprocess, datetime
 from socket import gethostname
 import ConfigParser
 
@@ -79,10 +79,15 @@ if os.path.isfile(os.path.join(AB_BASE, ".setupdone")):
         os.chdir(AB_BASE)
         if os.environ["OPTIMIZED_GIT_CLONE"] == "True":
             os.chdir(AB_BASE)
-            subprocess.Popen("python bin/buildworker-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf") + ">> yocto-worker/janitor.log 2>&1", 
+            janitor_log = open('yocto-worker/janitor.log', 'a')
+            janitor_log.write('[ janitor started: %s ]' % datetime.datetime.now())
+            janitor_log.write('\n')
+            subprocess.Popen("python bin/buildworker-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf"), 
                            shell=True, stdin=None, 
-                           stdout=None, stderr=None, 
+                           stdout=janitor_log,
+                           stderr=janitor_log, 
                            close_fds=True)
+            janitor_log.close()
 else:
     print "You have not sourced ./yocto-autobuilder-setup. Please do so first!"
     print ""
-- 
1.9.1


