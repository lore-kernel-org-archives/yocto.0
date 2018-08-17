Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 064E2E00BB3; Fri, 17 Aug 2018 02:34:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA79E00B5E
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 02:34:42 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7H9Ygsv024069
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 02:34:42 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 17 Aug 2018 02:34:41 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Aug 2018 17:34:39 +0800
Message-ID: <1534498479-391972-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] mcstrans: define SBINDIR to ${D}/${base_sbindir}
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
X-List-Received-Date: Fri, 17 Aug 2018 09:34:44 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Add SBINDIR=${D}/${base_sbindir} to EXTRA_OEMAKE
to fix below error when usrmerge enabled in
DISTRO_FEATURES.

ERROR: QA Issue: mcstrans-dbg package is not obeying usrmerge distro feature. /sbin should be relocated to /usr. [usrmerge]

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/selinux/mcstrans.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
index 590e6d2..996e8d0 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -14,7 +14,7 @@ inherit systemd update-rc.d
 
 DEPENDS += "libsepol libselinux libcap"
 
-EXTRA_OEMAKE += "SYSTEMDDIR=${D}${systemd_unitdir}"
+EXTRA_OEMAKE += "SYSTEMDDIR=${D}${systemd_unitdir} SBINDIR=${D}/${base_sbindir}"
 do_install_append() {
     install -d ${D}${sbindir}
     install -m 755 utils/untranscon ${D}${sbindir}/
-- 
2.7.4


