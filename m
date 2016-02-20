Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67069E00D01; Sat, 20 Feb 2016 08:26:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB2F8E00CEF
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 08:26:10 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id g62so109693882wme.0
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 08:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=LYYbs2cNX8FrsUTkaYALR2ipBxjsGD8gv8D/ylx/B30=;
	b=K1ShOaaOM6LnUOtZMqq6/Edc5jTkZZ9uNIua80qqogOr06UEGIJ5ce25EovFy0uAIp
	UEgwJe19WxnRB0WCjROSc4ygSU1Wznu6Ldp98MuFsZIK4is3V5dNFp61aWl8qCIhgLF5
	1ukKH2rm4U1MtHEasU33k23DIQPSoxyQ5yxU9WkwapTvDQZzqX0dSNDfvo3Yh0Lwaqi7
	wtQ5qw+uUQWlwpj0f6W92gigmXSqeN0e9rRkgo4/bpIPqPwSSIx1Li9YGvqh3Lq5g+Ee
	3aYdnKk73EX173L+NvaQX4uUJ3a//9M3u3xQnbr4XlvdNROcXaNHmgnEpvAp3IFYmZSa
	CC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=LYYbs2cNX8FrsUTkaYALR2ipBxjsGD8gv8D/ylx/B30=;
	b=PNwpfxzkwdDl6WYaXIhwvt9RQBWcJcv0HoXME7NwxGn2cXePFg/8zkVmgvtY8WIjfe
	yEwIhpbhuYkDBN3tFn3O9NY7nhOmyB1F6Hm/dc1lYEs2447XkGOnbCQmcMy4PYAP7tNu
	D5OOGwjwW9pO///tWwo8dSioxmAC1cffoZen9HQHw8IjeNc33x8p3FHdCj3gsTt3qyyl
	oINfv3/IxNVdq98nxMqX3zfh7jAVRZwjW2nNXV171wP37wsicddcjqM0DAtrva+pLBTy
	EL6FOeQF/Tl7F1ZAJUucC2BBla9aIXhoKuMDQjK8MKGGsUfVwim4t1XWSIEb5H5b/Rnn
	NKuA==
X-Gm-Message-State: AG10YOTOzODJ2Lv+ZxK5frKC93838zOWZeWp7pIZhrce2gQchn3vF9IJgKZ8JO+QgmUNkA==
X-Received: by 10.28.98.138 with SMTP id w132mr3077672wmb.45.1455985569289;
	Sat, 20 Feb 2016 08:26:09 -0800 (PST)
Received: from localhost.localdomain (128-79-70-219.hfc.dyn.abo.bbox.fr.
	[128.79.70.219]) by smtp.gmail.com with ESMTPSA id
	74sm12744914wmn.17.2016.02.20.08.26.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Feb 2016 08:26:07 -0800 (PST)
From: Valentin LE BESCOND <valentin.lebescond@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Feb 2016 17:25:59 +0100
Message-Id: <1455985559-6341-1-git-send-email-valentin.lebescond@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
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
X-List-Received-Date: Sat, 20 Feb 2016 16:26:14 -0000

From: Nitnelav <valentin.lebescond@gmail.com>

Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
---
 recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
index 2342478..0b9032f 100644
--- a/recipes-bsp/u-boot/u-boot-chip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
@@ -8,6 +8,8 @@ PROVIDES += "u-boot"
 UBOOT_VERSION ?= "2015.07"
 PV = "${UBOOT_VERSION}+git${SRCPV}"
 
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
+
 SRCREV ?= "854d5fcc641d8d8914c03a69d7172815d5b81a99"
 BRANCH ?= "chip/stable"
 SRC_URI = "git://github.com/NextThingCo/CHIP-u-boot.git;branch=${BRANCH}"
-- 
1.9.1


