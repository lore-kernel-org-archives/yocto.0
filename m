Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F2B5E00D99; Thu, 14 Dec 2017 08:35:35 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6693E00D83
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:34 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726621"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:33 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:49 +0200
Message-Id: <c1bbab8edabea9e6c2ef4a14afa2b36189614e37.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
MIME-Version: 1.0
Subject: =?UTF-8?B?W2F1aF1bUEFUQ0ggMDkvMjBdIFJlcGxhY2UgcmVmZXJlbmNlcyB0byBBbsOtYmFsIExpbcOzbiBhcyB0aGUgbWFpbnRhaW5lci4=?=
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 README           | 2 +-
 upgradehelper.py | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/README b/README
index e6b0dc2..60dbef9 100644
--- a/README
+++ b/README
@@ -163,7 +163,7 @@ The latest version of the code can always be found here:
 
 Contributions are welcome. Please send patches / pull requests to
 yocto@yoctoproject.org with '[auh]' in the subject also CC the
-current maintainer: Aníbal Limón <anibal.limon@linux.intel.com>.
+current maintainer: Alex Kanavin <alex.kanavin@gmail.com>.
 
 License
 -------
diff --git a/upgradehelper.py b/upgradehelper.py
index 5149993..9fa79b4 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -321,7 +321,7 @@ class Updater(object):
 
         mail_footer = \
             "Attached are the patch, license diff (if change) and bitbake log.\n" \
-            "Any problem please contact Anibal Limon <anibal.limon@intel.com>.\n\n" \
+            "Any problem please file a bug at https://bugzilla.yoctoproject.org/enter_bug.cgi?product=Automated%20Update%20Handler\n\n" \
             "Regards,\nThe Upgrade Helper"
 
         if pkg_ctx['MAINTAINER'] in maintainer_override:
-- 
2.15.0


