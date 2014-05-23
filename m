Return-Path: <Chong.Lu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86AEDE00B68; Thu, 22 May 2014 18:59:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52A95E00A2F
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 18:59:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4N1xV0a003215
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 18:59:31 -0700 (PDT)
Received: from PKE-CLU1-D1.corp.ad.wrs.com (128.224.162.204) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Thu, 22 May 2014 18:59:30 -0700
From: Chong Lu <Chong.Lu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 23 May 2014 09:59:29 +0800
Message-ID: <1400810369-14634-1-git-send-email-Chong.Lu@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH][V2] setools: Add bison-native and flex-native to DEPENDS
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
X-List-Received-Date: Fri, 23 May 2014 01:59:34 -0000
Content-Type: text/plain

Avoid policy_scan.c: No such file or directory

Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
---
 recipes-security/setools/setools_3.3.8.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
index 1e95a60..ba1802a 100644
--- a/recipes-security/setools/setools_3.3.8.bb
+++ b/recipes-security/setools/setools_3.3.8.bb
@@ -27,7 +27,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
                     file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
                     file://${S}/COPYING.LGPL;md5=fbc093901857fcd118f065f900982c24"
 
-DEPENDS += "python libsepol libselinux libxml2"
+DEPENDS += "bison-native flex-native python libsepol libselinux libxml2"
 
 PACKAGE_BEFORE_PN += "${PN}-libs"
 
-- 
1.7.9.5


