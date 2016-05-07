Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E567BE00D5C; Sat,  7 May 2016 07:15:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E265E00C8F
	for <yocto@yoctoproject.org>; Sat,  7 May 2016 07:15:21 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id zy2so14504755pac.2
	for <yocto@yoctoproject.org>; Sat, 07 May 2016 07:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=OTS8xH1LXkk7lyLUG9DRoyYMO1fTAfbSEluDBmJOCVg=;
	b=T2T6nrmUx/zlz2Gn6xVa/0yO2Lr+tjbxeKqsBC6WMo5JKkVBUaiTKqZS8DoswrIB9H
	12y7MPD+zJVSRbl8FnVgjPMRvoqQo7+b72EufQsyLNTNnWbQj7WZt1uONYrI9JL/ZcJn
	Gj3KvdnsPSbkj16kUABOywLpfgWGHFbdSC2/GM0Lcpefafk02lvs/u2kJwf5F+uJAPnZ
	cyOcExD7oiJhwZXXtAuwtVBfmsKb3Rv4HQODJmXtks9mmBL0wcdkKHr8VDNtjwIiaAWD
	Esc4wUd702qH4EDbMg9cGqOwC/0yiZ++Ea+CU60m/4Y8pRjvSMQpg48caW81G4NeiN2o
	+htw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=OTS8xH1LXkk7lyLUG9DRoyYMO1fTAfbSEluDBmJOCVg=;
	b=DA122mSJKzxckiGV7aCZnYu+6w/cPU4gZwcRq9+kCSTTmQDUN3EmscCRCQqXH6Sal/
	Jn2Kt8fOfSjWzR71AUxtRN+RIpSuh1vsPbw3WVwyE03Q/hwZp66kRi6kKrD5h5m2sroA
	BL7k/8EAJmGA8QUUpNILZjmAl0sntY1Lgv1wTof838XW3LcaoKXAJ3HWMnoLQ7YMdILi
	4XTOKzV0Styp09b8DFBw/LNFy1cJnhmkkJcom9qOPYvfZh0lTRKMQwLnXcU5cJML6rS+
	CqXc/B+QxuJdGdFuGSwSnJZXRoSRjHOlRr31RTq+XxoLQI+u8O8RkoqvUuWoBvmuu+on
	/q4w==
X-Gm-Message-State: AOPr4FVpnS7ptl0oOzM2LJPB6iXA0wtneHMzbQMS0kPqAV4SxRsWDU8VpG2x+21TtLTsIw==
X-Received: by 10.66.25.243 with SMTP id f19mr36509944pag.11.1462630521743;
	Sat, 07 May 2016 07:15:21 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	y66sm28585654pfy.66.2016.05.07.07.15.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 May 2016 07:15:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  7 May 2016 07:15:17 -0700
Message-Id: <1462630518-1636-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1462630518-1636-1-git-send-email-akuster808@gmail.com>
References: <1462630518-1636-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] trousers: Fix new QA warning
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
X-List-Received-Date: Sat, 07 May 2016 14:15:23 -0000

NOTE: meta-security/recipes-tpm/trousers/trousers_0.3.13.bb: base_contains is deprecated, please use bb.utils.contains instead.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/trousers/trousers_0.3.13.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
index 7001788..e274972 100644
--- a/recipes-tpm/trousers/trousers_0.3.13.bb
+++ b/recipes-tpm/trousers/trousers_0.3.13.bb
@@ -17,7 +17,7 @@ SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
 SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
 
 inherit autotools pkgconfig useradd update-rc.d
-inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
 PACKAGECONFIG ?= "gmp "
 PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
@@ -33,7 +33,7 @@ do_install_append() {
     install -d ${D}${sysconfdir}/udev/rules.d
     install -m 0644 ${WORKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
 
-    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${systemd_unitdir}/system
         install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
         sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
-- 
2.3.5


