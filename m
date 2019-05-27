Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA3D7E00D4C; Sun, 26 May 2019 21:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CAFE00D3E
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:52 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id a5so6543838pls.12
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=53EqiLJA/KxVZCoxuYpE+XBVV85xlDCW8nkPZ0RJcMU=;
	b=PCFvqZ76JYpbgn9PfJHcmVkZ4T6a8s/TfKg6i0R7pZBHU3Q1gkTKtoRcnXNRU9JRxL
	U+W2ALZhgRciir/DMY0oyQm0KQYjBaYtGOPCHetb9kZiHgVZVzJ2BUMZGLepg3b44W99
	gPyDDVtv7juwyfL2b0FEar20htCb5OZsQqC9Ci5z7uBOtaKDnEPoQY/1uol0xK2uQAA7
	YBe8orkRvj+qgmJbgafHneAxS1LEX9+/y20mrbpBO50WuQqwWPwvi0jujhJiCCMOhjtq
	vBxqV4XqDWabohuG6Eb2gHTVJKjwq9NR3Mc0bo5HpgA+IOA/XpX+rW313BVi0oFq8tcq
	l4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=53EqiLJA/KxVZCoxuYpE+XBVV85xlDCW8nkPZ0RJcMU=;
	b=gGAS569sCxYx5QrbGQEPCaW3yhhOwiyAlwl5kL9UN8t1SirPUKXKzdIxHsY1rTYp/W
	qCFxXdFkDTbCpAvyQCnSwx5qiMsh1ihPMCBVdF2AIgHnyBkqwlCEp6ek6ss6JPDJIVfZ
	4SXfbStJ4fZV/kX0cEeFBIpEHJ1YK2khyhKgMxrQHAKpwA+VD88o1Z+C8Rtf0++ByhA3
	jvhbB5rtPwzPvNbH/qRH5TrhphvsWTDm/66/uSgQwJDVFgAdVhkmws0mjiFsNGHBTF8D
	MzzSIx5B0jee9xNFbwzh9ygzbD+3tmlOrCQm2XuI4Vm3aw/2oqjkz+JlRyR8Rk8UF9CH
	UqIA==
X-Gm-Message-State: APjAAAUMHoIKhXgyQyGlkeVX/EFid0bgkRxorJv/lp7y1iSxOu3e9aAl
	jYCKrS7jJgHVAJvhQpAMHNbXmr8J
X-Google-Smtp-Source: APXvYqz2gSotXbYihgjl4Yb/bAtOt16kaqNBdkmZ3yHQ048JtVJzeSgYlZEEqZTe/wEzmGhkuH7oJg==
X-Received: by 2002:a17:902:ba85:: with SMTP id
	k5mr7112099pls.76.1558933012198; 
	Sun, 26 May 2019 21:56:52 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:39 -0700
Message-Id: <20190527045641.18884-13-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 12/14] initramfs: clean up to pull in packages.
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
X-List-Received-Date: Mon, 27 May 2019 04:56:52 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../initrdscripts/initramfs-framework-ima.bb         | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
index aca38b7..6057e8d 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
@@ -8,25 +8,21 @@
 SUMMARY = "IMA module for the modular initramfs system"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-RDEPENDS_${PN} += "initramfs-framework-base"
 
 # This policy file will get installed as /etc/ima/ima-policy.
 # It is located via the normal file search path, so a .bbappend
 # to this recipe can just point towards one of its own files.
 IMA_POLICY ?= "ima_policy_hashed"
-FILESEXTRAPATHS =. "${IMA_EVM_BASE}/data:"
 
-SRC_URI = " \
-    file://${IMA_POLICY} \
-    file://ima \
-"
+SRC_URI = " file://ima"
 
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima-policy
     install -d ${D}/init.d
     install ${WORKDIR}/ima  ${D}/init.d/20-ima
 }
 
 FILES_${PN} = "/init.d ${sysconfdir}"
-RDEPENDS_${PN} = "keyutils"
+
+RDEPENDS_${PN} = "keyutils ${IMA_POLICY}"
+RDEPENDS_${PN} += "initramfs-framework-base"
-- 
2.17.1


