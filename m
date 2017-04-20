Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40D36E00AE6; Thu, 20 Apr 2017 01:40:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DC69E00AE0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 01:40:32 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id x86so13777779ioe.3
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 01:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=+Hsl8uQ77dqKir5hekPZunYNUfkJgFxYz51kSfa0Kyo=;
	b=Rw/atpBa2+lVk9KLsS4xFOEjSBah0XNjddZW1HkHqXWrcyh/0OGant/j0PKvWPzjmI
	AeSNLrnz11i9tuCqyWL5VDPsAOJGfUx35CcJIZu7HibB0n6r2sNWTgyg3pWdW0XIC51X
	Pv/SfZ1MrRY/NBcN2BDzsSHp2gHr1LEjhROTC1VmDYxWbLy2jeJeK/kK3kBOjCUASQ4J
	Rr0Yt2o16FcYKGYM9G70uevizCJxNbPqKH5qlQU7jP4Td95gg2NbtLhdIREfL4GS7MOQ
	qTPqMJEqmVul8fXdjt96GWnA6BmFZvEfApbICoDix4vvGnNgOVtqte6upI522g8VXQ2A
	XNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+Hsl8uQ77dqKir5hekPZunYNUfkJgFxYz51kSfa0Kyo=;
	b=l9E4+cK/FEWFvX6N/2j3Cn3JCt1f0c6vN9JxOYvrm5GL8/kZ4z+Uq+IK+ClzwUNGmg
	4Ls6dv1HbN94dtp55w60xVOug5p+NorWuUApw9ehQxmJbw28T/mMSbRY7iAzAogHv9nA
	+8HLKBdmo1KaAoWI7t8CAB+bXCaF8GOEJ3/sluLfO4mv8/QwNpTK9ypRAvxeViL3TPSo
	gMtqe2w/fU47xKcHqW2TeygfSq6ptEBc1jwNkMYi33dkKRTy/kLjns4VJfjaR2ck1dVs
	UffZ1TQu4ffucmdMhAMJFeiOhxkhhJ8GGssSs/JYiivtThPhSRi63x+2Fna1KRQLNWCw
	qSTA==
X-Gm-Message-State: AN3rC/67q4rbbakaLT+EEKAaPdcMOhvk4IP2CFBvz/cnkl2kVtXgDacK
	xybwpcZOzG/nSQ==
X-Received: by 10.99.43.212 with SMTP id r203mr7057223pgr.114.1492677632281;
	Thu, 20 Apr 2017 01:40:32 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id 29sm8940834pfo.9.2017.04.20.01.40.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 01:40:31 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Apr 2017 01:40:22 -0700
Message-Id: <20170420084022.14927-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.23
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
X-List-Received-Date: Thu, 20 Apr 2017 08:40:36 -0000

bring CMA > 256M changes

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index c0e8b83..70b16a6 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.21"
+LINUX_VERSION ?= "4.9.23"
 
-SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
+SRCREV = "53460a0a50f3dd5e60266e945d0ac794ce0eca77"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.12.2


