Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22A76E00AAA; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 665D4E00ABE
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:31 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id 7-v6so6513811pgf.2
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=0GBsy/Jx567gZd30a2rmrdbUCJ7xwi0gBh5kaXzRMNE=;
	b=MFT5ldA1O1eV9TpUtbHTjBZ2jOTxTwT7D/J2Sn8vTyePpzGL/KX7SwMfzmor21ogm7
	viCzUFp0IO4xB6/BmMzHQ6iCWuikelhvT+x+1hg93cy4gBhPvX7szNyy34JUVzig57mr
	KeKsN1Lfqx8c3Ik3DIo6xXap7zfHRizCc2yblMP/SCuGZHR+5jPQRAW1iOd2DDz33gti
	g1YMwEZq4SlISy4eSX9z06O51XSD/t4wVceJQNgYdYWcrboe29DwBSi5dyZfGjbA/Ntj
	gK2xWNeszu9nFjdYxiMVlYWNZHtZLjomI5MFNBUTmxQF3p3m/0gBhhHhnB8yiVxDABJ9
	4wLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=0GBsy/Jx567gZd30a2rmrdbUCJ7xwi0gBh5kaXzRMNE=;
	b=KeGBfAR6GsoVM2gFAk03lNQ+1zNbClQIC52ZrVANGHp7t2PTh+hvsh/6ZuYjkjs0ta
	EwvinNvjqZG5lsyjCZN03vfs3NJdqvM5W2D/14O/S6lA+Ng+St4TtLgcc7EYXLb0xwkK
	CzcPX8FAPB+gLyn+kbnKGyNAeW3FfARWSJLaPwBrsmGmivAP4AwqBvwWWKtBFD0jytZ1
	FZaYI93tuBU1tznznXs+9AIsV7+dpGuVXayGsWYI1zceWFc32noaoLVWHKCaMXCLjc/r
	9pjDanUhoheDOFzFHE1x+esIxlmBbtYxmFTR6k8pcpS5tjCMWU/K/QdS1qDQSKRkMPIz
	GLfw==
X-Gm-Message-State: APzg51BayQX1WjYM1PuIYLSATlqcQcOwBgx/LpQZbJ3qK9SnS2Zyq4WC
	Qdv10hBxZvLxhNW9aSCYO8EnGQpL
X-Google-Smtp-Source: ANB0VdagJgpHssy37YadwLVwFkwR8QNIbyo3Cxo3+du0fVZsZCjMj36Tr1U3CNaPkqqj/eoUiaE46Q==
X-Received: by 2002:a62:6a01:: with SMTP id
	f1-v6mr22041213pfc.156.1537113450694; 
	Sun, 16 Sep 2018 08:57:30 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.29
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:04 -0700
Message-Id: <20180916155719.9911-10-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/25] tpm2.0-tools: update to 3.1.2
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2.0-tools_git.bb => tpm2.0-tools_3.1.2.bb}         | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2.0-tools/{tpm2.0-tools_git.bb => tpm2.0-tools_3.1.2.bb} (73%)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.2.bb
similarity index 73%
rename from meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
rename to meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.2.bb
index 7ec12fc..3f40eb7 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_3.1.2.bb
@@ -6,13 +6,10 @@ SECTION = "tpm"
 
 DEPENDS = "pkgconfig tpm2.0-tss openssl curl autoconf-archive"
 
-# July 10, 2017
-SRCREV = "26c0557040c1cf8107fa3ebbcf2a5b07cc84b881"
+SRCREV = "5e2f1aafc58e60c5050f85147a14914561f28ad9"
 
-SRC_URI = "git://github.com/01org/tpm2.0-tools.git;name=tpm2.0-tools;destsuffix=tpm2.0-tools"
+SRC_URI = "git://github.com/01org/tpm2.0-tools.git;name=tpm2.0-tools;destsuffix=tpm2.0-tools;branch=3.X"
 
 S = "${WORKDIR}/tpm2.0-tools"
 
-PV = "2.0.0+git${SRCPV}"
-
 inherit autotools pkgconfig
-- 
2.17.1


