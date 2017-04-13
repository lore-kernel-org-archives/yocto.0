Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97001E00995; Thu, 13 Apr 2017 04:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC70E00961
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 04:26:49 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id 75so6449324lfs.3
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 04:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=eyw7qvoy0iIm1sjh0cOCJmXt9UL8Tm+ax8icjvFtM5o=;
	b=JwX0huqx12hPXTc9Sf27cLrMAx0ubRmnvctrU6BGpqiLSrjoiPlVGqkkwDRsYS6fkG
	eEX4insJGEOj7IhOAAq5XOhrOoRNlMGXQLrlvUlaDVpbpJg5kJ+mBHStLHYmuvuEE/6O
	n5gxcG+xYbXttzV6ej16oQIuAFuCMz1yj0SIBwnCWow91XSLTeK9lzgtzr6wtyJRzlwY
	YmxdUcX2hb/6kqbRTGORnVlqI9nXTB2UQhwXNKHJHRVXF+Pf3RlbZ+BkikUgBmgbS7F7
	7cgMmAjre5Bk6ihmInLjUr8raitgzaQmKhIZULSg6Zd/XMaynjTigYugznfHrxZDfeI3
	jhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=eyw7qvoy0iIm1sjh0cOCJmXt9UL8Tm+ax8icjvFtM5o=;
	b=OlCvEZbX5Y9rDtB7fy+tz4eTaAvifKvzASCDTsYGI5bDaZTSkz4xdCRRZnwcJ3wDBR
	72rVtMMvWsK3xz62hnKFMlu/WVEt8Hc4I7NzRZFqZH8BLkOIav5ZTMTU2weaY2ho2oaP
	2BdVuyisubP0ADAFuK7CJmo+68VGNrQXGQSO9sIclPznUmOXok2Tki5vbpZMWu2nPUN3
	+dwQE9DrmbR31dcQp5cNGWojqq0W5PCMYctv08Q8crYFCAJDEaSXhb2AxsiJUTEvUp5o
	5nkjfdop9x3K+Q4jUrJRUgcXzGE7+SUls4oUF93glcbtCiskvm7SM6WBVnMUxGYbAjI6
	Pnsw==
X-Gm-Message-State: AN3rC/6ggfvXCD/BhJxzYb08ozw/cyhkCxzAUvbw/oiBjG0hupIlkSV4
	iBFbv4MBp73DH+Vd
X-Received: by 10.25.228.200 with SMTP id x69mr894360lfi.125.1492082808664;
	Thu, 13 Apr 2017 04:26:48 -0700 (PDT)
Received: from localhost.localdomain ([212.90.165.14])
	by smtp.gmail.com with ESMTPSA id y25sm4632231lja.7.2017.04.13.04.26.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 13 Apr 2017 04:26:48 -0700 (PDT)
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Thu, 13 Apr 2017 14:26:45 +0300
Message-Id: <1492082805-29689-1-git-send-email-oleksandr.poznyak@gmail.com>
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
X-List-Received-Date: Thu, 13 Apr 2017 11:26:53 -0000

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


