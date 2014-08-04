Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29E4BE0078E; Mon,  4 Aug 2014 10:09:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05886E003D8
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 10:09:38 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id lf10so10327653pab.16
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 10:09:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=74zUeonQfF+J+Du6+xZgrSGHUGwa7wK2sgIe/lvoBT8=;
	b=gU0GRhVjESdIo/SMGYAN7kfyag1HIO3HN4fJX0bwjqJ3K61m7FRM0KcylqBKar0X0I
	Dn6uzpYeheKo/Rn8swehydvW4HjnqYaYSxhsmoL15mPGDvw63fcdCPh6+Gz6gxeWU6Gi
	q5upc7faWCRzRAovfXbMLnPkjuMIIFOifWHXPmAhW4qW5CKJeNHi5H1BMogalb+0cSAo
	Mmb+/ka0EEHBuCdG2mgobCoaGfdloyF/VMXQhACejXlsY9eLQ7RWXm+BlaV+eULEO2zL
	MzGOGnKaYLnVrEtf6OdvWNHXmClCcd8PoZmTGKYYmv03ydQMhm+ZyrOOXC3qHSeE2Ulm
	pT0A==
X-Gm-Message-State: ALoCoQkfZ1u9u7v12JGQKANXM3BXejaDRgSh5zuu/c8mQGx0tbmrPAO7yyzJ91tBRVtiAJS1QEza
X-Received: by 10.70.100.106 with SMTP id ex10mr22066209pdb.73.1407172178105; 
	Mon, 04 Aug 2014 10:09:38 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	gs2sm18038677pbc.20.2014.08.04.10.09.36 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 04 Aug 2014 10:09:37 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Aug 2014 10:09:33 -0700
Message-Id: <1407172173-23250-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH V2] tomoyo: ccs-tools
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
X-List-Received-Date: Mon, 04 Aug 2014 17:09:40 -0000

Add userland support program ccs-tools

V2:
Added RDEPEND on systemd
Fixed Description
Moved man page to doc packaged
Added Requiered distro feature on kernel component.
Fixed typo in path for init program

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/ccs-tools/README             | 12 +++++++
 recipes-security/ccs-tools/ccs-tools_1.8.3.bb | 50 +++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)
 create mode 100644 recipes-security/ccs-tools/README
 create mode 100644 recipes-security/ccs-tools/ccs-tools_1.8.3.bb

diff --git a/recipes-security/ccs-tools/README b/recipes-security/ccs-tools/README
new file mode 100644
index 0000000..4a4faa7
--- /dev/null
+++ b/recipes-security/ccs-tools/README
@@ -0,0 +1,12 @@
+Documentation:
+http://tomoyo.sourceforge.jp/1.8/index.html.en
+
+
+To start via command line add:
+
+" security=tomoyo TOMOYO_trigger=/usr/lib/systemd/systemd"
+
+To initialize:
+/usr/lib/ccs/init_policy
+
+DISTRO_FEATURES_append = " tomoyo"
diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
new file mode 100644
index 0000000..92f82ef
--- /dev/null
+++ b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
@@ -0,0 +1,50 @@
+SUMMARY = "Tomoyo"
+DESCRIPTION = "TOMOYO Linux is a Mandatory Access Control (MAC) implementation for Linux that can be used to increase the security of a system, while also being useful purely as a system analysis tool. \nTo start via command line add: \nsecurity=tomoyo TOMOYO_trigger=/usr/lib/systemd/systemd \nTo initialize: \n/usr/lib/ccs/init_policy"
+
+SECTION = "security"
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://README.ccs;md5=5b80632c6a2a3b7fa92ea46eff15bee9"
+
+DEPENDS = "ncurses"
+
+SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/ccs-tools-1.8.3-20130406.tar.gz"
+
+SRC_URI[md5sum] = "ffff535584cdf9ae28b85061c32e5618"
+SRC_URI[sha256sum] = "1e4129b59cd7fdb963962af7f2cccf4a66c77a4b0948f67320b569aaf6585fcf"
+
+S = "${WORKDIR}/${PN}"
+
+inherit distro_features_check
+
+do_make(){
+    oe_runmake USRLIBDIR=${libdir} all
+    cd ${S}/kernel_test
+    oe_runmake  all
+}
+
+do_install(){
+    oe_runmake INSTALLDIR=${D}  USRLIBDIR=${libdir} install
+}
+
+PACKAGE="${PN} ${PN}-dbg ${PN}-doc"
+
+FILES_${PN} = "\
+    ${sbindir}/* \
+    ${base_sbindir}/* \
+    ${libdir}/* \
+"
+
+FILES_${PN}-doc = "\
+    ${mandir}/man8/* \
+"
+
+FILES_${PN}-dbg = "\
+    ${base_sbindir}/.debug/* \
+    ${sbindir}/.debug/* \
+    ${libdir}/.debug/* \
+    ${libdir}/ccs/.debug/* \
+    /usr/src/debug/* \
+"
+
+REQUIRED_DISTRO_FEATURES ?=" tomoyo"
+RDEPEND += "systemd"
-- 
1.9.1


