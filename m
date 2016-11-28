Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9907DE00C2B; Mon, 28 Nov 2016 08:46:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A75E00C20
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 08:46:47 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id c21so231975639ioj.1
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 08:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=3zR9PCjV2tmWs2zHUW+jke8cL3wvhgNhNAUo1LmxITs=;
	b=vx4m68OnWqxJb9z8DfGkuSWt2ltBThLFbYb8MhrAZbk1ohBCni5qe2Y2I5PW2h+JA9
	UmfzKvkIaZlYNmPwWy+dzB2KLmC5kszkQFmT1vPUfM2SvmwoGX8y8c9bhhdD/YgXI0X+
	mVuLLOC9MknHz+BSGJaMRICEBG173wR6OPSOgTjo3rfhYyk+Hb0nMoCv0WlyV7QW1yP7
	GrBKGyFOFIe3OhyyooJrPmwfyign2wPlsTZACwZlFEJ7Y7bOktxZqQgD9/Ckxu43C5/i
	bQtXQKHVBA+0UHs6lqC2iYwk70gQIixdhue1qdJVWTOhoznbfgtVNyLPyVzTznCl8jsx
	KisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=3zR9PCjV2tmWs2zHUW+jke8cL3wvhgNhNAUo1LmxITs=;
	b=LdYYAK6TlbWRXrgexaVpQj4zwnRIDWLpqC1JHnd41vakN5Hj4+BU/PYItdhGsLvFmb
	OT9PZspvgKoheV7K1GNOJ7/QQ5mrJQZFHXwJPHT8OVN0kBlawReAqUJBudIH9S7hvwBe
	At3YCGsU7DG/5jhbqnZR+P9f8hsT+9CeCLpgMJ6HlJEACED5nxl1mkNlJQOwFrIqtMKn
	MHaZJQg8SHVMsGIWX/p3EZtujad3t1skcZR0bxIsgLXIolIwGu76NWTFpb+JKQEuCtJ6
	UzkcREQYdzuJIp6eFbvhPkPNN/OvGeQeJPlYVynpRxc2s6SZoB/ABhGFtDO/0NGSlux9
	QgyQ==
X-Gm-Message-State: AKaTC01fsc3jSHJTCGIIZihazSYytkj6YAaudOtCDccoZ+7Izqz2CopX76q0L9XoBkE+9w==
X-Received: by 10.36.103.200 with SMTP id u191mr19368613itc.8.1480351604699;
	Mon, 28 Nov 2016 08:46:44 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	u12sm6114258ita.1.2016.11.28.08.46.43 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Nov 2016 08:46:44 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 11:46:38 -0500
Message-Id: <20161128164638.13097-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.10.0.129.g35f6318
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.8.bb: upgrade to 4.8.11
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
X-List-Received-Date: Mon, 28 Nov 2016 16:46:51 -0000

The rpi-4.8.y branch of git://github.com/raspberrypi/linux.git was rebased,
losing any previous commit hashes. This latest update doesn't include the
raspberry pi patches for 4.8.6, but the upstream patches are included starting
with 4.8.11.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 4664249..504fb6a 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.6"
+LINUX_VERSION ?= "4.8.11"
 
-SRCREV = "6abac13566786086cd912d87e4f1a922e2a391b2"
+SRCREV = "429efdba18a1201043eacc15c42f989253fbd68b"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.10.2


