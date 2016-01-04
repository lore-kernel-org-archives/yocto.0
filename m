Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B7E5E00C6B; Mon,  4 Jan 2016 12:19:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58A24E0090A
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2016 12:19:14 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 04 Jan 2016 12:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,522,1444719600"; d="scan'208";a="720109141"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by orsmga003.jf.intel.com with ESMTP; 04 Jan 2016 12:19:14 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Jan 2016 14:20:49 -0600
Message-Id: <1451938849-26368-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [[PATCH][RRS]] rrs/tools/rrs_upstream_email.py: Update message to point recipe file instead of deprecated upstream tracking file.
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
X-List-Received-Date: Mon, 04 Jan 2016 20:19:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Since upstream_tracking.inc file is deprecated because now every recipe
has it's own upstream information then update email message according it.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/tools/rrs_upstream_email.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/rrs/tools/rrs_upstream_email.py b/rrs/tools/rrs_upstream_email.py
index 3cde73b..a70ba13 100755
--- a/rrs/tools/rrs_upstream_email.py
+++ b/rrs/tools/rrs_upstream_email.py
@@ -38,12 +38,12 @@ def send_email(recipes, repodir, options):
     header = """This mail was sent out by Recipe reporting system.
 
 This message list those recipes which need to be upgraded. If maintainers
-believe some of them needn't to upgrade this time, they can fill in
-RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this
+believe some of them needn't to upgrade at this time, they can fill
+RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this recipe
 recipe remainder until newer upstream version was detected.
 
 Example:
-RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"
+RECIPE_NO_UPDATE_REASON = "Not upgrade to 2.0 is unstable"
 
 You can check the detail information at:
 
-- 
2.1.4


