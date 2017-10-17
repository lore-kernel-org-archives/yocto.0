Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAABAE00D35; Tue, 17 Oct 2017 15:57:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57758E00D32
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 15:57:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2017 15:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; d="scan'208";a="1206927013"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.138])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2017 15:56:58 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Oct 2017 17:56:55 -0500
Message-Id: <1508281015-11797-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [rrs][PATCH] rrs_upstream_email: Update rrs maintainer info and logging
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
X-List-Received-Date: Tue, 17 Oct 2017 22:57:07 -0000

This change updates rrs maintainer contact data and adds
script start and end log messages.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 rrs/tools/rrs_upstream_email.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_upstream_email.py b/rrs/tools/rrs_upstream_email.py
index 0e73957..7f369ab 100755
--- a/rrs/tools/rrs_upstream_email.py
+++ b/rrs/tools/rrs_upstream_email.py
@@ -102,7 +102,7 @@ http://recipes.yoctoproject.org/
 The based commit is:
 
 %s
-Any problem, please contact Anibal Limon <anibal.limon@intel.com> 
+Any problem, please contact Jose Lamego <jose.a.lamego@linux.intel.com> 
 """ % ((upgradable_count - no_upgradable_count), upgradable_count, 
         utils.runcmd("git log -1", repodir))
 
@@ -114,6 +114,7 @@ Any problem, please contact Anibal Limon <anibal.limon@intel.com>
 
     msg = EmailMessage(subject, text_content, from_email, to_email_list)
     msg.send()
+    logger.debug("Email created and sent to %s" % settings.RRS_EMAIL_TO)
 
 def main():
     parser = optparse.OptionParser(
@@ -166,6 +167,8 @@ def main():
 
     repodir = os.path.join(settings.LAYER_FETCH_DIR, layer.get_fetch_dir())
 
+    logger.debug("Starting email creation")
+
     send_email(recipes, repodir, options)
 
 if __name__ == "__main__":
-- 
2.7.4


