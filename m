Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75AB3E00DDC; Sat, 24 Aug 2019 19:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E6C2E00C27
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 19:02:43 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id y1so7934555plp.9
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 19:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=VDA9jkK7k4dBcT05PFk4YdFhp8fP1saH0wBNEA3R4MU=;
	b=JkmZVgKw5qgFquxMLz7523DrdEb8GoEK093dmuRjefSB78QS9L9PXOJZ4eDoQ1ZCvr
	CxUsIy0kJVodQz3XejKrsZEav3tmhzPVJmFmMLYU1Rr7lPr1cGRu25oBYkGxxwARgxUm
	ixFWmmHE0347v7HZH+ZTmhWUqd86fKXtIeOQnllrnNnr2KMG0Owm+cgnFkMBZSGwh7Mf
	fcLSQREKUM/79qfbfieVIa0JM/hMuNJ1/qxgbcPaLaAlBnj17kndZjFHaJ37Nn+ZvyrT
	vrlYKHz4PXpaYKsZWKuEgPDEXw6XS9keAu+Wq81dE317CI97iYeUrAcSLFd1CBe9+SD7
	UFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=VDA9jkK7k4dBcT05PFk4YdFhp8fP1saH0wBNEA3R4MU=;
	b=jLN+/QizX0RoIG1Mul+x6KDu3g5UjTokWM3zVX66/F2ccQc1HIp/9wgRwtL+W7ETgy
	+45/3vvtfPbPJUCqYH2cxYqxH4RVxRl+ScIkebeP0Wu81UL3gnZEu/YM0yOcrIIV4AWG
	4rsSWe52MlrZrKziTOkMZwrzX+K9jc/IZBlOCrWSMVGI1cOKV7KUFp2gaog2gpgPf1af
	Ap8s8u0kv5vd3pYtM4mm3alNSOBhvbxRQS5kvL2AFqF7Jj3q3gCPXB0a3nmE3UI6dVIr
	v8F1K9xJMfb2TnjiwzyYwDA80An6G2zLofm2mwHBhyPvJp9X0zaTLDaIYLTPOO2drn0U
	vGdQ==
X-Gm-Message-State: APjAAAWvcyEUAt3TuaTn0xXoaFdGyZ33cTu/WFyuyC5ba6dBTQlC2Bbq
	K56SuJ5TTCcCjFG6I9yrZJ34oF5U
X-Google-Smtp-Source: APXvYqzQsxhOWRKzykeTeqX2WW4HbbXGRCdZ5AVQX+q8s07UWI8rpND/65ru9UzHHSJYt0d/rk7VOw==
X-Received: by 2002:a17:902:860b:: with SMTP id
	f11mr12224757plo.48.1566698562466; 
	Sat, 24 Aug 2019 19:02:42 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y16sm7246039pfn.173.2019.08.24.19.02.41 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 24 Aug 2019 19:02:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 24 Aug 2019 19:02:40 -0700
Message-Id: <20190825020240.1763-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] apparmor: update to 2.13.3
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
X-List-Received-Date: Sun, 25 Aug 2019 02:02:44 -0000

create the cache dir at install time

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../AppArmor/{apparmor_2.13.2.bb => apparmor_2.13.3.bb}   | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)
 rename recipes-mac/AppArmor/{apparmor_2.13.2.bb => apparmor_2.13.3.bb} (96%)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.2.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
similarity index 96%
rename from recipes-mac/AppArmor/apparmor_2.13.2.bb
rename to recipes-mac/AppArmor/apparmor_2.13.3.bb
index 1e9715d..9322018 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.2.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -24,7 +24,7 @@ SRC_URI = " \
 	file://run-ptest \
 	"
 
-SRCREV = "af4808b5f6b58946f5c5a4de4b77df5e0eae6ca0"
+SRCREV = "2f9d9ea7e01a115b29858455d3b1b5c6a0bab75c"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
@@ -141,6 +141,12 @@ do_install_ptest () {
 	cp -rf ${B}/binutils ${t}
 }
 
+pkg_postinst_ontarget_${PN} () {
+if [ ! -d /etc/apparmor.d/cache ] ; then
+    mkdir /etc/apparmor.d/cache
+fi
+}
+
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "apparmor"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
-- 
2.17.1


