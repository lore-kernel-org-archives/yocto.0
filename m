Return-Path: <jwessel@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA4BE00D33; Tue, 20 Aug 2019 10:36:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20483E00CAA
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 10:36:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7KHZNlV009117
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 10:35:55 -0700
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 20 Aug 2019 10:35:37 -0700
Received: by ala-lpggp2.wrs.com (Postfix, from userid 5002)	id 40899AA2877;
	Tue, 20 Aug 2019 10:35:37 -0700 (PDT)
From: Jason Wessel <jason.wessel@windriver.com>
To: <mark.hatle@windriver.com>
Date: Tue, 20 Aug 2019 10:35:36 -0700
Message-ID: <20190820173536.100946-1-jason.wessel@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH] mcstrans: Fix package to work with usrmerge
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
X-List-Received-Date: Tue, 20 Aug 2019 17:36:08 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

ERROR: mcstrans-2.8-r0 do_package_qa: QA Issue: mcstrans-dbg package is not obeying usrmerge distro feature. /sbin should be relocated to /usr. [usrmerge]
ERROR: mcstrans-2.8-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.
ERROR: mcstrans-2.8-r0 do_package_qa: Function failed: do_package_qa

It is a simple case of making sure the SBINDIR is set properly for the
Makfile.

[ Issue: LIN1018-4665 ]

Signed-off-by: Jason Wessel <jason.wessel@windriver.com>
---
 recipes-security/selinux/mcstrans.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
index 2568c8d..feb5715 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -12,6 +12,8 @@ SRC_URI += "file://mcstrans-de-bashify.patch \
 
 inherit systemd update-rc.d
 
+EXTRA_OEMAKE += "SBINDIR=${sbindir}"
+
 DEPENDS += "libsepol libselinux libcap"
 
 do_install_append() {
-- 
2.21.0


