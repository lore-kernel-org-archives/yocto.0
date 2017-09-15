Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DBCCE00CF9; Fri, 15 Sep 2017 00:38:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A171E00A9B
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8F7cRGt023839
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:27 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Fri, 15 Sep 2017 00:38:26 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Sep 2017 15:37:25 +0800
Message-ID: <a49b6c2456fb2e927ae7d4972e6af48e309c1c59.1505460823.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505460823.git.jackie.huang@windriver.com>
References: <cover.1505460823.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 1/4] samhain: depends on attr when selinux is enabled
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
X-List-Received-Date: Fri, 15 Sep 2017 07:38:30 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The extended attribute is required by selinux feature,
so add the dependency when selinux is enabled.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/samhain/samhain.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 83b2db2..7b71d9f 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -55,7 +55,7 @@ PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
 PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
 PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
 PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
-PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux"
+PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux attr"
 PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
 PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
-- 
2.11.0


