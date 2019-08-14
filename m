Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 758C5E00DEB; Tue, 13 Aug 2019 17:02:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE3C3E00DE0
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 17:02:07 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id q139so4216258pfc.13
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 17:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=uwTyXSLBGUns4vKk7ggirDiJ5SRIaPLhbQSpcdA7aZw=;
	b=RD3LantMLVTLLWsv2gKKOz6HRJVhKHfSV8vcxxUawbcEKZesB/onnHCHOve4AYZNgU
	m6sIgfCMRC2ZjunCL+2aEf5v9aarS1rZvOFY2sDSh9BK4xqOmq1fo0Gyox0GeDSK0IJg
	31uxvyRb4RpD46hazBRFmteZR9ObqhA0yZifhbD4ujHOmwj9TW96GT0HyF0bm46tkBgR
	em3aGH48miuYGvDnDOrLwCta9Ubw04BZEbjAlhi9WT5RpzpqsDSaq6c77YPao0C1aJpd
	1Z7eHSEmMAH6gDtaPt5K2ab3HGkWqDiQq4m8VQuUruC9cPg5nFF6EaEoRJx5LvEd/QNb
	uvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=uwTyXSLBGUns4vKk7ggirDiJ5SRIaPLhbQSpcdA7aZw=;
	b=M0+RNswbs8STYbubDjJY85otMaxUg97mqt+8iAHxPZTIAT+ldhktmjvv41WJuLHOxB
	/b2+V5FaVBxULFr3H7hf2rqRdcU8vMWPWBd9zhbKdwAg4UuxcJ+ptlOHHbNIya4biBbS
	/FCmx+kUaPBg1p2K0ajueRmhsRzadiwy3es0t3C0PiJKQ2mdlfzkP0xrlqm/aAsF9dOs
	vVoTH3jb1YMYxxXcyVr7tkHD4lNtRS6UAN4A7C9W/REjBjFrZbSdxL3FwggcU+6IdXBN
	5/juJIcmhzJ9uWCAfwa7C8nFW4IyCxkTrzNbZLAwwo6U/R17ca1rnsKueuUTLlQpS7w2
	M/JA==
X-Gm-Message-State: APjAAAVToExlxRPjuvMp61UIrJx6+3kxVKTrfMuIaou8mf5k0n51Xf3a
	jJmXpHcNwQZvPBrQISxbmN8eriXY
X-Google-Smtp-Source: APXvYqyQ2mk5riJ5A8Qe17sSo4o8oZgoTWV0E4oKuppXCCeFco9a/5UFh9uSDASykNx1184Jo1Facg==
X-Received: by 2002:a63:8f55:: with SMTP id r21mr36334242pgn.318.1565740927346;
	Tue, 13 Aug 2019 17:02:07 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u7sm109786733pfm.96.2019.08.13.17.02.06 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 13 Aug 2019 17:02:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Aug 2019 17:02:04 -0700
Message-Id: <20190814000204.16741-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190814000204.16741-1-akuster808@gmail.com>
References: <20190814000204.16741-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] linux-yocto-dev: update to use kernel cache
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
X-List-Received-Date: Wed, 14 Aug 2019 00:02:09 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 68b2b8b..239e30e 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,11 +1,2 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-5.0:"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
-"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
-"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
++KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-- 
2.17.1


