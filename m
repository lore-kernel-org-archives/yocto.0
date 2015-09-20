Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99914E00E5F; Sun, 20 Sep 2015 16:05:31 -0700 (PDT)
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
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A0A5E00A71
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 16:05:27 -0700 (PDT)
Received: by padhk3 with SMTP id hk3so98692777pad.3
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 16:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=AJvc9TxvRxWm5DVZKflJzmINjZRvw5swo1z+cGrvjP8=;
	b=BwlNp8myOuPD3RcMCEaD21g/gA9PULxXnJgHeSK9LG6mZe5xK6dkOIBU+ImEPmkq8N
	Q+TGNY42kjPkQB0Q1monZOYh6UO0aWnCmUndxF9sff3BAq2WZf9ira9z//jqwPFdAuKD
	js4XPmEnQq542pi6CLCivVA7shJPUk0/oMhM9wiH64exiPpbpx2jZVf9eg6DCDOeGWSQ
	qm2HReLcUDb/JPLkEvdh5rs4i3kyC9Vxv1CkAjUg8oRXmzqCz3soq4FFhTDp8xggtO9u
	RQ0jk4zA17bu4nkIiBjudjAI5gsr3+TCMokJdVKnCOxDmN/Wn3+Ygb7jbQFaxvzBUZTF
	TOdg==
X-Received: by 10.66.194.196 with SMTP id hy4mr68321pac.148.1442790327604;
	Sun, 20 Sep 2015 16:05:27 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	qg2sm18242663pbb.80.2015.09.20.16.05.25 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 20 Sep 2015 16:05:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 20 Sep 2015 16:05:11 -0700
Message-Id: <1442790312-6273-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/2] libseccomp: update to latest
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
X-List-Received-Date: Sun, 20 Sep 2015 23:05:31 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libseccomp/{libseccomp_2.2.0.bb => libseccomp.bb}    | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)
 rename recipes-security/libseccomp/{libseccomp_2.2.0.bb => libseccomp.bb} (61%)

diff --git a/recipes-security/libseccomp/libseccomp_2.2.0.bb b/recipes-security/libseccomp/libseccomp.bb
similarity index 61%
rename from recipes-security/libseccomp/libseccomp_2.2.0.bb
rename to recipes-security/libseccomp/libseccomp.bb
index 3b6aa67..b197fca 100644
--- a/recipes-security/libseccomp/libseccomp_2.2.0.bb
+++ b/recipes-security/libseccomp/libseccomp.bb
@@ -4,23 +4,11 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "bd10aab13c7248cc0df57512617e33d6743d33a6"
+SRCREV = "7f3ae6e6a12390bd38f0787b242f60c47ad076c3"
 
-PV = "2.2.0+git${SRCPV}"
+PV = "2.2.3+git${SRCPV}"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git \
-        file://0001-arch-add-a-ppc64-syscall-table.patch \
-        file://0002-arch-add-the-basic-initial-support-for-ppc64-to-the-.patch \
-        file://0003-tools-add-ppc64-support.patch \
-        file://0004-tests-add-ppc64-support-to-the-regression-tests.patch \
-        file://0005-tests-add-ppc64-support-to-the-regression-live-tests.patch \
-        file://0006-ppc64-correct-the-ppc64-syscall-table-and-validation.patch \
-        file://0007-tests-minor-fix-in-arch-syscall-check.patch \
-        file://0008-arch-add-a-ppc-syscall-table.patch \
-        file://0009-arch-add-basic-initial-ppc-support-to-the-arch-depen.patch \
-        file://0010-tools-add-ppc-support.patch \
-        file://0011-tests-add-ppc-support-to-the-regression-tests.patch \
-        file://regresion_fixup_seq_usage.patch \
         "
 
 S = "${WORKDIR}/git"
-- 
2.3.5


