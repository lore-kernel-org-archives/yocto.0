Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DC0BE00781; Fri, 19 Sep 2014 19:43:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0457E00576
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 19:43:45 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fb1so1207546pad.13
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 19:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=c5FM0n35YMd1SZsKU7TFKcQtE/PthPVjyYcySJSm3W4=;
	b=D3HrOQjoSXUDxr4MCyBTvPFiAyPeCjcpRuVF984RDs0JQvnd8uVFHON531Z1K+aLQF
	uz1sa3GdfNR8fvzQcmv7IwShexV1EwGAbqPuI/q8xjVOSJeKgmbSb0o+IuwOAAf8FUZl
	DwQVT4z3hvwhouXE7GzqWbMPgWQ4fJ1SQiEl0c0V0Pq5pUzV5Clwqg+k6yss1VuR4Clt
	fDX0IHl7bsH5eGI7C+b9XxZ0Y1BM1S8UaGxF8beCj9HVlrclCHoBG0vUN9r0lnH/MRwE
	V4P9Nw78AgxosyO1lf5dVryjsmufSmurnRI1kiwkNF/NTBW6MkpQLX4x26gnfyzYCc47
	CsWw==
X-Received: by 10.67.14.198 with SMTP id fi6mr166315pad.34.1411181024543;
	Fri, 19 Sep 2014 19:43:44 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id dl8sm3043270pdb.65.2014.09.19.19.43.42
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 19 Sep 2014 19:43:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Sep 2014 19:43:40 -0700
Message-Id: <1411181020-29876-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] samhain: update to 3.1.2
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
X-List-Received-Date: Sat, 20 Sep 2014 02:43:49 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-client_3.1.1.bb => samhain-client_3.1.2.bb}      | 0
 .../samhain/{samhain-server_3.1.1.bb => samhain-server_3.1.2.bb}      | 0
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_3.1.1.bb => samhain-client_3.1.2.bb} (100%)
 rename recipes-security/samhain/{samhain-server_3.1.1.bb => samhain-server_3.1.2.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_3.1.1.bb b/recipes-security/samhain/samhain-client_3.1.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_3.1.1.bb
rename to recipes-security/samhain/samhain-client_3.1.2.bb
diff --git a/recipes-security/samhain/samhain-server_3.1.1.bb b/recipes-security/samhain/samhain-server_3.1.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_3.1.1.bb
rename to recipes-security/samhain/samhain-server_3.1.2.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 772aa7b..cd5862b 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "f7fff913d016241eec6829bd5f740513"
-SRC_URI[sha256sum] = "844e8e22c0e259b4c12cd0ccacdb3d5569a2a1746b0aa1aa285febb266cbcf31"
+SRC_URI[md5sum] = "48c663707899dca4f3853c3192e9862c"
+SRC_URI[sha256sum] = "840218137a4c77970fa9f61c5f79d05de4bb2b287736a55d771125c94f9a51fc"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
1.9.1


