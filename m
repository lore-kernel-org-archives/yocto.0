Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D899E00A54; Wed, 26 Sep 2018 20:11:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AC40E00A0C
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 20:11:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8R3BEXa008810
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 20:11:25 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Wed, 26 Sep 2018 20:11:04 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 27 Sep 2018 10:59:18 +0800
Message-ID: <1538017158-29029-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] libpcre_selinux.inc: fix do_install failure if .so file does not exist
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
X-List-Received-Date: Thu, 27 Sep 2018 03:11:36 -0000
Content-Type: text/plain

In case of the existence of meta-mingw, the library is .dll instead of
.so and these .dll files are in ${bindir}.

We need to check the existence of the .so file before doing readlink,
otherwise do_install fails.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-support/libpcre/libpcre_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/libpcre/libpcre_selinux.inc b/recipes-support/libpcre/libpcre_selinux.inc
index 59c0184..d886792 100644
--- a/recipes-support/libpcre/libpcre_selinux.inc
+++ b/recipes-support/libpcre/libpcre_selinux.inc
@@ -1,5 +1,5 @@
 do_install_append () {
-	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
+	if [ ! ${D}${libdir} -ef ${D}${base_libdir} -a -e ${D}${libdir}/libpcre.so ]; then
 		realsofile=`readlink ${D}${libdir}/libpcre.so`
 		mkdir -p ${D}/${base_libdir}/
 		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
-- 
2.7.4


