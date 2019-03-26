Return-Path: <Ovidiu.Panait@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FA67E00C1B; Tue, 26 Mar 2019 03:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A337EE00942
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 03:45:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x2QAjhd3008769
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 03:45:43 -0700 (PDT)
Received: from otp-opanait-l1.corp.ad.wrs.com (128.224.124.169) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Tue, 26 Mar 2019 03:45:43 -0700
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 26 Mar 2019 12:44:58 +0200
Message-ID: <20190326104458.31257-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [meta-anaconda][PATCH 1/1] packagegroup-anaconda-support: Add lvm2-udevrules
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
X-List-Received-Date: Tue, 26 Mar 2019 10:45:45 -0000
Content-Type: text/plain

Installing an image without lvm2-udevrules using Anaconda would
produce an un-bootable system because "/dev/mapper/xxx" files are
not created.

Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 .../packagegroups/packagegroup-anaconda-support.bb               | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb b/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb
index 3f3f41e..21d69b6 100644
--- a/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb
+++ b/recipes-installersupport/packagegroups/packagegroup-anaconda-support.bb
@@ -12,6 +12,7 @@ RDEPENDS_${PN} = " \
     efibootmgr \
     kmod \
     lvm2 \
+    lvm2-udevrules \
     util-linux-mount \
     util-linux-switch-root \
     init-ifupdown \
-- 
2.20.1


