Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAD44E00C82; Sun, 16 Oct 2016 15:09:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A79C0E00C72
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 15:09:01 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i85so8021097pfa.0
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 15:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Qqapf6GsoP8M57FIqhag+tozzxkop6uIn05scR4AiFM=;
	b=torirphGui9hNau4US5OBf3jyNuAlAVYRFwPqVCZcVrbsxZLSL3yVSth50RaAkgweV
	spjZmMYbB2ITQPvwqm8YNa2tSmiiUuqL/PdSYjMd3KEcb4rwLZ4NmZWguXeQjGmuiE87
	ODukAVkG7u/VQJoV/is6JeJtMs29RV/qZyri0bIwQ/9NCY8JbwtVSvkcddNxFV40VSUC
	Q/U8+GM2ON1MJACP5W9FL6Z8qwackuJZxM29hUWy2GVI26Ob6MUXKwgo8djXq6QE/5fo
	CuA+s7gx/lZRhSuSl0TRK1JgAUW/vNmNdnBppn0l01w8ChDfVBBYIGiIeJ7tF+HAexby
	z3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Qqapf6GsoP8M57FIqhag+tozzxkop6uIn05scR4AiFM=;
	b=bdz2+TLalyPhULinyfdQPF70yJBaK1s1SBr0yudZy9UQj7bzT7pTyLFSKVqwQasnpI
	YF+rWTgmbuu1puizz4BhZlZYiRBlM60Ol2Bv8O8VjFZtpu5jQMqIQSrG1EdWBDAC3DAS
	4An+gGKzjEboH5sOxuHP12eKHXVpPylT1Tdg173JXsN3yBrPaDzTQvUpcQRqAO8ZhXso
	8y+Wvc5GKTcr0o29HhENOHi1Sjxbub/X8Gx0wzEm+5wOXAz4G9K0FuyARz1zLo2Po7NJ
	YBFJkK48XVhTi3OFZgx0yDg+TyInTrNz7ZfuKhEZrS++oSUcbmTwZ6zIucc2jHjbpGQ/
	tycw==
X-Gm-Message-State: AA6/9RkrN2izgdECy8Mwc8UliaGApCJqCRsAYEBb9ck6XXZEkMGLbLP9OKKasLwjN9dYsg==
X-Received: by 10.99.132.195 with SMTP id k186mr27653778pgd.119.1476655741603; 
	Sun, 16 Oct 2016 15:09:01 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	w18sm13137896pfg.60.2016.10.16.15.09.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Oct 2016 15:09:00 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Oct 2016 09:08:57 +1100
Message-Id: <20161016220857.30299-1-net147@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH] linux-firmware: Correct the LICENSE for brcm43430-license
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
X-List-Received-Date: Sun, 16 Oct 2016 22:09:05 -0000

The license for brcm43430-license should be the license it contains
instead of all the licenses of the linux-firmware packages.

[YOCTO #10251]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux-firmware/linux-firmware_git.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
index b4408cb..bcfadde 100644
--- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
+++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
@@ -20,6 +20,7 @@ do_install_append() {
 PACKAGES =+ "${PN}-brcm43430 ${PN}-brcm43430-license"
 
 LICENSE_${PN}-brcm43430 = "Firmware-broadcom_brcm80211"
+LICENSE_${PN}-brcm43430-license = "Firmware-broadcom_brcm80211"
 FILES_${PN}-brcm43430-license = "/lib/firmware/LICENSE.broadcom_brcm80211"
 FILES_${PN}-brcm43430 = " \
     /lib/firmware/brcm/brcmfmac43430-sdio.bin \
-- 
2.10.0


