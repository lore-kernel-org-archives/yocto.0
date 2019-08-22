Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7E08E00DB1; Thu, 22 Aug 2019 01:05:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73078E00DAE
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 01:05:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7M85bk0002037
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 01:05:47 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 22 Aug 2019 01:05:26 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 22 Aug 2019 16:05:23 +0800
Message-ID: <1566461124-29766-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-selinux][PATCH 1/2] selinux-python: add python-core as runtime dependency
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
X-List-Received-Date: Thu, 22 Aug 2019 08:05:59 -0000
Content-Type: text/plain

Fix QA issues:
QA Issue: /usr/lib64/python2.7/site-packages/seobject.py contained in package selinux-python requires /usr/bin/python,
   but no providers found in RDEPENDS_selinux-python? [file-rdeps]
QA Issue: /usr/bin/audit2allow contained in package selinux-python-audit2allow requires /usr/bin/python,
   but no providers found in RDEPENDS_selinux-python-audit2allow? [file-rdeps]
QA Issue: /usr/bin/chcat contained in package selinux-python-chcat requires /usr/bin/python,
   but no providers found in RDEPENDS_selinux-python-chcat? [file-rdeps]

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index c774de4..57042ab 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -15,11 +15,13 @@ inherit python-dir
 
 DEPENDS += "python-native libsepol"
 RDEPENDS_${BPN}-audit2allow += "\
+        python-core \
         python-textutils \
         libselinux-python \
         ${BPN}-sepolgen \
 "
 RDEPENDS_${BPN}-chcat += "\
+        python-core \
         python-codecs \
         python-shell \
         python-stringold \
@@ -28,6 +30,7 @@ RDEPENDS_${BPN}-chcat += "\
         ${BPN} \
 "
 RDEPENDS_${BPN} += "\
+        python-core \
         python-codecs \
         python-io \
         python-ipy \
-- 
2.7.4


