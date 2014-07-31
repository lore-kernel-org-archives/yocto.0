Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57CA8E007DC; Thu, 31 Jul 2014 16:45:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84CD5E0056A
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 16:45:08 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id y13so4406504pdi.11
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 16:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2ojQ6gAN0JfcLDyih1Qk02O12WieMqCUrFW/cMlzZkU=;
	b=iHF4VbpLdWVYdkpRSqshvig7CeR50Nkys++NJXMsKnrmbqPZ7pjHqHD+Map18AUBFA
	WjsanffYMz5uW8MmfM53awZyJz/+Z1goeCD/s7Ap7J6waNelvX/FQBZfE6yk82qjw4kU
	AUcaoWxN89EGOw9KSBwjJHkV1b4s/YTHqw+ksTJEgSfaqHq/m2FuETzSDvsMhWe1qguG
	UU7VxrTTTmatZ5+hKIr4Y27oWFAbqL4Ccd1QIta0Ej/gJM1Lrz7MNrDvSzItKff22/yt
	O+nyxYyeb9kZcZd4Ee3YMn965C2KLVYIuaMkvFjOdWUNSR7fzqTCCVCIytiMw4qfCEwU
	JQ1A==
X-Gm-Message-State: ALoCoQnITjRu2JKaOc+xZAbmVX8LoHM8Nsffh85gw1t32UMRg+Rtqezo8pKePaHmS4qW/+0+QCPF
X-Received: by 10.68.200.101 with SMTP id jr5mr1664823pbc.36.1406850308079;
	Thu, 31 Jul 2014 16:45:08 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	gn10sm6692482pbc.45.2014.07.31.16.45.07 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 31 Jul 2014 16:45:07 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 31 Jul 2014 16:45:06 -0700
Message-Id: <1406850306-28069-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] toyomo: ccs-tools
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
X-List-Received-Date: Thu, 31 Jul 2014 23:45:14 -0000

Add userland support program ccs-tools

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/ccs-tools/README             | 12 ++++++++
 recipes-security/ccs-tools/ccs-tools_1.8.3.bb | 42 +++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 recipes-security/ccs-tools/README
 create mode 100644 recipes-security/ccs-tools/ccs-tools_1.8.3.bb

diff --git a/recipes-security/ccs-tools/README b/recipes-security/ccs-tools/README
new file mode 100644
index 0000000..89d2d00
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
+/usr/lib/ccs-tools/init_policy
+
+DISTRO_FEATURES_append = " tomoyo"
diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
new file mode 100644
index 0000000..939a5d7
--- /dev/null
+++ b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
@@ -0,0 +1,42 @@
+SUMMARY = "Tomoyo"
+DESCRIPTION = "TOMOYO Linux is a Mandatory Access Control (MAC) implementation for Linux that can be used to increase the security of a system, while also being useful purely as a system analysis tool."
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
+PACKAGE="${PN} ${PN}-dbg"
+
+FILES_${PN} = "\
+    ${sbindir}/* \
+    ${base_sbindir}/* \
+    ${libdir}/* \
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
+
-- 
1.9.1


