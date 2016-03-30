Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0779E00833; Wed, 30 Mar 2016 14:39:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AFE5E0048B
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 14:39:22 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id h65so75132504ywe.0
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 14:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=6UsjEN/4vZgGoC9voBtKfOh7McVUgj570diHy6C+1S0=;
	b=NxyRrcCIYh+q4d7kiOL5YgzeogD9aInsB7c5+k4yWza6goMaUnrKC47K5qceN9VMqF
	RSJlGn+Yyb7IHsxCe1tw0qa4+LBS7JHB9teJrSQugBEnhYiklrvMxe5RD/KpaL7O4CMY
	mk4TsEBnXoAUrAwXYQjkj1xMOTRJw+8fDq+24jGSRXE+oMyfYIMrPyjdOSEiqm8Ykxvz
	UbA9pQmiPBNLI5DTpO2qjPVU4hGwp74plAukcMk4GMs7DSHLd4rzHVlcy3CZCPOt0DZf
	VEwGRFf14acyH+sHoApaMlsoOTdvTEQ7rPIUoSGqCC5n8aQm82HqeVuTswDwo++4+X85
	2b5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6UsjEN/4vZgGoC9voBtKfOh7McVUgj570diHy6C+1S0=;
	b=WwN0Q6RbMHBGwhPoEIhUnat8/6ftuR6trOHj9xqGstUC9gAQ8Hz9uF5jAPbYpF9s88
	fPzdAP7vjGw+/bNvvsFFFbh/P42pXpaDKMjLrjJ2qmhaJ+UKBIrLx3FDopOYepmqBvPA
	eq6E0PKpdMtSFApfkAk9zASAZIWa7XTBFULUAHK1WmLWu2dFPR2zj38yIEgShmfN4VZx
	SREc/kfmcGYkWR0HWalf1QlailOWhMLGDzOXMCwaChe150HxZZ7MYc4ON3mFJ5H0fBB2
	0FZLnM/gpWitux/1n12FI8iyuijxfiT2+fbCdF6PdCLBOv9PuBACCu2idGndOHfXHxue
	GXGA==
X-Gm-Message-State: AD7BkJK7PQjXahZ11Jv90lgKlB69s07AzFjFhdfFHGUgZg9hUBKcvuAnFHK+OOAHDFP6ug==
X-Received: by 10.37.43.135 with SMTP id r129mr289401ybr.172.1459373961486;
	Wed, 30 Mar 2016 14:39:21 -0700 (PDT)
Received: from Pahoa2.mvista.com ([64.2.3.194])
	by smtp.gmail.com with ESMTPSA id
	y187sm3667657ywc.17.2016.03.30.14.39.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 30 Mar 2016 14:39:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Mar 2016 14:39:18 -0700
Message-Id: <1459373958-13371-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][V3][PATCH] paxctl: fix compile issue.
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
X-List-Received-Date: Wed, 30 Mar 2016 21:39:25 -0000

use CC from build not host via EXTRA_OEMAKE

thanks khem

this fixes the below error.
WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: /sbin/paxctl contained in package paxctl requires libc.so.6(GLIBC_2.3.4)(64bit), but no providers found in RDEPENDS_paxctl? [file-rdeps]

minor recipe cleanup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/paxctl/paxctl_0.9.bb | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index 8eadad1..d69219f 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -8,13 +8,13 @@ LIC_FILES_CHKSUM = "file://paxctl.c;beginline=1;endline=5;md5=0ddd065c61020dda79
                     file://paxctl-elf.c;beginline=1;endline=5;md5=99f453ce7f6d1687ee808982e2924813 \
 		   "
 
-SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz"
+SRC_URI = "http://pax.grsecurity.net/${BP}.tar.gz"
+
 SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
 SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
 
+EXTRA_OEMAKE = "CC='${CC}' DESTDIR='${D}'"
+
 do_install() {
-	oe_runmake 'DESTDIR=${D}' install
+	oe_runmake install
 }
-
-FILES_${PN} = "${base_sbindir}/paxctl"
-FILES_${PN}-doc = "${mandir}/man1/paxctl.1"
-- 
2.3.5


