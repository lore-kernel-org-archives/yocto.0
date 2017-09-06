Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 027A8E00A9C; Wed,  6 Sep 2017 08:49:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B9D8E0091D
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 08:49:35 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Sep 2017 08:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,484,1498546800"; d="scan'208";a="308640748"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.130])
	by fmsmga004.fm.intel.com with ESMTP; 06 Sep 2017 08:49:34 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Sep 2017 10:49:19 -0500
Message-Id: <1504712959-10724-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] htdocs/css/style.css: fix select style in FF and IE
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
X-List-Received-Date: Wed, 06 Sep 2017 15:49:36 -0000

Series view displays the "Revision" select element not in
line with the general patchwork style/design when viewed
using Firefox or Internet Explorer browsers due to a known
incompatibility of this browsers with Boostrap library
(for example, an arrow head inside a button is displayed next
to the "Revision" select element when using FF).

This change hides the out-of-style items by using browser-specific
css properties "moz-appearance" and "ms-expand".

[YOCTO #11886]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 htdocs/css/style.css | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/htdocs/css/style.css b/htdocs/css/style.css
index 52e2422..633f13e 100644
--- a/htdocs/css/style.css
+++ b/htdocs/css/style.css
@@ -549,3 +549,12 @@ pre.test-result {
         margin: 0px;
 	border: 0px;
 }
+
+#revs-list{
+        -moz-appearance: none;
+        text-indent: 0.01px;
+        text-overflow: ''
+}
+#revs-list::-ms-expand{
+        display: none;
+}
-- 
2.7.4


