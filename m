Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8277AE009C3; Mon,  3 Aug 2015 12:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5144E009D9
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 12:04:34 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 12:04:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,603,1432623600"; d="scan'208";a="775902883"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 12:04:34 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 14:04:31 -0500
Message-Id: <1438628679-8626-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv2 03/11][auh] upgradehelper.py: Only send emails when patch file exist
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
X-List-Received-Date: Mon, 03 Aug 2015 19:04:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Remove old decision of send email based on error because only
makes sense to send email when patch file was created.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index f10d974..13fc7dd 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -358,7 +358,8 @@ class Updater(object):
             self.git.reset_hard(1)
             self.git.clean_untracked()
 
-        if self.send_email:
+        # only send email to Maintainer when patch file exist
+        if self.send_email and self.patch_file:
             mail_header = \
                 "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
                 "of *%s* recipe and this is to let you know that the automatic attempt\n" \
@@ -383,13 +384,6 @@ class Updater(object):
                 "Any problem please contact Anibal Limon <anibal.limon@intel.com>.\n\n" \
                 "Regards,\nThe Upgrade Helper"
 
-            # only send email to Maintainer when is an error that can handle
-            if err and not isinstance(err, MaintainerError):
-                D( "%s: Don't send email to maintainer because the error was " \
-                   "%s and the information isn't useful, please review it." \
-                    % (self.pn, type(err).__name__))
-                return
-
             if self.maintainer in maintainer_override:
                 to_addr = maintainer_override[self.maintainer]
             else:
-- 
1.9.1


