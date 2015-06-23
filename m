Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DDACE009E4; Tue, 23 Jun 2015 07:00:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,
	MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 23843E009B8
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 07:00:11 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 23 Jun 2015 16:00:08 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 7817A28BA1E;
	Tue, 23 Jun 2015 16:00:08 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<Alexandru.Vaduva@enea.com>, <Alexandra.Safta@enea.com>
Date: Tue, 23 Jun 2015 16:00:02 +0200
Message-ID: <1435053560-6941-2-git-send-email-siva.borra@enea.com>
X-Mailer: git-send-email 1.9.1
Received: from zsibo-HP-EliteBook-2170p (172.16.141.151) by mx-3.enea.com
	(172.21.1.205) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 23 Jun 2015 11:59:33 +0200
Received: by zsibo-HP-EliteBook-2170p (Postfix, from userid 1000)	id
	CE011441D57; Tue, 23 Jun 2015 11:59:33 +0200 (CEST)
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1435053560-6941-1-git-send-email-siva.borra@enea.com>
References: <1435053560-6941-1-git-send-email-siva.borra@enea.com>
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Received-SPF: None (SESTOEX08.enea.se: siva.borra@enea.com does not
	designate permitted sender hosts)
MIME-Version: 1.0
Cc: Siva Borra <siva.borra@enea.com>, linux@list.enea.se, issues@enea.com
Subject: [LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.
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
X-List-Received-Date: Tue, 23 Jun 2015 14:00:16 -0000
Content-Type: text/plain

From: Siva Borra <siva.borra@enea.com>

Add the makedumpfile package recipe to
the cgl layer.

[LXCR-4977]


Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 .../makedumpfile/files/alias-powerpc-powerpc32.patch | 13 +++++++++++++
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb   | 20 ++++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
new file mode 100644
index 0000000..70ad663
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
@@ -0,0 +1,13 @@
+diff -rupN makedumpfile-1.5.8/Makefile makedumpfile-1.5.8/Makefile
+--- makedumpfile-1.5.8/Makefile	2015-03-24 02:58:33.000000000 +0100
++++ makedumpfile-1.5.8/Makefile	2015-06-23 11:08:30.595655336 +0200
+@@ -25,7 +25,8 @@ endif
+ ARCH := $(shell echo ${TARGET}  | sed -e s/i.86/x86/ -e s/sun4u/sparc64/ \
+ 			       -e s/arm.*/arm/ -e s/sa110/arm/ \
+ 			       -e s/s390x/s390/ -e s/parisc64/parisc/ \
+-			       -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/)
++			       -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/ \
++			       -e s/powerpc/powerpc32/)
+ 
+ CROSS :=
+ ifneq ($(TARGET), $(HOST_ARCH))
diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
new file mode 100644
index 0000000..6c32306
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "Make dump file utility"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
+
+SRC_URI = "http://sourceforge.net/projects/makedumpfile/files/makedumpfile/1.5.8/makedumpfile-${PV}.tar.gz;name=makedumpfile \
+	   file://alias-powerpc-powerpc32.patch \
+	   "
+
+SRC_URI[makedumpfile.md5sum] = "642d975349dff744c6027d4486499258"
+SRC_URI[makedumpfile.sha256sum] = "dd9c6c40c1ae6774b61bbe7b53f5ebbee9734f576d8ecb75ffb929288f5ea64d"
+
+DEPENDS = "zlib elfutils bzip2"
+
+EXTRA_OEMAKE = "TARGET=${TARGET_ARCH}"
+
+do_install() {
+	install -d ${D}${bindir}/
+	install -c -m 755 ${S}/makedumpfile ${D}${bindir}/
+}
-- 
1.9.1


