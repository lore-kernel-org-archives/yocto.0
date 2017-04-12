Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CCACE00B27; Tue, 11 Apr 2017 20:54:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C257E00ADD
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 20:54:30 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id c198so2718280pfc.0
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 20:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Z0FCcf7+sE/Qq5x3XOt3dOPM2RQ//J6K/m89TbM/4lA=;
	b=Gljx9JKlFYwNWBb8N9HQDnG0osDIOdToN0XtSm5023gBzxhqIyoyPQkidmXQj2sjCQ
	XwpM3PgSsE9X7utrXyElP5KLuRvqQi6esVJSDRcVjq7XzqPQpKp9vabXKtMSHTFPiHfq
	1Worve9YoL3TtMAh54i3pIQmnCuQ1PAjOCqAT0ljzy+BEyH7iJ+a6w6YNAxlQmh7SqcZ
	H7E51/LI+LzqzW7X9oQxQQkvapuoM4bk325tTWuv2/u3JQTf7HYNLpY6hHKgR7slBBlQ
	JOCC8XKuCcalZAG9SxSvdajKCZp+KZciGZY8O20gGWO/tTek3c51SsFnH/2MVqab5bZz
	1TOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Z0FCcf7+sE/Qq5x3XOt3dOPM2RQ//J6K/m89TbM/4lA=;
	b=kBhCa80WtoGkYi7kq67xMVXkd1JJckpudDHUz3DfqsdMido9LA7eJ34ogQVdc1r8aq
	sQgDDtKJvKMwhrv486MI5ayDdgiMHCk70r7Az1R+GPh7m+B9D7SSC67QORmF1OuNuxjD
	vexbEE408Nm5eQS1G37RywxPejaLF7+AC+yrzlzMR9LgNp+vQFrUU48MQ6p7ygjPsdXc
	jtevtPd9p5sV4znSVZq8vIqC8L31JA6oLKMoWych4lZCrbJ826zOnCw1hu93Yti9PVwt
	v+U2YvzaMoAVVSMVwcZfLO1X5JUos7FjNP5mfUCTiSHgTV7ZhTstbHbvJho0uuXkoB7l
	R3hw==
X-Gm-Message-State: AFeK/H2z2DsgjFLhyw4BD2NbrZA0w8x4Ou+OQQ66rtefgE6Om6RCIX2n9Lg9ld+xT13UPQ==
X-Received: by 10.99.3.216 with SMTP id 207mr65457164pgd.237.1491969270438;
	Tue, 11 Apr 2017 20:54:30 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	v17sm33224500pgc.20.2017.04.11.20.54.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Apr 2017 20:54:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 11 Apr 2017 20:54:28 -0700
Message-Id: <1491969268-15138-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1491969268-15138-1-git-send-email-akuster808@gmail.com>
References: <1491969268-15138-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] tpm2.0-tss: update to tip.
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
X-List-Received-Date: Wed, 12 Apr 2017 03:54:33 -0000

remove merged patch now in tip

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2.0-tss/tpm2.0-tss/musl_header_fix.patch    | 27 ----------------------
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb           |  3 +--
 2 files changed, 1 insertion(+), 29 deletions(-)
 delete mode 100644 recipes-tpm/tpm2.0-tss/tpm2.0-tss/musl_header_fix.patch

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/musl_header_fix.patch b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/musl_header_fix.patch
deleted file mode 100644
index b1e0aaa..0000000
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/musl_header_fix.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-Add missing header to avoid:
-
-../TPM2.0-TSS/tcti/tcti_socket.c: In function 'SocketReceiveTpmResponse':
-| ../TPM2.0-TSS/tcti/tcti_socket.c:286:5: error: unknown type name 'fd_set'
-|      fd_set readFds;
-|      ^~~~~~
-| ../TPM2.0-TSS/tcti/tcti_socket.c:287:20: error: storage size of 'tv' isn't known
-|      struct timeval tv, *tvPtr;
-|                     ^~
-
-Upstream-Status: Submitted
-tcti_socket: fix musl build issue do to missing header #393 
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-Index: TPM2.0-TSS/tcti/tcti_socket.c
-===================================================================
---- TPM2.0-TSS.orig/tcti/tcti_socket.c
-+++ TPM2.0-TSS/tcti/tcti_socket.c
-@@ -27,6 +27,7 @@
- 
- #include <stdio.h>
- #include <stdlib.h>   // Needed for _wtoi
-+#include <sys/time.h>
- 
- #include "sapi/tpm20.h"
- #include "sapi/marshal.h"
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index 6f9ce67..14ec0ab 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -6,12 +6,11 @@ SECTION = "tpm"
 
 DEPENDS = "autoconf-archive pkgconfig"
 
-SRCREV = "d1bd1fe175d233c7c5adbe1b9f3d256c41721001"
+SRCREV = "30794affab01598bbacfe1f167be7c068a0c0476"
 
 SRC_URI = " \
     git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
     file://ax_pthread.m4 \
-    file://musl_header_fix.patch \
 "
 
 inherit autotools pkgconfig systemd
-- 
2.7.4


