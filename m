Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB2BE00951; Sun,  6 Nov 2016 00:25:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3480FE00951
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 00:25:21 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id n85so12703049pfi.3
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 00:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=FgQsQ5N9HF5YmMNkxQWdJGuMh1STXAUj8CLKXJYtfIk=;
	b=Xl3b+QWdd0sLQOOK+li6RgucagbYduWJMymFCjb6UPxlFhVgpO5JpF1n8FJUlV2ccF
	siEZ/1+4XuysAUGXI+AmTFoeob6Nv/Cu9misJP19/QRnCvxGmHtriBFg2pHREK2WyJmb
	kb9Nt59c2mjFIs5zj2Tao82uiz1A6cJMHU+O1RoEyane4+ey3GGoq6S63NkukocMq7/3
	VyhV6MXXqAfLyBI3CJ8lftIbHZO2BcYAty0nYBlYalg7VHIdZHWjmTFALJo773lz0Irw
	ylxPM643f4P4Iujm4UuMzc3qUezGLHN3GHFngn8sqGuBmSY8/u8gHzyw5zNaN5yGenLR
	NqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FgQsQ5N9HF5YmMNkxQWdJGuMh1STXAUj8CLKXJYtfIk=;
	b=gLuRowmEcIzTpaoNLtEV6/SgkztrABRNZXgFVu/sqrznaMLqpCkAEokSpJBeP46B3P
	GXm28OowzCwvFKwJMMtfQvK/Ruku0xUB8yV6hHQgt56MgTyx6ju3EuGsgKBY5MmHaPLi
	IX5f5xpqnsdWygc8egg8uGZ/2GR8mmwF+dXr8v1IxDhcPo6DysNGnX/MEx+FRfHbzbEb
	TmafbRKEIu78aUnwG0/MwchPQSw2tClFEZ+5CVdiVywWAOFAmPpQf6aY7Ycx3piZX9on
	TPZRzgxOYO48SWv8YXhOxnWkO33vDQwxMV1W+HnGBirne3g6o9vUsB/dDzEJcJY8Ns6c
	X4KQ==
X-Gm-Message-State: ABUngvfkVjVzQHZ2IsXm/z6mnoPuGXkG3SLlKNvIhcHyoQunTQYS7dFfV/fGxmNKayMh5Q==
X-Received: by 10.99.218.21 with SMTP id c21mr1896948pgh.67.1478417121330;
	Sun, 06 Nov 2016 00:25:21 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	c2sm31538133pal.42.2016.11.06.00.25.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Nov 2016 00:25:20 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  6 Nov 2016 00:25:14 -0700
Message-Id: <20161106072515.3505-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
Subject: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sun, 06 Nov 2016 07:25:27 -0000

This is a binary repo and its quite large in size
we do not need the whole history of this repo since
most of stuff needed is binaries, therefore switch
to release tarballs

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index ed0782f..8862f58 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,8 +1,10 @@
-RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
-RPIFW_DATE ?= "20161030"
-RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
-RPIFW_S ?= "${WORKDIR}/git"
+RPIFW_DATE ?= "20161020"
+RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
+RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRCREV = "${RPIFW_SRCREV}"
+SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
+SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
+
 PV = "${RPIFW_DATE}"
+
-- 
2.10.2


