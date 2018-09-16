Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24C06E00C55; Sun, 16 Sep 2018 08:57:55 -0700 (PDT)
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
	*      [209.85.215.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB15E00C62
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:50 -0700 (PDT)
Received: by mail-pg1-f169.google.com with SMTP id d1-v6so6514000pgo.3
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=x3r9aMkEgBx2WRI+YqnEM46pntqYyznRyZr4YvfKBiM=;
	b=OmvQnAjjyta82HTPTt10sYLC8tmuvVqEILHqsRI7M1RmzhBG1CoPh/X8JtcNz0fS7w
	+EmaESxdMe8ZwKJ3+4pX7lHD2ZOkPBu5wH4BW5seBORnIQNVOrh2SglfMZ97wty8pcRn
	53Sg20z7A6d4H33Ft+nriLnkt0r6DtQSvg4o5qx3EjGol+TfGuBKHi7LznVu/UOizdrh
	n3YqqnFv4w869Ff1sSj9ioRXxCeey/Ulwi+MBVtYDHYYRPwwfcSSVAliyvoMDtVfrCg9
	aq+GaW7bxEJOalqWuou6kImIGenCI1XEuGXZF9StKiRH0kxPiZbDgYh44kIW8mlyBb4J
	UX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=x3r9aMkEgBx2WRI+YqnEM46pntqYyznRyZr4YvfKBiM=;
	b=bDdO9E94YZ8JsyaRs4FRv23o6DNiJHYhHmSZzaPLGr2n42hUExatJ0p+hE/qIwJntk
	TqJfEztNq0hQ6y5YHG/cZlvJQNvTRz2MiI4ZM0NmCS7gURT6uG7Hg3VW1mB8vLjZw1ZG
	hlJ1wcP/g/wkN4YYWsjyah3BSLuUlAWlh7biJb/vubsFafdzDoUTBk7/wnb2aBK3Ddfe
	DFHLNFWU7V9sBj4W318EX7KMgop2mE2lLNT9jbdtrDlXrjlxZtJQB5VcsLot6E9ZxSnd
	2zlVHT68pI3D5KuDVcJd782p/Zw7/9+qfnvJdIetOlBE65Nw4EHjy2B2/hrH9clHWt0p
	5dJw==
X-Gm-Message-State: APzg51C2W5+tD0vzkElDJKNPuHCTMoD6Sf8JTkF/fYgRoq9wuyKG+voo
	0Jhj3mxapwHimyUaTGBhzGqAeGrI
X-Google-Smtp-Source: ANB0VdYPrP6hFhcUS9N5R+hUwtvh3axHtbkqnWXvfPTZI2JDjyiQr9VUECjGvgZLqb/y2z4XvKYMFg==
X-Received: by 2002:a63:af17:: with SMTP id
	w23-v6mr20658314pge.47.1537113469664; 
	Sun, 16 Sep 2018 08:57:49 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:17 -0700
Message-Id: <20180916155719.9911-23-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 23/25] aircrack: update to 1.3
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:55 -0000

remove unneeded patch.
minor cleanups

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...{aircrack-ng_1.2.bb => aircrack-ng_1.3.bb} | 11 +++-----
 .../aircrack-ng/files/fixup_cflags.patch      | 28 -------------------
 2 files changed, 4 insertions(+), 35 deletions(-)
 rename recipes-security/aircrack-ng/{aircrack-ng_1.2.bb => aircrack-ng_1.3.bb} (78%)
 delete mode 100644 recipes-security/aircrack-ng/files/fixup_cflags.patch

diff --git a/recipes-security/aircrack-ng/aircrack-ng_1.2.bb b/recipes-security/aircrack-ng/aircrack-ng_1.3.bb
similarity index 78%
rename from recipes-security/aircrack-ng/aircrack-ng_1.2.bb
rename to recipes-security/aircrack-ng/aircrack-ng_1.3.bb
index 4df072e..d739227 100644
--- a/recipes-security/aircrack-ng/aircrack-ng_1.2.bb
+++ b/recipes-security/aircrack-ng/aircrack-ng_1.3.bb
@@ -6,16 +6,13 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
 
 DEPENDS = "libnl openssl sqlite3 libpcre libpcap"
-RC = "rc2"
-SRC_URI = "http://download.aircrack-ng.org/${BP}-${RC}.tar.gz \
-            file://fixup_cflags.patch"
 
-SRC_URI[md5sum] = "ebe9d537f06f4d6956213af09c4476da"
-SRC_URI[sha256sum] = "ba5b3eda44254efc5b7c9f776eb756f7cc323ad5d0813c101e92edb483d157e9"
+SRC_URI = "http://download.aircrack-ng.org/${BP}.tar.gz"
 
-inherit autotools-brokensep pkgconfig
+SRC_URI[md5sum] = "c7c5b076dee0c25ee580b0f56f455623"
+SRC_URI[sha256sum] = "8ae08a7c28741f6ace2769267112053366550e7f746477081188ad38410383ca"
 
-S = "${WORKDIR}/${BP}-rc2"
+inherit autotools-brokensep pkgconfig
 
 PACKAGECONFIG ?= ""
 CFLAGS += " -I${S}/src/include"
diff --git a/recipes-security/aircrack-ng/files/fixup_cflags.patch b/recipes-security/aircrack-ng/files/fixup_cflags.patch
deleted file mode 100644
index e13dd24..0000000
--- a/recipes-security/aircrack-ng/files/fixup_cflags.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-Upstream Status: Iinappropriate
-
-Issues do to build env.
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: aircrack-ng-1.2-rc2/src/Makefile
-===================================================================
---- aircrack-ng-1.2-rc2.orig/src/Makefile
-+++ aircrack-ng-1.2-rc2/src/Makefile
-@@ -3,8 +3,6 @@ include $(AC_ROOT)/common.mak
- 
- TEST_DIR	= $(AC_ROOT)/test
- 
--CFLAGS		+= -Iinclude
--
- iCC             = $(shell find /opt/intel/cc/*/bin/icc)
- iCFLAGS         = -w -mcpu=pentiumpro -march=pentiumpro $(COMMON_CFLAGS)
- iOPTFLAGS       = -O3 -ip -ipo -D_FILE_OFFSET_BITS=64
-@@ -102,7 +100,7 @@ endif
- 
- 
- ifeq ($(subst TRUE,true,$(filter TRUE true,$(sqlite) $(SQLITE))),true)
--	LIBSQL		= -L/usr/local/lib -lsqlite3
-+	LIBSQL		= -lsqlite3
- else
- 	LIBSQL		=
- endif
-- 
2.17.1


