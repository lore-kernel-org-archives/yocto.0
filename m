Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2084E00973; Sun,  1 Sep 2019 15:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C08CE008D3
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 15:10:23 -0700 (PDT)
Received: by mail-pl1-f176.google.com with SMTP id b10so641973plr.4
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2019 15:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=NOu2+6XrS3KdzKvpl/Xs6hiKHcsHUaAW+ghzoCpa7q8=;
	b=VUJhteLVgxSGQjm0EnWyFlH0NmYYt/cknD09aynzp47+J6bC+E3PFRQPlXltHaSdD3
	xf3UOEasCU/7i1I9EbBCny2wKEE5ztSiCVnfSrzuKSF/uGw41/yhr8bO1NJxJooCoFcS
	Qh4521eEArHjMiw4VIBtAHJbLEkaDECw4Uz4zsGxrqRXJNqkex5T3tdgjoHgSIw0rFIa
	hU/R9ElOndEOL12gYV6UD7Kxx8ATNuzlyGjITooUQA8ZS72Lea02XcpzpyonMT80efDl
	mu6556Yrl3gGjspHxq0R+fI9PH2LkK1sNtN15oUQTJ9lW4sXikCFqKGaYG0Dw2eP+NFo
	qlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=NOu2+6XrS3KdzKvpl/Xs6hiKHcsHUaAW+ghzoCpa7q8=;
	b=FQh4nS6ipF16u6zNnHBrybLA9XcnX6y/5KFTWRoapuyTJYHL9QfLJInQmvbQjFunSa
	7gFDTeXAVDptHvy8PL4db61mHUVT5oIAYwMj9+AYrd7+MxG9rZvHap9SaXzmOzSXvxVX
	j49auz7kuHbJqM17ttk4oqz2iUAKdA+G+JmVui5q99m3BQaPRj4VJqAIywnDM5DGb7RF
	kg1yxaaZzRaPZfJNGVLTnq/dC5lbVRo5STh6lR3u8yckVFosqcjqwvMsIk8eXDiI2t6a
	nd1AeUEVMHMrHLUz1dqdHJF27ivKBHDMJFr6EQQcjQMgOtOpfFNAlvAIFVLMtaORrPAz
	hzwA==
X-Gm-Message-State: APjAAAXED367GE3e1boVGCm2wrl1yeJqiP6ByiEbB8G3DZqJ5CaJI+Vs
	oRQC45U3e6DFEwTFSBsDymWjqAwM
X-Google-Smtp-Source: APXvYqxEXWGhvKrdNNJRtyRKpbCMx21RlcGHInqaskochs5QMj7vAJ61dahsjMWiUMbYGRta4g5A2w==
X-Received: by 2002:a17:902:7c8a:: with SMTP id
	y10mr26393357pll.65.1567375822985; 
	Sun, 01 Sep 2019 15:10:22 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y10sm16326643pjp.27.2019.09.01.15.10.22 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 01 Sep 2019 15:10:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Sep 2019 15:10:18 -0700
Message-Id: <20190901221021.25787-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/4] packagegroup-core-security-ptest: only included if ptest is enabled
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
X-List-Received-Date: Sun, 01 Sep 2019 22:10:24 -0000

update python package names

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security-ptest.bb        | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
index ddcf208..39873b8 100644
--- a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
@@ -3,6 +3,10 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
+inherit distro_features_check
+
+REQUIRED_DISTRO_FEATURES = "ptest"
+
 PACKAGES = "\
     ${PN} \
     "
@@ -15,7 +19,7 @@ RDEPENDS_${PN} = " \
     samhain-standalone-ptest \
     keyutils-ptest \
     libseccomp-ptest \
-    python-scapy-ptest \
+    python3-scapy-ptest \
     suricata-ptest \
     tripwire-ptest \
     python-fail2ban-ptest \
-- 
2.17.1


