Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D2B1E00B67; Fri,  2 Jun 2017 05:14:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CF70E00B49
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 05:14:41 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id b84so18630425wmh.0
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 05:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=GiSTTzFSbMuXxJMn5pUPtpRBEppBwkJSR9ujQaux36s=;
	b=aDFHfOQGc8JxIMGe7QDnGhdQWXkF/1fvnl9aiPefXMaZBDS6hkp46EjvyDOhiFgWLS
	dgkwfkihYTsCKeZ/gg51QaJLwtPFlwYDxoGnaxQBig65ZoZX6wuGWg6tzgtqXXLuPC1i
	m5ZNytQt05pzUKFlv3dYIty9gGbhk+OF71CWnQh4h2hJss0xp66W8f93ERpco2NDjcXB
	lmRNamnuI4/2h4JCbUvWtnNF+fHWuSU/ohmefDpi5y64OmfZ8ghWZ5tbCL/d3hCLAk5a
	hI9oQmxnj7Zj2xXiLd+HMhYtlL8VmspAHHaIypCNw9dHShqrj9gEuO7k7F5qLC1TGbKA
	yQ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=GiSTTzFSbMuXxJMn5pUPtpRBEppBwkJSR9ujQaux36s=;
	b=h+36OCzXydxfxK+7FiDcX3XxRc0krkFBHOO72boW/POrFvkJ5PuXKIh99kCqIU5PUM
	7aI1UDNua/xNu1gBWUrhX8N5zNzL7RAwcx18RzCZQYpDhvCxrjqHg1Sv8U8CLSUqnrh+
	7hNNsx4lvSstEP8Uq/IJOQeGdvlhnew7e4hFHLgrdjYsICyAAcfJZ7v+tzNftQRV1+MT
	JRfIf1hZm1wugxEAaJqqlxSH5rlsv3ztK+kFjmBgKQwP0Vx+ORiyWBtM8Km5Og6gIDdO
	v3e2VWpxp4BaZw7RQa5dqRmAAOpXmb7dZc7uzc8JguAVGM7klptxTAJPmJ7VvdUwFsZ7
	KXJw==
X-Gm-Message-State: AODbwcA65E2DUjna7aYhda3D9yNZ48YgLgogP5qzZzy0MuhneKiiKf+Z
	LVaG6Puwi4ICEILf
X-Received: by 10.223.174.209 with SMTP id y75mr4779220wrc.82.1496405679984;
	Fri, 02 Jun 2017 05:14:39 -0700 (PDT)
Received: from localhost.localdomain (h-62.96.158.122.host.de.colt.net.
	[62.96.158.122]) by smtp.gmail.com with ESMTPSA id
	z32sm26653721wrc.12.2017.06.02.05.14.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 02 Jun 2017 05:14:39 -0700 (PDT)
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  2 Jun 2017 14:14:15 +0200
Message-Id: <20170602121416.40842-1-sven.ebenfeld@gmail.com>
X-Mailer: git-send-email 2.13.0
Subject: [meta-zulu-java][PATCH] zulu-jdk: move files to designated packages
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
X-List-Received-Date: Fri, 02 Jun 2017 12:14:45 -0000

The current zulu-jdk package includes many big files that are not
required to run java-programs on target devices. This patch avoids
that zulu-jdk acquires too much space on the target device.

Signed-off-by: Sven Ebenfeld <sven.ebenfeld@gmail.com>
---
 recipes-devtools/zulu-ezdk-arm-hflt.bb | 14 ++++++++++++++
 recipes-devtools/zulu-ezdk-arm-sflt.bb | 14 ++++++++++++++
 recipes-devtools/zulu-ezdk-x86-64.bb   | 14 ++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/recipes-devtools/zulu-ezdk-arm-hflt.bb b/recipes-devtools/zulu-ezdk-arm-hflt.bb
index 636f245..4f7781c 100644
--- a/recipes-devtools/zulu-ezdk-arm-hflt.bb
+++ b/recipes-devtools/zulu-ezdk-arm-hflt.bb
@@ -43,3 +43,17 @@ PROVIDES += "virtual/java"
 
 DEPENDS = "alsa-lib libxi libxrender libxtst"
 
+FILES_${PN}-doc = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/client/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/jli/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/man/ \
+	"
+
+FILES_${PN}-dev = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/src.zip \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/demo/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/sample/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/include/ \
+	"
\ No newline at end of file
diff --git a/recipes-devtools/zulu-ezdk-arm-sflt.bb b/recipes-devtools/zulu-ezdk-arm-sflt.bb
index 5bb2b7e..0324fcd 100644
--- a/recipes-devtools/zulu-ezdk-arm-sflt.bb
+++ b/recipes-devtools/zulu-ezdk-arm-sflt.bb
@@ -43,3 +43,17 @@ PROVIDES += "virtual/java"
 
 DEPENDS = "alsa-lib libxi libxrender libxtst"
 
+FILES_${PN}-doc = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/client/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/jre/lib/*/jli/*.diz \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/man/ \
+	"
+
+FILES_${PN}-dev = " \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/src.zip \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/demo/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/sample/ \
+	${datadir}/ezdk-${PV}_${PV_UPDATE}/include/ \
+	"
\ No newline at end of file
diff --git a/recipes-devtools/zulu-ezdk-x86-64.bb b/recipes-devtools/zulu-ezdk-x86-64.bb
index f132cdb..60272b3 100644
--- a/recipes-devtools/zulu-ezdk-x86-64.bb
+++ b/recipes-devtools/zulu-ezdk-x86-64.bb
@@ -43,3 +43,17 @@ PROVIDES += "virtual/java"
 
 DEPENDS = "alsa-lib libxi libxrender libxtst"
 
+FILES_${PN}-doc = " \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*/client/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/jre/lib/*/jli/*.diz \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/man/ \
+	"
+
+FILES_${PN}-dev = " \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/src.zip \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/demo/ \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/sample/ \
+	${datadir}/zulu-${PV}_${PV_UPDATE}/include/ \
+	"
\ No newline at end of file
-- 
2.13.0


