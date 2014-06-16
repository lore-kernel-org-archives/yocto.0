Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A86F4E00B20; Sun, 15 Jun 2014 18:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C49E00AEC
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 18:37:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5G1bUut001000
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 18:37:31 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Sun, 15 Jun 2014 18:37:30 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <Xin.Ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 15 Jun 2014 21:37:28 -0400
Message-ID: <1402882648-31107-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] libpcre: update bbappend to 8.35
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
X-List-Received-Date: Mon, 16 Jun 2014 01:37:33 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* rename libpcre_8.34.bbappend to libpcre_8.35.bbappend
* remove 'PR' from libpcre_8.35.bbappend

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-support/libpcre/libpcre_8.34.bbappend |   13 -------------
 recipes-support/libpcre/libpcre_8.35.bbappend |   11 +++++++++++
 2 files changed, 11 insertions(+), 13 deletions(-)
 delete mode 100644 recipes-support/libpcre/libpcre_8.34.bbappend
 create mode 100644 recipes-support/libpcre/libpcre_8.35.bbappend

diff --git a/recipes-support/libpcre/libpcre_8.34.bbappend b/recipes-support/libpcre/libpcre_8.34.bbappend
deleted file mode 100644
index 9131f8d..0000000
--- a/recipes-support/libpcre/libpcre_8.34.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-PR .= "9"
-
-do_install_append () {
-	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
-		realsofile=`readlink ${D}${libdir}/libpcre.so`
-		mkdir -p ${D}/${base_libdir}/
-		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
-		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
-		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
-	fi
-}
-
-FILES_${PN} += "${base_libdir}/libpcre.so.*"
diff --git a/recipes-support/libpcre/libpcre_8.35.bbappend b/recipes-support/libpcre/libpcre_8.35.bbappend
new file mode 100644
index 0000000..558644e
--- /dev/null
+++ b/recipes-support/libpcre/libpcre_8.35.bbappend
@@ -0,0 +1,11 @@
+do_install_append () {
+	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
+		realsofile=`readlink ${D}${libdir}/libpcre.so`
+		mkdir -p ${D}/${base_libdir}/
+		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
+		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
+		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
+	fi
+}
+
+FILES_${PN} += "${base_libdir}/libpcre.so.*"
-- 
1.7.9.5


