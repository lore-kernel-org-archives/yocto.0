Return-Path: <insop.song@gmail.com>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 249D3E0147C;
	Fri, 15 Mar 2013 04:51:34 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id d42so1503202qca.29
	for <multiple recipients>; Fri, 15 Mar 2013 04:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=HlNqgJ4PANepSPh+CSybpvoujZGqi73cqYxcVLK3fNc=;
	b=JUXvGAajorMRW+7maShqSKFORuqXWNfP58VJTyrQeNa6F4K5kpN9/3JtyHNeItRCA3
	r5pQaknE3N/CGSxJkCik1UmjZYfur7z/YdmmHPmUJztwHuY7BbUSb4KbmCDt9hInXF2d
	ry/MntzGdeyGk1wosBHvqFTtRQBNxiHrg0UKRfsPphiveIK75YePQesFlWq0Rit15/qe
	hAm8znEzsoB0T/N0XYfyq3yxVruUOGhY1YNRV0qwA9auFskYtZv6NFCHqDy0Hz86Cl8m
	khDOcTEI2pR4McfQ4ykXrUnP1EZkEWgozJTFSkfMDG2Wd/wrCwxWJeKRlLVqz/QuJ+87
	S7BQ==
X-Received: by 10.49.24.110 with SMTP id t14mr4827478qef.48.1363348293630;
	Fri, 15 Mar 2013 04:51:33 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id ku2sm2476279qeb.4.2013.03.15.04.51.31
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 04:51:32 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Fri, 15 Mar 2013 04:47:17 -0700
Message-Id: <a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1363347615.git.insop.song@gmail.com>
References: <insop.song@gmail.com> <cover.1363347615.git.insop.song@gmail.com>
In-Reply-To: <cover.1363347615.git.insop.song@gmail.com>
References: <cover.1363347615.git.insop.song@gmail.com>
Subject: [PATCH 1/1] add scheedtool-dl for testing sched_deadline use jiri's github as a main repo
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
X-List-Received-Date: Fri, 15 Mar 2013 11:51:34 -0000

---
 recipes-extended/images/core-image-realtime.bb |    1 +
 recipes-tools/schedtool-dl/schedtool-dl.bb     |   23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb

diff --git a/recipes-extended/images/core-image-realtime.bb b/recipes-extended/images/core-image-realtime.bb
index 624aacf..386b16b 100644
--- a/recipes-extended/images/core-image-realtime.bb
+++ b/recipes-extended/images/core-image-realtime.bb
@@ -8,5 +8,6 @@ EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
 IMAGE_INSTALL = "\
 	${CORE_IMAGE_BASE_INSTALL} \
 	rt-app \
+	schedtool-dl \
 	libgcc \
 	"
diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb b/recipes-tools/schedtool-dl/schedtool-dl.bb
new file mode 100644
index 0000000..6b298f1
--- /dev/null
+++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
+SECTION = "devel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
+PR = "r1"
+
+SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git"
+SRCREV = "${AUTOREV}"
+
+S = "${WORKDIR}/git"
+
+do_compile() {
+	oe_runmake
+}
+
+do_install() {
+     	install -d ${D}${bindir}
+     	install -m 0755 schedtool ${D}${bindir}
+}
+
+FILES_{PN} = "${bindir}/schedtool" 
+
+PARALLEL_MAKE = ""
-- 
1.7.9.5


