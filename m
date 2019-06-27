Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85C0AE00D6B; Wed, 26 Jun 2019 17:40:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 173D3E00B65
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 17:40:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5R0dH5b027849
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jun 2019 17:39:28 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 26 Jun 2019 17:39:07 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<alexandru.vaduva@linux.com>
Date: Thu, 27 Jun 2019 08:39:00 +0800
Message-ID: <1561595941-25137-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561595941-25137-1-git-send-email-yi.zhao@windriver.com>
References: <1561595941-25137-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-cgl][PATCH 2/3] packagegroup-cgl-applications: only install libpam and pam-passwdqc if pam distro flag set
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
X-List-Received-Date: Thu, 27 Jun 2019 00:40:19 -0000
Content-Type: text/plain

Fix build error when pam distro flag is not set:

$ bitbake packagegroup-cgl-applications
ERROR: Nothing RPROVIDES 'pam-passwdqc' (but
/buildarea/poky/meta-cgl/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
RDEPENDS on or otherwise requires it)
ERROR: Nothing RPROVIDES 'libpam' (but
/buildarea/poky/meta-cgl/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
RDEPENDS on or otherwise requires it)

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
index 5e7170d..6b7a630 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
@@ -46,9 +46,8 @@ RDEPENDS_${PN} = " \
     samhain-server \
     audit \
     crash \
-    pam-passwdqc \
-    libpam \
     makedumpfile \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'pam-passwdqc libpam', '', d)} \
     "
 
 LTTNG ?= "\
-- 
2.7.4


