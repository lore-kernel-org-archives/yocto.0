Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11071E00B5F; Tue, 21 Jun 2016 16:08:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41A4BE00B30
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631887"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:17 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:50 -0500
Message-Id: <1466550472-1365-14-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 13/15] nightly-oe-selftest.conf: Add steps for Download and Send error report.
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

These steps are needed for enable sending of Oe selftest error reports
to the Error report WEB.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.controller/nightly-oe-selftest.conf | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-oe-selftest.conf b/buildset-config.controller/nightly-oe-selftest.conf
index 155d3d5..1aa3309 100644
--- a/buildset-config.controller/nightly-oe-selftest.conf
+++ b/buildset-config.controller/nightly-oe-selftest.conf
@@ -14,4 +14,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
-        {'RunOeSelftest': {}}]
+        {'RunOeSelftest': {}},
+        {'DownloadBitbakeErrorReports': {}},
+        {'SendErrorReport': {}},
+	]
-- 
2.1.4


