Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00D0DE00C4C; Thu, 27 Aug 2015 08:34:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C20F7E00AEE
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 08:34:47 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 27 Aug 2015 17:34:42 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 564B528EB70;
	Thu, 27 Aug 2015 17:34:42 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 27 Aug 2015 17:34:31 +0200
Message-ID: <1440689671-5122-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH 1/1] Enable iSCSI configs.
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
X-List-Received-Date: Thu, 27 Aug 2015 15:34:52 -0000
Content-Type: text/plain

From: Siva Borra <siva.borra@enea.com>

Enable iSCSI target and supported devices.

Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 .../recipes-kernel/linux/files/cfg/00023-open-scsi.cfg         | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
index e5075cb..90d5b3f 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00023-open-scsi.cfg
@@ -1,4 +1,12 @@
 CONFIG_SCSI_ISCSI_ATTRS=y
 CONFIG_ISCSI_TCP=y
 CONFIG_ISCSI_BOOT_SYSFS=y
-
+CONFIG_ISCSI_TARGET=y
+CONFIG_TARGET_CORE=y
+CONFIG_BE2ISCSI=y
+CONFIG_CNIC=y
+CONFIG_QLCNIC=y
+CONFIG_SCSI_QLA_ISCSI=y
+CONFIG_SCSI_CXGB4_ISCSI=y
+CONFIG_SCSI_BNX2_ISCSI=y
+CONFIG_SCSI_CXGB3_ISCSI=y
-- 
1.9.1


