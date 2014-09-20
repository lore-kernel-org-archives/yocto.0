Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 019BCE00781; Fri, 19 Sep 2014 19:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A16AFE00576
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 19:53:41 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id r10so1025767pdi.12
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 19:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=0evPQ+u+gd1VgqH33e9LNFdYc/tQWdbdb+yWTd61X0w=;
	b=NIo99nf1vVi3V1vH93uJF2jcqsMl8Z4ey6mzip8C/FsgzaoJOZw4C7oas8VX7Sv6jv
	5rHGuveoXkbGWKbM+i0OEtur5DfvpM2p4bP6PGgZv89y30OUr2awWUoCvAAkwxcnQlOj
	a6fXOCM6dRWCnGPhAQKgn+/5ijQFKJg7/8I5/5EHkn7F89BLZuWcstedqiKJDkotIopj
	8g4ngCf6r59eAiNp6MaMJF9jpIa9zAezdKfEtu8JF1G31ixhaQDazNGgFUanAZjRNw4G
	/ZuOkgfVbE8MI4RFy+qx9s8RN20YO7RW02P+BgNsHdz7eORoLC89nKallcaY6IoKUVOr
	StPQ==
X-Received: by 10.70.16.2 with SMTP id b2mr6917411pdd.36.1411181621154;
	Fri, 19 Sep 2014 19:53:41 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id r7sm3051473pdj.75.2014.09.19.19.53.38
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 19 Sep 2014 19:53:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Sep 2014 19:53:36 -0700
Message-Id: <1411181616-30570-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] checksecurity: update to version 2.0.15
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
X-List-Received-Date: Sat, 20 Sep 2014 02:53:53 -0000

update fixed:
 * Fix bug in the CS_NFSAFS definition in etc/check-setuid.conf that prevents
   the script from matching any filesystem. This bug was, actually, making the
   script not do anything in the default configuration.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{checksecurity_2.0.14.bb => checksecurity_2.0.15.bb}              | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/checksecurity/{checksecurity_2.0.14.bb => checksecurity_2.0.15.bb} (81%)

diff --git a/recipes-security/checksecurity/checksecurity_2.0.14.bb b/recipes-security/checksecurity/checksecurity_2.0.15.bb
similarity index 81%
rename from recipes-security/checksecurity/checksecurity_2.0.14.bb
rename to recipes-security/checksecurity/checksecurity_2.0.15.bb
index 70dfd03..ddf63fd 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.14.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
@@ -8,8 +8,8 @@ RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
            file://setuid-log-folder.patch"
 
-SRC_URI[md5sum] = "ad6cfe0cd66ebdd16dd5d4ee5fa8fa17"
-SRC_URI[sha256sum] = "a2bc2355358d6daf3cb72485d564e82cb541e8516f23b50522c816853ecd13c2"
+SRC_URI[md5sum] = "a30161c3e24d3be710b2fd13fcd1f32f"
+SRC_URI[sha256sum] = "67abe3d6391c96146e96f376d3fd6eb7a9418b0f7fe205b465219889791dba32"
 
 do_compile() {
 }
-- 
1.9.1


