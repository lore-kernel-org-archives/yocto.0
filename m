Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0B00E00E05; Tue,  6 Feb 2018 07:43:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD2E1E005A2
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:43 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id u1so1246474pgr.0
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=mG1Wk4kyS+dYvRa0bx4+Sp3OykiGJY3/TX6+I7ieNio=;
	b=J3FkLNENosmo8u+c2RD6Uqe9MuvN8ZhVOX6X6yV7Of7VtQ7IgJC9ZxHhRURXhkwykP
	F5biFZ18+w6/+73sDhj6TCrpROcpZoT2wQ80IjGu2CjFuDdpnth8UO4a7D+FLnooDrMq
	meRHdy18Tyfd+t1oM21hgJMn7pLsoqPLGlmoMW4meInIrNjff2oZkYsDZb+Gu8ZJ1M7S
	3PdaqhRxhXSidEXsm2paEtLihfJ87zXS3b0dEijYvzsxBzB6gcxRt75f7xxQHm+CXsrd
	J0OQ/wTReBwKA0FAKrVOxq9YNS3alncGmPaKrtnktmL36o8cWTrXaRP3Df4PTcquNuPM
	kWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=mG1Wk4kyS+dYvRa0bx4+Sp3OykiGJY3/TX6+I7ieNio=;
	b=I2JvWGe61MdESr+sVxaNJbbJN2kk6GCKSqD5p4LLXlqtuiK9HqESH73dM/9XB44Ql6
	IZbRUxMAaSyI6u0Mk0lVqw6DhnAQMF4bmxxFFqBgSvMVjGbfcTkYRWSkRmYdPdIrfhhF
	Bdhs5JZ31SAj8Q+SEPGB4JzxZfTw17Wejzbu7QOfjkfhJkJDZRiLWJ/sBrbQq/falH8z
	F0sGMbr1cpAQg/z4gmgxlXlkL3PXfr74IHDra2eXu4N/YdPCbtil0X/Bmkr8/olPPu7/
	jon3z+Df2AZoqhKhzAJuUtl5KFvdNDh+NecrSLd898vcUK6JFAwyVji5SXYeZMJ7I7Sn
	t05w==
X-Gm-Message-State: APf1xPCj8Ghrnc5i1vKB1d15ebUoqdBVS0b6gqu6Gb1Ma91XntbHMW7U
	Ee5ATxgeu4MuyINGuHvskag=
X-Google-Smtp-Source: AH8x227yjp5/pTjJ9bmoM2SA6tc9mtS+bwdLFmf5b9whoeeHsdW6fjKjSIXs2qUeTfW59dLbjDa+HA==
X-Received: by 10.101.96.14 with SMTP id m14mr2339502pgu.118.1517931823261;
	Tue, 06 Feb 2018 07:43:43 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:42 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:22 +0530
Message-Id: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 01/12] libseccomp: update to 2.3.3
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:45 -0000

Drop git PV for bb reciped PV.

supports 4.15 kernel

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/{libseccomp.bb => libseccomp_2.3.3.bb} | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)
 rename recipes-security/libseccomp/{libseccomp.bb => libseccomp_2.3.3.bb} (94%)

diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp_2.3.3.bb
similarity index 94%
rename from recipes-security/libseccomp/libseccomp.bb
rename to recipes-security/libseccomp/libseccomp_2.3.3.bb
index 7b9e0e5..8d58163 100644
--- a/recipes-security/libseccomp/libseccomp.bb
+++ b/recipes-security/libseccomp/libseccomp_2.3.3.bb
@@ -4,9 +4,7 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "2331d104bc0cbde5f6c54e504a038e52bfe8e12d"
-
-PV = "2.3.2+git${SRCPV}"
+SRCREV = "74b190e1aa05f07da0c61fb9a30dbc9c18ce2c9d"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.3 \
            file://run-ptest \
-- 
2.7.4


