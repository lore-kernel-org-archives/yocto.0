Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F878E00BFF; Tue,  1 Mar 2016 05:58:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6F87E00BE6
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:58:21 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id l6so15900448pfl.3
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=TfNrjcPe/F7BmHKbVbjvGCgu8feoRhnP8NiF7n7Thtk=;
	b=0UNKn2IVxKs08iHIeT/yp2zn3qrREblCC2zUlWNECk6hv2yl8Di7gtpIinA/E7Cobf
	T4q3c6srFEoQjQZ5XFg1xzF2SPRrNRhSv5vQBvmYwmTtWiPb6SX6jqJEZM8un5o3vGbE
	Xe3ZkDMUj6V92+8gVwXHSuNYhyMYFXbiGDtXvCyzXkamjoIS1UkY/SQugTo33lcNU4+X
	LUz1P1PF6E1AoPCzP748P8RJOgV4vpyfdRVWVzC+z928VP+cqd/L9lgvX77WQxR4ap89
	5Aqt4SvRpRszk34H42sJ+DSGmjn99OkqwSMxb/SNUp+xHkwucXrCZcGqnb2ydace2b6H
	r0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=TfNrjcPe/F7BmHKbVbjvGCgu8feoRhnP8NiF7n7Thtk=;
	b=d+IM1bzLvHQeEZAn2seNTtP4fNFOIlnEJ18xeCn9KNnXNWqWSJ/0rV5V9x00aUUKEb
	6+qxcmh9VtLqa5bUh9dK5D/iH7/VImrnjCX4v8pN62QVQDLPCvpB2qcwtcE10ufIWiLy
	BiZhGACpZtVue6d1xlLYaKBaHvLphTkJX2h55oOQ/Mjz9S/PzbYe79J4xOi0DFcK04/0
	CHIsPD/ynaO17HVbslnW5PD2Z0dK+r/HRd+Ci+AReaiQJrEcPSdCoEFx3Bz3SUoZrhse
	fsJVrQ8YncQiWr7UaP+b8vIlknp3IpNUKK4EbzSQ87gJ8zuSsOdxIE5mBsd2IDx8djAv
	QqYQ==
X-Gm-Message-State: AD7BkJJ94NIifBFbezzi6O1ReVF1ux5s6FISLAeq1gbxbmyyYasWyGpbWWsjVS4lxzBdmA==
X-Received: by 10.98.75.138 with SMTP id d10mr30595006pfj.108.1456840701127;
	Tue, 01 Mar 2016 05:58:21 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	wx3sm44386910pab.25.2016.03.01.05.58.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:58:19 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:58:39 +1100
Message-Id: <1456840719-14318-3-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456840719-14318-1-git-send-email-net147@gmail.com>
References: <1456840719-14318-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH v3 3/3] u-boot-rpi: update path to imagetool-uncompressed.py
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
X-List-Received-Date: Tue, 01 Mar 2016 13:58:29 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rpi_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
index 8bffaa3..3e8d377 100644
--- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
@@ -24,6 +24,6 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 do_compile_append() {
     # Create kernel.img from uboot.bin and name it u-boot.img
-    ${STAGING_LIBEXECDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
+    ${STAGING_BINDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
     mv kernel.img u-boot.img
 }
-- 
2.7.1


