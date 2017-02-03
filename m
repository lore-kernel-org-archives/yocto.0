Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B2ECE009BA; Thu,  2 Feb 2017 16:36:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7419E009A0
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 16:36:39 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 75so372820pgf.3
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 16:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=cYWXPVhqiUd18xWzr5d1YQhknQy3OIihdyKcIoDtVbI=;
	b=TUj5gMx1RtEN+g9eIIN8DuCOx5LzEQh2jBz5ARYuFEEPCCgTI/OtYQyM1H1qHpI5hS
	GcbH8CpljPngvWbXgHz5OuKmFJHgmuxU4Opam+hoIlyL1qsI/FVunBAbLUHzkoHdpmfh
	dsNgHsXhdObK244l+sU8aqqKty72jOmr/w6/UbfO2TMvIVvPiRqY+tLJkrjIVj30+uI5
	Clpw/CwetRGAtKsMWnoyknrMiUFqUhEMiDMgB3HD4hiRarWEH7My+pBoxs9xKG9tmEJl
	J2dz9O+3K3uya6yyFBc4fNmZWDVN5rDQZpbr0UHz5IhhpFUKk4DRD9TfQ50XvVYCJl0G
	l3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=cYWXPVhqiUd18xWzr5d1YQhknQy3OIihdyKcIoDtVbI=;
	b=LSyxHtbllFUbBwNFoe/0IVFbuZJNqtbnvAjXWGZszbxlVTyepn93uca1JnLMpCb7xX
	E7t96q2GuQYg1MqefX+Ldmcw9K8w9Xwva9MzG1DQhCO8vBN2CRZaCgp5S+ZvTOBojxYL
	9JNrgfaIbmaeyN/XzoVFPmWr6BhlsrbJfyCKaz5FffILhsht6D/DHbFl/EHB1S9qT73G
	bPlYZy4KoYnoeiXyofpAK5xKcQAFPzq0YuEBj2Y+RabruJLh2mx13sxSFBmkkI/v7MeB
	ajVB56GWTX0B/WhnSpSfvu0BIpREdCxFi3YcICMh0FSNj1xXxuQXCNhWx1S8w57+i7GD
	UeSQ==
X-Gm-Message-State: AIkVDXLNtYLAfaxPT+2fXmXhM26tGhRyW4GLx3J891v7OMoB+J9lXRc2nnMwLY3DK7cz2g==
X-Received: by 10.99.101.199 with SMTP id z190mr13925543pgb.219.1486082199099; 
	Thu, 02 Feb 2017 16:36:39 -0800 (PST)
Received: from akuster-ThinkPad-X240.mvista.com
	(50-233-148-156-static.hfc.comcastbusiness.net. [50.233.148.156])
	by smtp.gmail.com with ESMTPSA id
	w76sm61381853pfd.74.2017.02.02.16.36.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Feb 2017 16:36:38 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  2 Feb 2017 16:36:36 -0800
Message-Id: <1486082196-29895-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486082196-29895-1-git-send-email-akuster808@gmail.com>
References: <1486082196-29895-1-git-send-email-akuster808@gmail.com>
Subject: [meta-cgl][PATCH 3/3] initramfs: fix parsing issue with do to uboot inclusion
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
X-List-Received-Date: Fri, 03 Feb 2017 00:36:42 -0000

From: Armin Kuster <akuster@mvista.com>

since the image type includes "uboot", need to inherit the class for it

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
index 0777b7c..2ebbdf5 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -12,8 +12,8 @@ export IMAGE_BASENAME = "core-image-cgl-initramfs"
 IMAGE_LINGUAS = ""
 
 LICENSE = "MIT"
-
-IMAGE_FSTYPES = "cpio.gz.u-boot"
+IMAGE_CLASSES = " image_types_uboot"
+IMAGE_FSTYPES ??= "cpio.gz.u-boot"
 
 IMAGE_ROOTFS_SIZE = "8192"
 
-- 
2.7.4


