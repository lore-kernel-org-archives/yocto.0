Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web10.7498.1584498618628138304
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UIwegLA6;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id 7so12824188pgr.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fRPszjuZGTrCk8HTSxyg+EbcHaCG/Movh2oG4awjsvE=;
        b=UIwegLA6FyNrqR1UX8ftRyhJK+w6BUs2zIttktt8ltLI7gB8cHvrl4VjoW0Dyf8Vny
         xJYBcTwgFwMkSzMGiNoFPTS6IOjJKDqyiClEaKPvrzZgG8+QdqrJCVt/DbcTlRKxK+V0
         7zirYivk7CbRFw85fnEbky73uBpZ+dFJKWEc7q6cw0y75bnUJSh8PG30mBK+VNoS9AFU
         V0SiCy2RIwrlVsBXX4ApAGgk+TgIwkEpfKU6kWw6lyApLItrlDW3L+Fsn3NaYT/a5woz
         OjHhVHzxWhBDHrOVHCH4lGtXdvrVB4P7IMWz2e7LWGWAyG5k8ZBCGKLm4CEWT5iC1WU9
         PNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=fRPszjuZGTrCk8HTSxyg+EbcHaCG/Movh2oG4awjsvE=;
        b=GyI2vceAxIpD8XUQ4RbjQuOTY1A8wwi1tXy0M3z0aG5VJ6QlPOGJYcVmwDWjNCRMok
         8jm4E5xb0QzMj0x2RfN88zrdLITu3gMWcDjhf1Ic56JJFJ4hsX4s31JlIajWM36Dm2ws
         FthiyQpL1CM73yHaUncl1aMwCbzyZEogqMvL8MGdNvADRtxircvf32cB7pS0+H9l5Xxa
         DWBRq1acjxh/8W0Kv0SDtg6sTZ4axCAIvg75ejKumbEjQmfjGHbK0mLyo9eLOdkyNVYX
         pASyCmW+6vG3ARnJe+KvllEttcwkMbn8ZcOkrMGE2ephyyfdRzxuTeQ8jdIwHw8och9x
         UH8w==
X-Gm-Message-State: ANhLgQ1dPkedYHr/0GMtGxrBaicvNq9/hC8GVHCX20YV+eX/NfVtekKC
	fXoST21UBqzBjIhPG1893sWxdpGb
X-Google-Smtp-Source: ADFU+vuRplV20IPQgQoMbDjokjqClmIM3F2yOL9lXIrNfQtRU/F8Ia9Jea/+Li4DeGXhbqLXZ2Hi0Q==
X-Received: by 2002:a62:e701:: with SMTP id s1mr1874135pfh.140.1584498617778;
        Tue, 17 Mar 2020 19:30:17 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:17 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/7] chkrootkit: add rootkit recipe
Date: Wed, 18 Mar 2020 02:30:10 +0000
Message-Id: <20200318023014.31723-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318023014.31723-1-akuster808@gmail.com>
References: <20200318023014.31723-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/rootkits/chkrootkit_0.53.bb | 48 ++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 recipes-scanners/rootkits/chkrootkit_0.53.bb

diff --git a/recipes-scanners/rootkits/chkrootkit_0.53.bb b/recipes-scanners/rootkits/chkrootkit_0.53.bb
new file mode 100644
index 0000000..4536be3
--- /dev/null
+++ b/recipes-scanners/rootkits/chkrootkit_0.53.bb
@@ -0,0 +1,48 @@
+DESCRIPTION = "rootkit detector"
+SUMMARY = "locally checks for signs of a rootkit"
+HOMEPAGE = "http://www.chkrootkit.org/"
+SECTION = "security"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=fdbe53788f7081c63387d8087273f5ff"
+
+SRC_URI = "ftp://ftp.pangeia.com.br/pub/seg/pac/${BPN}.tar.gz"
+SRC_URI[sha256sum] = "7262dae33b338976828b5d156b70d159e0043c0db43ada8dee66c97387cf45b5"
+
+
+inherit autotools-brokensep
+
+TARGET_CC_ARCH += "${LDFLAGS}"
+
+do_configure () {
+    sed -i 's/@strip.*$//' ${S}/Makefile
+}
+
+do_compile () {
+    make CC="${CC}" LDFLAGS="${LDFLAGS}" sense
+    gzip -9vkf ACKNOWLEDGMENTS
+    gzip -9vkf README
+}
+
+do_install () {
+    install -d ${D}/${libdir}/${PN}
+    install -d ${D}/${sbindir}
+    install -d ${D}/${docdir}/${PN}
+
+    install -m 644 ${B}/chkdirs ${D}/${libdir}/${PN}
+    install -m 644 ${B}/chklastlog ${D}/${libdir}/${PN}
+    install -m 644 ${B}/chkproc ${D}/${libdir}/${PN}
+    install -m 644 ${B}/chkutmp ${D}/${libdir}/${PN}
+    install -m 644 ${B}/chkwtmp ${D}/${libdir}/${PN}
+    install -m 644 ${B}/ifpromisc ${D}/${libdir}/${PN}
+    install -m 644 ${B}/strings-static ${D}/${libdir}/${PN}
+
+    install -m 755 ${B}/chklastlog ${D}/${sbindir}
+    install -m 755 ${B}/chkrootkit ${D}/${sbindir}
+    install -m 755 ${B}/chkwtmp ${D}/${sbindir}
+
+    install -m 644 ${B}/ACKNOWLEDGMENTS.gz ${D}/${docdir}/${PN}
+    install -m 644 ${B}/README.chklastlog ${D}/${docdir}/${PN}
+    install -m 644 ${B}/README.chkwtmp ${D}/${docdir}/${PN}
+    install -m 644 ${B}/README.gz ${D}/${docdir}/${PN}
+    install -m 644 ${B}/COPYRIGHT ${D}/${docdir}/${PN}
+}
-- 
2.17.1

