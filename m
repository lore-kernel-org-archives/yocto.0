Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F06CE00CF9; Sun, 24 Sep 2017 14:02:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F331E00CD5
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:57 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2017 14:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,433,1500966000"; d="scan'208";a="315657309"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 24 Sep 2017 14:02:57 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.84])
	by linux.intel.com (Postfix) with ESMTP id BFAA258027A
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 14:02:56 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 00:05:41 +0300
Message-Id: <1506287141-3998-6-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
Subject: [meta-java][PATCH 6/6] README: remove meta-oe from documentation
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
X-List-Received-Date: Sun, 24 Sep 2017 21:02:59 -0000

Update the README by removing the dependency on meta-openembedded
layer from documentation.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 README | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/README b/README
index 33511ff..81664c7 100644
--- a/README
+++ b/README
@@ -7,11 +7,7 @@ Yocto Project build systems.
 This layer depends on:
 
 URI: git://git.openembedded.org/openembedded-core
-branch: krogoth (or master)
-revision: HEAD
-
-URI: git://git.openembedded.org/meta-openembedded
-branch: krogoth (or master)
+branch: pyro (or master)
 revision: HEAD
 
 Contributing
@@ -69,7 +65,6 @@ For conf/bblayers.conf you have to add
 
 BBLAYERS ?= " \
    ...
-  path_to_source/meta-openembedded/meta-oe \
   path_to_source/sources/meta-java \
   "
 
-- 
2.4.0


