Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3444AE00A81; Wed, 11 Nov 2015 14:34:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F4D7E00AEB
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 14:34:07 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 14:34:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,278,1444719600"; d="scan'208";a="598559671"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 14:34:02 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 16:34:27 -0600
Message-Id: <1447281269-18444-12-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447281269-18444-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] PATCHv2 11/13] upgradehelper.py: Only send email to Maintainer when upgrade succeed.
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
X-List-Received-Date: Wed, 11 Nov 2015 22:34:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Change the policy for send emails to only send when upgrade succeed
to avoid waste time of the Maintainers when upgrade process fails
because the failure patch generated isn't useful.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index a3ca373..c2bf506 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -353,8 +353,6 @@ class Updater(object):
             self.git.reset_hard(1)
             self.git.clean_untracked()
 
-        # only send email to Maintainer when patch file exist
-        if self.send_email and self.patch_file:
             mail_header = \
                 "Hello,\n\nYou are receiving this email because you are the maintainer\n" \
                 "of *%s* recipe and this is to let you know that the automatic attempt\n" \
@@ -414,6 +412,8 @@ class Updater(object):
                 if os.path.isfile(attachment_fullpath):
                     attachments.append(attachment_fullpath)
 
+        # Only send email to Maintainer when recipe upgrade succeed.
+        if self.send_email and not err:
             self.email_handler.send_email(to_addr, subject, msg_body, attachments, cc_addr=cc_addr)
 
     def _commit_changes(self):
-- 
2.1.4


