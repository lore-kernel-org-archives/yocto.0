Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63FDAE0089D; Tue, 14 Feb 2017 00:51:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FA4AE0089D
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 00:51:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v1E8prZH017786
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 00:51:54 -0800 (PST)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 14 Feb 2017 00:51:53 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 14 Feb 2017 00:51:50 -0800
Message-ID: <20170214085150.42779-3-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <20170214085150.42779-1-liezhi.yang@windriver.com>
References: <20170214085150.42779-1-liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 3/3] policycoreutils: add gettext-native to DEPENDS
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
X-List-Received-Date: Tue, 14 Feb 2017 08:51:58 -0000
Content-Type: text/plain

Fixed:
msgfmt -o af.mo af.po
make[1]: msgfmt: Command not found
make[1]: *** [af.mo] Error 127

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 7b75efe..fe01004 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -17,7 +17,7 @@ PAM_SRC_URI = "file://pam.d/newrole \
                file://pam.d/run_init \
 "
 
-DEPENDS += "libsepol libselinux libsemanage libcap"
+DEPENDS += "libsepol libselinux libsemanage libcap gettext-native"
 EXTRA_DEPENDS = "libcap-ng libcgroup setools"
 DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
 
-- 
2.9.0


