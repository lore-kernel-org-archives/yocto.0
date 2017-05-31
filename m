Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C22C9E00B47; Tue, 30 May 2017 19:39:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D02CE00B47
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 19:39:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4V2dPMH028278
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 19:39:25 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Tue, 30 May 2017 19:39:24 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 31 May 2017 10:39:23 +0800
Message-ID: <20170531023923.3887-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] openipmi: remove the bbappend
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
X-List-Received-Date: Wed, 31 May 2017 02:39:28 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The recipe in meta-oe is version 2.0.22 now, in which
the perl modules are packaged in openipmi-perl,
so this bbappend is not needed any more.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 meta-cgl-common/recipes-extended/openipmi/openipmi_2.0.21.bbappend | 2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-extended/openipmi/openipmi_2.0.21.bbappend

diff --git a/meta-cgl-common/recipes-extended/openipmi/openipmi_2.0.21.bbappend b/meta-cgl-common/recipes-extended/openipmi/openipmi_2.0.21.bbappend
deleted file mode 100644
index 72e732b..0000000
--- a/meta-cgl-common/recipes-extended/openipmi/openipmi_2.0.21.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-FILES_${PN} += "/usr/lib/perl5"
-FILES_${PN}-dbg += "/usr/lib/perl5/auto/OpenIPMI/.debug"
-- 
2.11.0


