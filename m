Return-Path: <zavier.luo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C525E00CC2; Mon, 28 Dec 2015 01:59:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zavier.luo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5561DE00CF5
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 01:59:44 -0800 (PST)
Received: by mail-pa0-f65.google.com with SMTP id yy13so6213873pab.1
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 01:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=LJysZ6e2btflWEEPwfeHut5yp4NAkAwNdnp5pqrwPF8=;
	b=XPqraFcsGWGOKsxJOId45u0G4LlxcCxuYB81mTdUa9UkIQEJYndBSWtyXnZVwocgXJ
	0QxkTiYCSd5wOERv4/tP4TWKpV3qTtRgS/YBfm2kg4ZJjQxa1f7g4wnsWV879CebCQPE
	7yzgzqNENoRjHs018Z1boJlD+T8Vy2BEJaS1KeQvZm7ozDeZ6bK1oTs8HK/YlW7ho5KK
	rXyAMoMrhZjEH3jp9dPyTnqgAs72f3lskkbJevWqxLqtTcLHwYbo+SzdSVQv8VIEaVTV
	Bqb0r9XxJcBkm5VLyMN5bplUg/bd/Wc85MPjXARWrphxSe+AFcyIq+Z32r9RN3rP/YOl
	YIfw==
X-Received: by 10.66.162.231 with SMTP id yd7mr76379223pab.98.1451296784376;
	Mon, 28 Dec 2015 01:59:44 -0800 (PST)
Received: from sweet.ap.freescale.net (gate-zmy3.freescale.com. [192.88.167.1])
	by smtp.gmail.com with ESMTPSA id
	f24sm75334120pff.68.2015.12.28.01.59.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Dec 2015 01:59:43 -0800 (PST)
From: Zavier Luo <zavier.luo@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Dec 2015 18:06:21 +0800
Message-Id: <1451297181-342-1-git-send-email-zavier.luo@gmail.com>
X-Mailer: git-send-email 2.4.3
Subject: [meta-cgl][PATCH] packagegroup-cgl-applications: unify the package name to fix the parse warnings
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
X-List-Received-Date: Mon, 28 Dec 2015 09:59:54 -0000

Fix the following parse warning:
    WARNING: Variable key RDEPENDS_${PN} ( ${LTTNGUST}) replaces original key RDEPENDS_packagegroup-cgl-applications (     lvm2     ${LM_SENSORS}     bc     gettext     gettext-runtime     babeltrace     gdb     gdbserver     rsync     strace     libevent     mdadm     quota     smartmontools     monit     syslog-ng     ocfs2-tools     logcheck     samhain-client     samhain-server     audit     crash     pam-passwdqc     libpam     rsyslog     makedumpfile     ).

Signed-off-by: Zavier Luo <zavier.luo@gmail.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
index f823ece..3ebb7ed 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
@@ -8,7 +8,7 @@ inherit packagegroup
 inherit pkgconfig
 
 
-PACKAGES = "packagegroup-cgl-applications"
+PACKAGES = "${PN}"
 
 LM_SENSORS = " \
     lmsensors-fancontrol \
@@ -24,7 +24,7 @@ LM_SENSORS = " \
     lmsensors-config-fancontrol \
     "
 
-RDEPENDS_packagegroup-cgl-applications = " \
+RDEPENDS_${PN} = " \
     lvm2 \
     ${LM_SENSORS} \
     bc \
@@ -64,4 +64,4 @@ RDEPENDS_${PN}_append_qemuppc = " ${LTTNGUST}"
 RDEPENDS_${PN}_append_qemuarm = " ${LTTNGUST}"
 RDEPENDS_${PN}_append_powerpc = " ${LTTNGUST}"
 
-RRECOMMENDS_packagegroup-cgl-applications = ""
+RRECOMMENDS_${PN} = ""
-- 
2.4.3


