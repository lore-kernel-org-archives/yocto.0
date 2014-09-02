Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC6F9E0078A; Mon,  1 Sep 2014 19:51:13 -0700 (PDT)
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
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E341BE0078A
	for <yocto@yoctoproject.org>; Mon,  1 Sep 2014 19:51:10 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id kq14so13509284pab.36
	for <yocto@yoctoproject.org>; Mon, 01 Sep 2014 19:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=dfdTJGmlKUtr9YIn+y7U+UX0iKQ+r0Q1ORCNEJAmMIc=;
	b=TFnZzG/5s/Z/QLV8769g/4Bgk0AaX3d8iYQBYpTH+Qdw1MjYKHmTWC7bXJaYwsH0eD
	rQxwXX3Zg3AW+XLtt1SuFOHfbscPBdokdRu6D6xj/aAORERQyakQO7zlheg1YgRV8r7L
	1rO3JCFWJVDDRj6HtY7WpUogPEvJyj/j9SB1hFp6I/mO0HiF25w0ff92QlvobhXPdPm/
	yKPvDVqsAgWNe57mLBAbRjI3BPUBI/tRfwFMB2mx2LiI5sLqPp0jq6Tu/93q0rAw+b0j
	8COJPKi5Zc6LHZXgeStFILVvaiYhePE8G+grE58P6kZ8yGbvtnKNJjbgbnu/s9GUT8CW
	K/rg==
X-Received: by 10.66.179.140 with SMTP id dg12mr7955341pac.76.1409626270181;
	Mon, 01 Sep 2014 19:51:10 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id ah2sm7334695pad.10.2014.09.01.19.51.08
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 01 Sep 2014 19:51:09 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Sep 2014 19:51:01 -0700
Message-Id: <1409626263-14379-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1409626263-14379-1-git-send-email-akuster808@gmail.com>
References: <1409626263-14379-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 1/3] libnet-ssleay-perl: remove from layer
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
X-List-Received-Date: Tue, 02 Sep 2014 02:51:14 -0000

libnet-ssleay-perl is now in meta-perl

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/perl/libnet-ssleay-perl_1.55.bb | 24 ------------------------
 1 file changed, 24 deletions(-)
 delete mode 100644 recipes-security/perl/libnet-ssleay-perl_1.55.bb

diff --git a/recipes-security/perl/libnet-ssleay-perl_1.55.bb b/recipes-security/perl/libnet-ssleay-perl_1.55.bb
deleted file mode 100644
index 1dd59f4..0000000
--- a/recipes-security/perl/libnet-ssleay-perl_1.55.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-DESCRIPTION = "Perl module for using OpenSSL"
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-
-LIC_FILES_CHKSUM = "file://README;md5=94ec8036b939a2e3c9b5e7f10af8f4ee"
-
-DEPENDS += "perl openssl"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/M/MI/MIKEM/Net-SSLeay-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "473b8d66ca69d5784bb0e428721f58e0"
-SRC_URI[sha256sum] = "8cd5f09722e07b4e436102cb3a4b93623d753c171665ca9752c3b39a62ea3a79"
-
-S = "${WORKDIR}/Net-SSLeay-${PV}"
-
-EXTRA_CPANFLAGS = "INC='-I${STAGING_INCDIR}' LIBS='-L${STAGING_LIBDIR} -lssl -lcrypto -lz'"
-
-inherit cpan
-
-do_compile() {
-	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-	cpan_do_compile
-}
-- 
1.9.1


