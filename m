Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD256E00A0A; Sat, 29 Sep 2018 02:25:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB0ACE009D9
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 02:25:56 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w8T9Pu4X019490
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 02:25:56 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Sat, 29 Sep 2018 02:25:55 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 29 Sep 2018 17:25:53 +0800
Message-ID: <1538213153-18548-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH][meta-security] bseccomp: fix do package qa warning
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
X-List-Received-Date: Sat, 29 Sep 2018 09:25:57 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Fix below warning:

lib32-libseccomp-2.3.3-r0 do_package: QA Issue: lib32-libseccomp:
Files/directories were installed but not shipped in any package:

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-security/libseccomp/libseccomp_2.3.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/libseccomp/libseccomp_2.3.3.bb b/recipes-security/libseccomp/libseccomp_2.3.3.bb
index 0a8a679..9c66db6 100644
--- a/recipes-security/libseccomp/libseccomp_2.3.3.bb
+++ b/recipes-security/libseccomp/libseccomp_2.3.3.bb
@@ -35,7 +35,7 @@ do_install_ptest() {
     done
 }
 
-FILES_${PN} = "${bindir} ${libdir}/${PN}.so*"
+FILES_${PN} = "${bindir} ${libdir}/${BPN}.so*"
 FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
 
 RDEPENDS_${PN}-ptest = "bash"
-- 
2.7.4


