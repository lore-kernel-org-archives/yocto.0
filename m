Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EA6FE00B71; Mon, 20 Mar 2017 06:50:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F69E00B28
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490017814; x=1521553814;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=MYpc0GNcA7KjpGsI7mj2pw4y+oytIwiSIHbrpxf/Gvc=;
	b=Xlbi8rxryHmNv8XVGlxWR1bYGti4i/Yyifzac5nc0GPYhavuzXQW0Djx
	ZI93T6nZh0Eq8hz8o9nc4jtB4Wx/Nw==;
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Mar 2017 06:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,194,1486454400"; d="scan'208";a="78407569"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga005.fm.intel.com with ESMTP; 20 Mar 2017 06:50:13 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	by linux.intel.com (Postfix) with ESMTP id 1C42A2C8001
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:50:07 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 15:49:54 +0200
Message-Id: <1490017794-8346-2-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
In-Reply-To: <1490017794-8346-1-git-send-email-maxin.john@intel.com>
References: <1490017794-8346-1-git-send-email-maxin.john@intel.com>
Subject: [meta-oracle-java][PATCH 2/2] README: remove restrictions related to package management support
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
X-List-Received-Date: Mon, 20 Mar 2017 13:50:29 -0000

With RPM4, we no longer have to restrict the package managers supported
by meta-oracle-java layer to ipk and deb. Remove the restrictions
specified in the README file.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 README | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/README b/README
index cb06ced..1f2c138 100644
--- a/README
+++ b/README
@@ -28,15 +28,6 @@ browser, downloading the tarballs, and storing in the bitbake download
 location. And the bitbake download location is specified by DL_DIR variable
 in build configuration file (conf/local.conf)
 
-There are some known install problems for JRE packages due to dependencies
-reported by RPM package manager. Switching to DEB or IPK packaging temporarily
-fixes this.
-ie:
-PACKAGE_CLASSES = "package_deb"
-or
-PACKAGE_CLASSES = "package_ipk"
-in your 'local.conf' file
-
 Where to Send Patches
 =====================
 Please submit any patches against this layer to the Yocto mailing list like:
-- 
2.4.0


