Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41207E00D4F; Tue, 20 Aug 2019 10:38:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2499E00D11
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 10:38:29 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7KHcTCE003203
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 10:38:29 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 20 Aug 2019 10:38:28 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Aug 2019 10:38:28 -0700
Message-ID: <20190820173828.2696-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux][PATCH 1/1] mcstrans: specify SBINDIR
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
X-List-Received-Date: Tue, 20 Aug 2019 17:38:30 -0000
Content-Type: text/plain

We need SBINDIR to be compatible with the usrmerge distro feature.
The update to version 2.8 (commit c55c0aca...) removed the definition,
perhaps because the "${D}/" prefix broke the build.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 recipes-security/selinux/mcstrans.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
index 2568c8d..e66633d 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -14,6 +14,9 @@ inherit systemd update-rc.d
 
 DEPENDS += "libsepol libselinux libcap"
 
+# We do not need "${D}/" as a prefix anymore.
+EXTRA_OEMAKE += "SBINDIR=${base_sbindir}"
+
 do_install_append() {
     install -d ${D}${sbindir}
     install -m 755 utils/untranscon ${D}${sbindir}/
-- 
2.7.4


