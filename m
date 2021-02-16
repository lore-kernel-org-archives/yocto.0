Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web08.9339.1613489651858401885
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=HKG+NJw5;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 5AEDFB2C;
	Tue, 16 Feb 2021 10:34:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=cnCbREo+ZBzH8
	5RD3s1mN8QmE59uJ4FMEZYTBbTEYuY=; b=HKG+NJw5FAMnkhfVTDq0pqPCxdPRm
	ErsOIkzhtm6Leoz1IX97f8uboWI+1HNVengLDtGTwF72BaShVPJyEvOCIR7/XGSe
	JyVhkXlvSEc10NHuSHCWGwHX3tYJFK0i4RcXtoD1ehW6zl66StqgrC5gUovcK6+I
	G/xsKcCnIb5F3izbW/W7i+5z835wFKblRaSEEGYLundIZwME/hFZr1b8kISdCHyp
	AVf6FbASe2MWJcTLNMoYfqj/WWESTl2Yko2QwT0QI5c0CvX1vKHmaqGXNsR6vh0T
	GukmAPrmDup3ykkw0nxgtkW2oyQr1N1YOWrfdoZqAtegIg4G9IRRzLhMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=cnCbREo+ZBzH85RD3s1mN8QmE59uJ4FMEZYTBbTEYuY=; b=YIE0Qqau
	no0eFoQOWoyoIck844oP6rcCltzSaijMjdbp4f25nO9NtS0OTnXvCl8dUZvYRmaq
	sE0tc6qfBKyJObDEL4nE4TTzfACBsxAF9q9gXOcM4INfqlpekxqZ6jI/T1H1xyWL
	CYhOo/mvg73pHm1Wk8EhH/VlsHgyGPlRMD12UkCWsylFTHIGH2Ov2aX+XLqkYaqr
	0pBHZOJFLkDgMreRaQTB8tF3IDGztONVLymwyLYL9+RmH/Ikpvhu6r3yo2oy1+G7
	CsDkb5vUAmrpHx+H0dph6VCq1lHSVbWoRfP3Dn/VLj/S2dS++u7oivCNXgeVX8ug
	wvxYK2oPRSk43g==
X-ME-Sender: <xms:8uUrYGEwFU6eRvpJ5-5dIpZ5f3Q8vAYQlGh4qL5w-bpzWKGFxuQ1ng>
    <xme:8uUrYHXb3keyr2KX202HMi5nZ_YuGFao4zfF3bNdru_sgr46RWc7OZKRt-piF7UXX
    68oTQj0KE6FiEZTPYc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:8uUrYALnSpDYSTUTTrJSDU2qfq7A6yi2VYm3shfpWaG5DUviIrvt-w>
    <xmx:8uUrYAGUK7JCbO4TY49shfbAB8tt1qbfZqjM464v5p-5nhPclzBZAw>
    <xmx:8uUrYMWuto4opThKTPvu_C06j8mlWFpaF3at0U87b_hmtcAxlN3qbw>
    <xmx:8-UrYPAntYBTFlONoIxIj5DkpTqOafRanuCxLNuqgOZ_d_K3RuG66g>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id A8FF51080063;
	Tue, 16 Feb 2021 10:34:09 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 07/15] zephyr-kernel-common.inc: Reformat EXTRA_OECMAKE
Date: Tue, 16 Feb 2021 15:33:02 +0000
Message-Id: <20210216153310.79138-7-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This will improve diffs readability in the future.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index abc55ba..330fe59 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -13,7 +13,16 @@ ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
-EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto -DEXTRA_CPPFLAGS=${CPPFLAGS}"
+EXTRA_OECMAKE = "\
+    -DZEPHYR_BASE=${S} \
+    -DZEPHYR_GCC_VARIANT=yocto \
+    -DBOARD=${BOARD} \
+    -DARCH=${ARCH} \
+    -DCROSS_COMPILE=${CROSS_COMPILE} \
+    -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} \
+    -DZEPHYR_TOOLCHAIN_VARIANT=yocto \
+    -DEXTRA_CPPFLAGS=${CPPFLAGS} \
+    "
 
 ZEPHYR_MODULES = ""
 ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
-- 
2.30.1

