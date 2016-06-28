Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2762BE009CF; Tue, 28 Jun 2016 07:47:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C2F4E007B7
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 07:47:03 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 28 Jun 2016 07:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,541,1459839600"; d="scan'208";a="836669986"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga003.jf.intel.com with ESMTP; 28 Jun 2016 07:46:49 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Jun 2016 09:47:00 -0500
Message-Id: <1467125220-29652-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [PATCH] nightly-world-lsb.conf: Update name buildstep DownloadBitbakeErrorReports -> DownloadErrorReports
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
X-List-Received-Date: Tue, 28 Jun 2016 14:47:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The reference of the buildsteps for download error reports was updated [1] but,
i forget to update this one.

[1] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?id=e1e7c3b86720786ae4f60da008f68d4cf5d58559

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.controller/nightly-world-lsb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
index ae3a621..afc7546 100644
--- a/buildset-config.controller/nightly-world-lsb.conf
+++ b/buildset-config.controller/nightly-world-lsb.conf
@@ -21,5 +21,5 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'world'}},
-        {'DownloadBitbakeErrorReports': {}},
+        {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}]
-- 
2.1.4


