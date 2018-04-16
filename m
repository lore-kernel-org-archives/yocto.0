Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8E25E00C6F; Mon, 16 Apr 2018 08:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3ACE00C6A
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:47 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id e9so2850714pgr.7
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4PT58+Q7BdiTxTlzX5l8rn5yo0BEXYkO2mLtWpkPoLw=;
	b=j+5luliG51Cl6Xv+yNDu9mDkDzN7syQIruAnSbI5XOib03HbwyA9vtbM2wJWqea7UK
	22qr7QvO17U15UAaUr9Y3AyKGR6B7K4wRYPCf1p8uYh/cNq/61K3KB8X0/b4omMPz2wz
	7qKPk1Da9Ya77FNYvD21bv8TToPicoRs+4pWfObY5HZf0HrqwqIR4J0bQvci2TW9086a
	ZUSzYvmmhzq/u6CNauRPwIJkiLKYh7tw3E9ZUsjYB1hGriisLOHHY1d/YEOnoJY+ws3R
	j05nqvJjII3Q/Q8FrxnWBI4OUijNk7vYcZ2+lEsBR6Jel0q8Xk80Bhw04thOxepxpEto
	7IZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4PT58+Q7BdiTxTlzX5l8rn5yo0BEXYkO2mLtWpkPoLw=;
	b=rxd9b2r5aeutLlkK2b2MQSpm+peStTTy58/fZ4H0+hAVS2ZfIq4dmToc+G/McAf7jU
	a9sr2eLEqiBp3WS1zJa3EyqHbyIkd760ynOED245TIAC6zFsxpxsNAGevtzf8I8yv8mO
	ZzKrwxc34aK1yWWPapd/DvWl9FacylWbeLkcQSB+9voMGTDXYei8tjv6i3I0obn3hP26
	IP53RmsWm/xCSgdXPsONBkh6eWHf6rUUEqEvWU9ekkgNbX6x2s9z4h2ii1yhs0OWzaUL
	LH75QBCF9f5ukYvsWmvN3qw01YbRi0ACInzHznt+GoyY+p05VGEOCE8f4Xf+4kydduOR
	bAyg==
X-Gm-Message-State: ALQs6tB/CvzP3ne9hSK3DI196aY+VGsNF4QsY6QcULXNX0GQrbVZBknn
	bkJsWgYQGgB4m2M6G2foP+M=
X-Google-Smtp-Source: AIpwx4+U3NKrOIkQo+40PUuRXa/tDKSzyIdONkjsC72Urx7cyF1YQQkdMCMUUgQHqNC27S8PYcauQQ==
X-Received: by 10.99.127.9 with SMTP id a9mr13500096pgd.347.1523891027274;
	Mon, 16 Apr 2018 08:03:47 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:846b:ecf3:2137:c7c5])
	by smtp.gmail.com with ESMTPSA id a3sm21607734pgc.2.2018.04.16.08.03.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Apr 2018 08:03:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Mon, 16 Apr 2018 08:03:44 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 16 Apr 2018 08:03:32 -0700
Message-Id: <1523891014-31583-4-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523891014-31583-1-git-send-email-akuster@mvista.com>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 3/5] makedumpfile: remove as its in meta-oe
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
X-List-Received-Date: Mon, 16 Apr 2018 15:03:48 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../makedumpfile/files/alias-powerpc-powerpc32.patch | 18 ------------------
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb   | 20 --------------------
 2 files changed, 38 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
deleted file mode 100644
index e918ce8..0000000
--- a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-Create Alias for target for powerpc as powerpc32
-
-Signed-off-by: Siva Borra <siva.borra@enea.com>
-Upstream-status: Pending
-
-diff -rupN makedumpfile-1.5.8/Makefile makedumpfile-1.5.8/Makefile
---- makedumpfile-1.5.8/Makefile	2015-03-24 02:58:33.000000000 +0100
-+++ makedumpfile-1.5.8/Makefile	2015-06-23 11:08:30.595655336 +0200
-@@ -25,7 +25,8 @@ endif
- ARCH := $(shell echo ${TARGET}  | sed -e s/i.86/x86/ -e s/sun4u/sparc64/ \
- 			       -e s/arm.*/arm/ -e s/sa110/arm/ \
- 			       -e s/s390x/s390/ -e s/parisc64/parisc/ \
--			       -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/)
-+			       -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/ \
-+			       -e s/powerpc/powerpc32/)
- 
- CROSS :=
- ifneq ($(TARGET), $(HOST_ARCH))
diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
deleted file mode 100644
index 21e0954..0000000
--- a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
+++ /dev/null
@@ -1,20 +0,0 @@
-DESCRIPTION = "Make dump file utility"
-LICENSE = "GPLv2"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
-
-SRC_URI = "http://sourceforge.net/projects/makedumpfile/files/makedumpfile/1.5.8/makedumpfile-${PV}.tar.gz;name=makedumpfile \
-	   file://alias-powerpc-powerpc32.patch \
-	   "
-
-SRC_URI[makedumpfile.md5sum] = "642d975349dff744c6027d4486499258"
-SRC_URI[makedumpfile.sha256sum] = "dd9c6c40c1ae6774b61bbe7b53f5ebbee9734f576d8ecb75ffb929288f5ea64d"
-
-DEPENDS = "zlib elfutils bzip2"
-
-EXTRA_OEMAKE = "TARGET=${TARGET_ARCH} LINKTYPE=dynamic"
-
-do_install() {
-	install -d ${D}${bindir}/
-	install -c -m 755 ${S}/makedumpfile ${D}${bindir}/
-}
-- 
2.7.4


