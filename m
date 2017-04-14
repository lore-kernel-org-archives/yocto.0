Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 474AFE00A30; Fri, 14 Apr 2017 11:21:45 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12FF0E00939
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 11:21:42 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id g23so1518393pfj.1
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 11:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=U+mhtX9IbpXqOV5Me+A/57COZ01c8KSVzpjZFm0tNmE=;
	b=RK+Yl2Geacj9HgCqlsAO2eKfRjWQRGL8+nyuVZPC07Wng4HeAj0ILIoRwRmnHaLMzW
	v94PNO8dMw0YVWlaXiztm/648BRMWCjrTnq6tOGnXzyYsOnH+KwVqxpH4b7f6wwHxTvO
	Wy4FTYmenW1MbcNdnHRRPPvyRzqb1Ol4OiaG7Pw18PC2P8hQzUJVbazz6rTeetz4i6wq
	1Ps/xlwGtfcrzwMD/pksC+3wfPyhcpcKEsqT5RTzhLgYJaB+33WScanp8Ux4lnbm3qb+
	0nqlQJYDNKColsQxtgxZq2jqNLfnmshM6QnvjyWAv2U6mrvx6f98SjOe4P26nDSN5+s3
	Kx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=U+mhtX9IbpXqOV5Me+A/57COZ01c8KSVzpjZFm0tNmE=;
	b=nGYq6vr8eN/ql89NGAQ3wFSHJ3bg0UhUwzM4wxjK1wG3PQEe+twDlIPUVYtu1Yozox
	YoMUabBPsQ5oni7yUDzemaBBopvMMWtIlR0vxuc/GmQ0h8r6fhEYX0ob4hI9oyeODkPx
	DNHiOBpbZ/zE3F+TaIOdwI/yvv0Laa2faVk/ULW27YP6cNtgznHLOlh4uZU/r5oR5vmz
	LN+D4OWMDuGSUjwF9kswhqaKABJLNzNF1U0ADCV4k3NX0j2Hx+i9u2KUM1U+5pbtOdNO
	xXlmPT7LceANiA0i2pDuH5G0rH8UAblrhVdG085OIYzYpWHPEyNdByDpCQeE1BYU8hNf
	cuCw==
X-Gm-Message-State: AN3rC/6YUk7Ld0BveP3Xx5hQ3BOS0hqKdKTmSBDCuVxTbRKSgJc20r+d
	G9Mbuulx2R8bOA==
X-Received: by 10.84.229.15 with SMTP id b15mr10359761plk.41.1492194102148;
	Fri, 14 Apr 2017 11:21:42 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id 25sm4503350pfh.19.2017.04.14.11.21.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 11:21:40 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 11:21:33 -0700
Message-Id: <20170414182133.2051-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 6/6] psplash: Let distro override the default splash image if it provides
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
X-List-Received-Date: Fri, 14 Apr 2017 18:21:45 -0000

BSPs should not be overriding the distro splash images, here we
reduce the priority of psplash-raspberrypi below 100 so the defaults
from distros can kick in.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-core/psplash/psplash_git.bbappend | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-core/psplash/psplash_git.bbappend b/recipes-core/psplash/psplash_git.bbappend
index 65dc30f..698564b 100644
--- a/recipes-core/psplash/psplash_git.bbappend
+++ b/recipes-core/psplash/psplash_git.bbappend
@@ -1,2 +1,4 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-SPLASH_IMAGES += "file://psplash-raspberrypi-img.h;outsuffix=raspberrypi"
+SPLASH_IMAGES_append_rpi = " file://psplash-raspberrypi-img.h;outsuffix=raspberrypi"
+ALTERNATIVE_PRIORITY_psplash-raspberrypi[psplash] = "10"
+
-- 
2.12.2


