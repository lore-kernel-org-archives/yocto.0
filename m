Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF427E00524; Tue, 28 Mar 2017 16:59:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI, RCVD_IN_SORBS_SPAM, TVD_APPROVED,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.55.52.88 listed in dnsbl.sorbs.net]
	* 2.1 TVD_APPROVED BODY: Body states that the recipient has been
	approved
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 649C1E004E5
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 16:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490745590; x=1522281590;
	h=from:to:cc:subject:date:message-id;
	bh=TtxKgDQ/fYeb4P6WxXM06e6VO5tRtCrrzEZjYUn2SV8=;
	b=u2C6BVdcQaq9+k8CaYp2Lms8i8tJcFKuasDT0Lwc03wQ75yUw6NxqcX/
	xHnuU1YKVbtCZLgEKKQ2orMsLleOlg==;
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2017 16:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,238,1486454400"; d="scan'208";a="66214076"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by orsmga002.jf.intel.com with ESMTP; 28 Mar 2017 16:59:48 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Mar 2017 17:59:34 -0600
Message-Id: <1490745574-15358-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] parsemail.py: Improve status-change-through-email
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
X-List-Received-Date: Tue, 28 Mar 2017 23:59:53 -0000

Patch status can be edited through email by project maintainers only
without any feedback if this is attempted by any other user,
providing a poor user experience.

This change extends the patch-status-through-email functionality
to be performed by the series submitter also, and provides a
system-generated message if an attempt was made through a message
using an email address not recognized neither as project maintainer or
series submitter in patchwork.

[YOCTO #11027]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 73 +++++++++++++++++++++++++++++++---------------
 1 file changed, 49 insertions(+), 24 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index ebfa849..61c18b2 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -838,31 +838,56 @@ def parse_mail(mail):
         comment.msgid = msgid
         comment.save()
         LOGGER.debug('Comment saved')
-
-        # if comment's author has project-maintainer permissions,
-        # parse comment content and process the status-change command
-        # if it is found
-        if author.user and project in \
-                (author.user).profile.maintainer_projects.all():
-            cmd = None
-            comment_re = re.compile('^\[Patchwork-Status:\s*(Under Review|\
-Rejected|RFC|Not Applicable|Changes Requested|Awaiting Upstream|Superseded|\
-Deferred)\]$', re.M | re.I)
-            # if multiple valid status-change commands are found, use last one
-            for match in comment_re.finditer(comment.content):
-                cmd = re.sub(r'(\[Patchwork-Status:\s*)(.*)(\])', r'\2',
-                             "{}".format(match.group(0)))
-            if cmd is not None:
-                new_state = State.objects.get(name=cmd.title())
-                mod_patch = Patch.objects.get(pk=comment.patch.pk)
-                if new_state and mod_patch.state != new_state:
-                    mod_patch.state = new_state
-                    mod_patch.save()
-                    cmd_message = 'This is a system generated Comment: Patch \
-%s status was updated to "%s" due to request in comment.' % (
-                                  comment.patch.pk, cmd)
+        # look for a status-change command string in the comment
+        cmd = None
+        comment_re = re.compile('^(?:\n|\r\n?)\[Patchwork-Status:\s*\
+(Under Review|Rejected|RFC|Not Applicable|Changes Requested|Awaiting \
+Upstream|Superseded|Deferred)\](?:\n|\r\n?)$', re.M | re.I)
+        # if multiple valid status-change commands are found, use last one
+        for match in comment_re.finditer(comment.content):
+            cmd = re.sub(
+                r'((?:\n|\r\n?)\[Patchwork-Status:\s*)(.*)(\](?:\n|\r\n?))',
+                r'\2', "{}".format(match.group(0)))
+        # if a status-change command string is found, see if comment's author
+        # has either project-maintainer permissions or is the series submitter
+        # and process the command if true.
+        if cmd is not None:
+            refs = build_references_list(mail)
+            if not refs == []:
+                if not series:
+                    series = SeriesRevision.objects.filter(
+                        series__project=project,
+                        root_msgid=refs[-1]).reverse()[0].series
+                if (author.user and project in
+                    (author.user).profile.maintainer_projects.all()) or (
+                        author and author == series.submitter):
+                    new_state = State.objects.get(name=cmd.title())
+                    mod_patch = Patch.objects.get(pk=comment.patch.pk)
+                    if new_state and mod_patch.state != new_state:
+                        mod_patch.state = new_state
+                        mod_patch.save()
+                        cmd_message = 'This is a system generated Comment: \
+Patch %s status was updated to "%s"\ndue to request in comment body.' % (
+                            comment.patch.pk, cmd)
+                        cmd_msgid = "%s: System generated by comment %s" % (
+                            datetime.datetime.now().strftime("\
+%d%b%Y.%H:%M:%S.%f"), comment.pk)
+                        new_comment = Comment(pk=None, patch=comment.patch,
+                                              content=cmd_message,
+                                              date=datetime.datetime.now(),
+                                              submitter=comment.submitter,
+                                              msgid=cmd_msgid)
+                        new_comment.save()
+                else:
+                    # notify that a patch-status change was attempted without
+                    #  apropriate submitter/maintainer permissions
+                    cmd_message = 'This is a system generated Comment: \
+A command to change a patch-status through\nemail was detected in comment, \
+but the sender email does not belong either to\na project maintainer or to \
+the series submitter, the only approved users for\nthis function. \
+Ensure you are using an approved email address when submitting.'
                     cmd_msgid = "%s: System generated by comment %s" % (
-                                datetime.datetime.now().strftime("\
+                        datetime.datetime.now().strftime("\
 %d%b%Y.%H:%M:%S.%f"), comment.pk)
                     new_comment = Comment(pk=None, patch=comment.patch,
                                           content=cmd_message,
-- 
2.7.4


