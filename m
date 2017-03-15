Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 892B7E00AA5; Wed, 15 Mar 2017 06:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30ABBE00A93
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 06:46:00 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id u69so3102740ita.3
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 06:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=f6Zs/+CE0lGUgtm4v3PcYk6kudyJYHhlUHJZvA3qh+s=;
	b=YnvbjPa7zEwtpqKitaymmex7c97RjK4+p19ePInLKtcUN6MKQaAymIKEWSi3mdO+fd
	jfS9hRukoHwQAVkrK/DDETZ/yvxiN2C1HmsaGPhF43G5QCfPPCP0DUlUh1UUzFNvtt9O
	MTp3h0ujdsu+YrHWxb0XvdXyVv6W9zJM7AEIsEo2WpKCCEhn+DF2buH6CUZTnP2V/96a
	EQkhDx7OjZxKRvKvWywqndD25TcZSyYSs8h6G6iSc8QdUcUCBJuZ1SVbJse+EqXP4qvM
	itTJRNWjHrrbmLgl8aUTqPHkfRDALEWfR35MX/sLfiCxjN9tMcEWELJypFk2jU1yYlRq
	oPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=f6Zs/+CE0lGUgtm4v3PcYk6kudyJYHhlUHJZvA3qh+s=;
	b=hui/dfT8ig5G1mlgxzMbC9D8PXNs6pomnhpknPPsMqVH8m+9WISspesvtrp7kBpJBK
	3HyTbbNpVG2c70ow8lF9RH9eeXSytSYDrPSHgmX1JzfcySuqFQW2wL/7ps2SZJesBYJU
	E+OV+K/Y1g/Y7euKmNoYY3zCT0zx95kHj0Kpa/m36AB88m58Rw25KX+knmnOvQCm2Pea
	c7kGmvauttNjkJnBtgQZaYU10EevU2CuPRuNIjQzH4iTbpjYsSJ+5ACiCOSeLk9QAGQ1
	DlrnT2ubxC9ejajxNVVeP0nJEnGPQE7Hd6YY7IZdagIJ/7So8om41FrNwHpuMdZzZh7h
	yccg==
X-Gm-Message-State: AFeK/H1yFgYeT1xQneM99gWbzWirZHZARFnKTHKlaOJ1sKSBZIZUm8zlhdDUoB8BR2jM7g==
X-Received: by 10.36.134.65 with SMTP id u62mr20622905itd.34.1489585560102;
	Wed, 15 Mar 2017 06:46:00 -0700 (PDT)
Received: from linux-uys3.suse (104-247-246-30.cpe.teksavvy.com.
	[104.247.246.30])
	by smtp.gmail.com with ESMTPSA id e4sm1515979ioe.7.2017.03.15.06.45.59
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 15 Mar 2017 06:45:59 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 15 Mar 2017 09:45:53 -0400
Message-Id: <20170315134553.14210-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-raspberrypi][PATCH] userland_git.bb: remove libgl RPROVIDES
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
X-List-Received-Date: Wed, 15 Mar 2017 13:46:02 -0000

This recipe does not generate any libGL libraries, so remove libgl from the
list of libraries it provides. Among the libraries generated are libEGL and
libGLESv2. This entry makes it impossible to have, say, mesa provide libGL
since opkg thinks there is a conflict.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 5344dc3..f0f25b2 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -10,7 +10,7 @@ PR = "r5"
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
 
-RPROVIDES_${PN} += "libgles2 libgl"
+RPROVIDES_${PN} += "libgles2"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-- 
2.12.0.rc1.48.g076c053


