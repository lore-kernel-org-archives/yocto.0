Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24A24E009CD; Tue,  9 Aug 2016 09:42:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CFF5E0086E
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 09:42:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 09 Aug 2016 09:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,495,1464678000"; d="scan'208";a="1011295029"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2016 09:42:24 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2016 09:42:10 -0700
Message-Id: <1470760930-6898-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] SendQAEmail.py: use sendmail instead of mail to send QA email
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
X-List-Received-Date: Tue, 09 Aug 2016 16:42:26 -0000

When sending QA emails, the autobuilder uses the 'mail' command (typically
installed as /usr/bin/mail or /bin/mail). However, most distributions do not
install this program by default. They generally always install the 'sendmail'
program, though, so use 'sendmail' as the mail agent, rather than 'mail'.

[YOCTO #10082]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../autobuilder/buildsteps/SendQAEmail.py          | 26 ++++++++++++----------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py
index 0cd76d5..3691cc6 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py
@@ -47,9 +47,9 @@ class SendQAEmail(ShellCommand):
             properties = self.build.getProperties().asDict()
             repoprops = {}
             mailsubject = "Build available for QA"
-            email_header = '''
-    A build identified as needing QA has finished on the autobuilder. This
-    build is located at:\n\n
+            email_base = '''
+A build identified as needing QA has finished on the autobuilder. This
+build is located at:\n\n
     %s''' % (self.getProperty('DEST').replace(web_root, web_url))
 
             if str(self.getProperty("custom_release_me")) == "True":
@@ -68,9 +68,9 @@ class SendQAEmail(ShellCommand):
                 poky_number = self.getProperty("custom_poky_number")+prefix
                 yocto_number = self.getProperty("custom_yocto_number")+prefix
                 rel_name = 'yocto-'+ yocto_number
-                email_header = '''
+                email_base = '''
 A release candidate build for %s is now available at:\n\n
-%s\n\n
+    %s\n\n
 Please begin QA on this build as soon as possible.''' % (rel_name, self.getProperty('DEST').replace(web_root, web_url))
                 mailsubject = "Release Candidate Build for " + rel_name + snapshot + " now available."
 
@@ -85,16 +85,18 @@ Please begin QA on this build as soon as possible.''' % (rel_name, self.getPrope
             for k, v in repoprops.iteritems():
                 email_body = email_body + '%s : %s \n' % (k, v[1])
 
-            mailcmd = 'echo -e "' + email_header + '\n' + email_body + '\n' + mailsig + ' " | mail -s \'' + mailsubject + '\''
-
+            email_header = ""
+            if mailto is not None and mailto is not "":
+                email_header += "To: " + mailto + "\n"
             if mailcc is not None and mailcc is not "":
-                mailcmd += " -c '" + mailcc + "' "
-
+                email_header += "Cc: " + mailcc + "\n"
             if mailbcc is not None and mailbcc is not "":
-                mailcmd += " -b '" + mailbcc + "' "
+                email_header += "Bcc: " + mailbcc + "\n"
+
+            email_header += "Subject: " + mailsubject + "\n"
+
+            mailcmd = 'echo -e "' + email_header + "\n" + email_base + '\n' + email_body + '\n' + mailsig + ' " | sendmail -t'
 
-            if mailto is not None and mailto is not "":
-                mailcmd += " '" + mailto + "' "
             self.command = mailcmd
         else:
             self.command = 'echo "Not a QA build"'
-- 
2.5.5


