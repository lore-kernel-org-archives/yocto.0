Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A28A1E00867; Tue, 18 Apr 2017 01:53:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, 
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [195.33.116.220 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDE4E00826
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 01:53:37 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id d131so22823089qkc.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 01:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=eyw7qvoy0iIm1sjh0cOCJmXt9UL8Tm+ax8icjvFtM5o=;
	b=hVZB+RbiuA6J2tePHaZkWbNwcWZwlTrFsN7eIIoTFLCO3bfFhnAWCoarXz7yc1+Dxj
	O0/w2K2AHbzEublCCugZOh0oJndyr4kgHx5zEesfPQXiHBouQL3aajWuOisWacZbOf6u
	K91Zbp64jFxjjmE2npH2jemcPmaWGImFXBmgyTZRR2Ztqu2nYty+IUyi1VoQrb/zf2cZ
	p0LKsCngxXx0kDS8JPhIBES4ydqt8wWK+kj1MuEXJ/VCViQaGjvzf5Z1vX2TrQYoe6CT
	c+RJPvY8cA0Ef0m+BY3wOGm14fAiGO1Ly/hNRMCHNqOOMxp4YeMxlJyl8fGD93P6O95a
	pmLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=eyw7qvoy0iIm1sjh0cOCJmXt9UL8Tm+ax8icjvFtM5o=;
	b=RpUcqr3vkgEL6Uvm8EEeo4SBafDJTaAJ7EpInA1pXqXrBvFIIMh9Bqo4HbwyJI9wUf
	OQo6FXO5XnKDj6XPd/KjYU3TeXb6D2s4qymdgfFDaRv9UhOUIYTaLUqtz7SnUVZKXSjk
	UNF07zzsEkxJz/hDD6kUwO3wkvfuzLeGT2pDbnKkTpyjzLz6HP+9nOPRkOyFZ4yiUjm0
	qyLDJxXaNZ/w302RGg+Hl1x+eJuaAdm246rbjVsjw3q2HsylBcffLswpnRxLtI46D+LK
	uFpyvEctqTQv0vjLP8yJMmUmnFOAw5mp7toRUxrMlIndqbK0cCvxjjdGOK6II49yZ5yu
	5PsA==
X-Gm-Message-State: AN3rC/4aCFY7z/Ol2ETCGGWGmbKOUKqxVlv2vRtedSTdzNW4MsjvabUY
	1Uu11r/Nkz0o5A==
X-Received: by 10.55.217.71 with SMTP id u68mr11535170qki.272.1492505617465;
	Tue, 18 Apr 2017 01:53:37 -0700 (PDT)
Received: from kev-poznyak-lx.Nominal.local ([195.33.116.220])
	by smtp.gmail.com with ESMTPSA id
	c18sm9121369qkj.33.2017.04.18.01.53.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 18 Apr 2017 01:53:37 -0700 (PDT)
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Tue, 18 Apr 2017 11:53:30 +0300
Message-Id: <1492505610-7939-1-git-send-email-oleksandr.poznyak@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] package.bbclass: Changed PACKAGESPLITFUNCS execution order
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
X-List-Received-Date: Tue, 18 Apr 2017 08:53:42 -0000

Fixes [YOCTO #11343]

I've added runtime PACKAGESPLITFUNCS value modification in
the context of do_package() function so that
populate_packages_updatealternatives function is allways
executed before populate_packages_updatercd

Signed-off-by: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
---
 meta/classes/package.bbclass | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index cc466bd..149a185 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -2110,6 +2110,11 @@ python do_package () {
 
     cpath = oe.cachedpath.CachedPath()
 
+    # modify PACKAGESPLITFUNCS order
+    if "populate_packages_updatealternatives" in d.getVar("PACKAGESPLITFUNCS", True):
+        d.setVar("PACKAGESPLITFUNCS", "populate_packages_updatealternatives %s" \
+        % d.getVar("PACKAGESPLITFUNCS", True).replace("populate_packages_updatealternatives", ""))
+
     for f in (d.getVar('PACKAGESPLITFUNCS') or '').split():
         bb.build.exec_func(f, d)
 
-- 
2.1.4


