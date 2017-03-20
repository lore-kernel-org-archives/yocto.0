Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D57F9E00AA2; Mon, 20 Mar 2017 06:50:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B650E00901
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490017809; x=1521553809; h=from:to:subject:date:message-id;
	bh=PmiZik6461CP0oj1I6wi9Nj6LWO2YYatD2Sv+nlCZuQ=;
	b=BvZYLE1nGfLwMDXw9Vf7qowoAu4ymOIS93lxMQViOsfO2Lb+9AX4j6tT
	0nPuz5ePQdXMPBH5/s7R3kikjOCxiQ==;
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Mar 2017 06:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,194,1486454400"; d="scan'208";a="1124867920"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2017 06:50:08 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	by linux.intel.com (Postfix) with ESMTP id 791972C8001
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:50:02 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 15:49:53 +0200
Message-Id: <1490017794-8346-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [meta-oracle-java][PATCH 1/2] oracle-jse.inc: update RDEPENDS list
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
X-List-Received-Date: Mon, 20 Mar 2017 13:50:09 -0000

Update RDEPENDS list to satisfy the dependencies reported by
rpm package manager.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-devtools/oracle-java/oracle-jse.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 5df93d4..8cb0953 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -8,6 +8,7 @@ LIC_FILES_CHKSUM = "\
 
 FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a "
 
+RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
 # get the java update version in the resulting package
 PR =. "u${PV_UPDATE}"
 S = "${WORKDIR}"
-- 
2.4.0


