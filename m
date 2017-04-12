Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C25CBE00B1B; Tue, 11 Apr 2017 20:54:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9FE9E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 20:54:29 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id o126so2704453pfb.1
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 20:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=NwEWcNno1TwCiDE4dzZethNBwhTxJkjZwd23vLZg+10=;
	b=e/FZZf+JH1odBSr/i8ajAGJCb+NitB4dXEYvK6YktvCKh78AkgvV5A0KMA2bUzKdxO
	+GvZaE0fvj8yenMseRYwos5PwiRxrcwceX/rwAtHS9UDhcc868OJho+gYf/CwWKeBUXl
	Hv4lUMnGwGZaKVklPxoTn0t1Orpnur/5fzUQyT60rtLk65y6qqDaAJ4ilVpRwBbSq2Hp
	IIRPzZrprTodHk3Fdxwt2yv4l8it7F4BnRt9BpRIHKugTT4l1F+nU/36L0WecaQdAWhP
	6mmMxr19JBM0tVy77gtymC/dchs7ZHf/WRG+kCu4a2afM9P1+8cwBMETm9hg/+XApqM1
	pNhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=NwEWcNno1TwCiDE4dzZethNBwhTxJkjZwd23vLZg+10=;
	b=DzXJD9oDMjVJ9kTUCyw7W7f70QTFDGvDUntdCfRptdKgaV+D3GULrMTWbqSIEo7DAx
	9Rv7rTc1koTOeWWPPxdf7BdHFX1QuTC/cq6lgRdyxdEVjsfjt769okHnOmIy3RY1QN9x
	IQRtClMya0d3RI5O3hKGZTcFpP4kgbRWtvSFtIJgNXN1u+CWuNti4GYj2SDKAaux3t/D
	Xyi5DEZNM+/3awA0z/PoRsHdciWk0FgvymMJJYHeiDaQO5sS/CpcneuVCSV8tzcOFxdn
	TFqN9oyGMQ8GK7SEXgSM12D76d3cdgHoJvFrHaK0ryCf+wHZ90cCBpi5VTjdLcm2p/ku
	KbPw==
X-Gm-Message-State: AFeK/H0mrV53l6dGa0xu5jWVtNW9l+aOxTJQOn61YtUjjjkuKtaK0CDpF/ENHqYsZM/Lbw==
X-Received: by 10.84.241.14 with SMTP id a14mr78119636pll.117.1491969269740;
	Tue, 11 Apr 2017 20:54:29 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	v17sm33224500pgc.20.2017.04.11.20.54.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Apr 2017 20:54:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 11 Apr 2017 20:54:27 -0700
Message-Id: <1491969268-15138-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] samhain: update to 4.2.1
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
X-List-Received-Date: Wed, 12 Apr 2017 03:54:31 -0000

remove patch integrated into update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/files/c99_dnmalloc.patch      | 18 ------------------
 ...samhain-client_4.2.0.bb => samhain-client_4.2.1.bb} |  0
 ...samhain-server_4.2.0.bb => samhain-server_4.2.1.bb} |  0
 recipes-security/samhain/samhain.inc                   |  5 ++---
 4 files changed, 2 insertions(+), 21 deletions(-)
 delete mode 100644 recipes-security/samhain/files/c99_dnmalloc.patch
 rename recipes-security/samhain/{samhain-client_4.2.0.bb => samhain-client_4.2.1.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.2.0.bb => samhain-server_4.2.1.bb} (100%)

diff --git a/recipes-security/samhain/files/c99_dnmalloc.patch b/recipes-security/samhain/files/c99_dnmalloc.patch
deleted file mode 100644
index 2216564..0000000
--- a/recipes-security/samhain/files/c99_dnmalloc.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-samhain: musl build fix c99
-
-Upstream-Status: Submitted
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-Index: samhain-4.2.0/src/dnmalloc.c
-===================================================================
---- samhain-4.2.0.orig/src/dnmalloc.c
-+++ samhain-4.2.0/src/dnmalloc.c
-@@ -5524,7 +5524,7 @@ arc4_stir(void)
-         struct {
-                 struct timeval tv1;
-                 struct timeval tv2;
--                u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
-+                unsigned char rnd[(128 - 2*sizeof(struct timeval)) / sizeof(unsigned char)];
-         } rdat;
- #if !defined(__FreeBSD__) && !defined(__OpenBSD__) && !defined(__NetBSD__)
-         ssize_t sz = 0;
diff --git a/recipes-security/samhain/samhain-client_4.2.0.bb b/recipes-security/samhain/samhain-client_4.2.1.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.2.0.bb
rename to recipes-security/samhain/samhain-client_4.2.1.bb
diff --git a/recipes-security/samhain/samhain-server_4.2.0.bb b/recipes-security/samhain/samhain-server_4.2.1.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.2.0.bb
rename to recipes-security/samhain/samhain-server_4.2.1.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index d558e6b..007264d 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -7,11 +7,10 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.init \
 	   file://${INITSCRIPT_NAME}.default \
-           file://c99_dnmalloc.patch \
 	  "
 
-SRC_URI[md5sum] = "d98a55646b14f9419fcedde909d1bf02"
-SRC_URI[sha256sum] = "6b2db91fc92b3a9fc2edcc6ee16438156753c05f69c114856289e9f25ba0e50a"
+SRC_URI[md5sum] = "6de1060d6e79c4893d8d89d5cbd3c1b0"
+SRC_URI[sha256sum] = "93beabb19ac68fb5336a3d8f6b5414de05a460ff6982c41a4e3fb2082e769791"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.7.4


