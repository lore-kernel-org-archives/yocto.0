Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E208FE00A30; Fri, 14 Apr 2017 09:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4861E009B2
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:00 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id o123so17081341pga.1
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 09:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=MiHmyyhPwgtfYJmHQDGLorKTMFPbwlrB6b8Zu718R2Y=;
	b=vFdZJ4uqRkT4hfvsT6m/uQvFH3yAj4pG4wlJHQqUsu1TU9JVs+lcDuofLvojSMbjmc
	T0DUb3BMVU5YjLiHS90w+Vfll3mYlSx72AZu4Ejn5f09jUZGQm2hXBG2Grf633e3m4c8
	N6Bi4nuNYfyKb4jT3fkKEWeDw4/hIMbcxz094YRbS4lS/ZZ2iMyk/fvpAIUzBANu/7wq
	sdj6Zn7mqfJSKUTCshaUOOb4soCYNrq2ObwJiAHL50i43rlSkL+ZBv388kqhpXVr06Ls
	7pteZ1sNtXGSLjHFoqKTxCACthSXvL5ULLOwd5S+vHZJb+CVhqkQd1uCh5pqE1vIrElP
	cPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=MiHmyyhPwgtfYJmHQDGLorKTMFPbwlrB6b8Zu718R2Y=;
	b=SLK51JItAPu5KgWOFYnK7yf4Vb+CIuVgFLVoYnjUUEG7QS6HwXnEgZuqeKwUhjqdbb
	sedDei4qEiTXmU5PdtaJq5E1UvO6XLJhQz0/AkkOStLoXfRci0bRqgsqrAPPSutC2tfX
	VHfSHCkeG9PY61hpGv20S366Nnl/JpCEpj2lCN7DT/jb3iRpyZopAg96elFw07AHCoz9
	nRp+jVI07B0R+s6px+HvTeqfNade9QXa4vd825wGU/SXX6JSrfa+ljcick980UyiM1Y8
	VgpVf/msk51SHwaumWwHGUpyrky40M3n+/pzT6SOqulHXyejFdgIisWEtxNL7Om2CbZ5
	ENJg==
X-Gm-Message-State: AN3rC/4o7682iDpWwCWXLTo6ULiOgeyc2CsVItu1SeZNCEtHO4CSveXi
	Aha/ibRDD2XRkVxS
X-Received: by 10.99.39.70 with SMTP id n67mr8042761pgn.132.1492186859334;
	Fri, 14 Apr 2017 09:20:59 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z21sm4157245pgc.53.2017.04.14.09.20.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 09:20:58 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 09:20:32 -0700
Message-Id: <20170414162035.23522-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170414162035.23522-1-raj.khem@gmail.com>
References: <20170414162035.23522-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/5] linux-raspberrypi_4.9.bb: Update to 4.9.21
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
X-List-Received-Date: Fri, 14 Apr 2017 16:21:02 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index 3aba67b..c0e8b83 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.13"
+LINUX_VERSION ?= "4.9.21"
 
-SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
+SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.12.2


