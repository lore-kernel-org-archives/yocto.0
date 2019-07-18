Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B503E00D45; Thu, 18 Jul 2019 08:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C588E00B8E
	for <yocto@lists.yoctoproject.org>;
	Thu, 18 Jul 2019 08:25:59 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id q22so52066744iog.4
	for <yocto@lists.yoctoproject.org>;
	Thu, 18 Jul 2019 08:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=OE2HBmVuA965//dUb5bN7Tjspz0/j/MMbfvaAL/3v7s=;
	b=FUdgkVaHdmrNM81iJ7dJMvcz/rwSZJR1hMBViJPQVz/Qt14rrllYlHe92C4fmkT/ks
	eL2WUS6+tU4gQXULo+NbqMRh6S8T/q6/DdCFhisPKhYT725rC60yVolt9i+krCA6S6uU
	i98UPB1KwvIw+T/Rz4q0VvoBPCHPH8/c8P6gdY/tbag2P1yDnwVR5VQ3nG03hNeg6cxe
	m6to8MgsvVssi/W3zdSo1x5LjAUYUHX4H8hq+nvSaFZP6fOwID4A5IgQspFMDHp0S8PO
	uLcAtJC512Q0HgKA0kn6sMwmU/bOd3FZVP51wyYh+hIlVzy4tzWQLV3eT5BonJGedSjk
	kM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=OE2HBmVuA965//dUb5bN7Tjspz0/j/MMbfvaAL/3v7s=;
	b=el8DYxumuVcRTVtayU3k51HdETaBwCkahQR2AUL5fF5BQZ9iSbWe54dn2sfx20b233
	egq2nrd0KknxZmNZnqtML4ApwWYjowZgNOKqt8isH/hw3aH4I1Z6j4smmL7VDCL4Ndtc
	N0Fad6nkHAXXT4sH/AIJ/vSz6MiSM6UzIjLe4Utus8lb0e7kNeAkCKEXf0jlAAmEn5FE
	agRKEoQx9K61SidgHtlKFDZT+Iq+lJgqtXye5IcpPRq9+xuV14pz+g+Q4QdUuASOvfA5
	loSqA2QrgUHAQWAUR2QCWJcYUJRUflR9BGpz6YKBG1KgRRzLdrL1shHWj/wJvUWcVxFC
	flyg==
X-Gm-Message-State: APjAAAVnNqrgN7HFmILBkQYEMYxYyI2yhS90z5Kq5g1f6c8hpLTqlpNl
	8uiA5TW+jquu0uE2uRogqb3nlSTr
X-Google-Smtp-Source: APXvYqwAPRS/oIGItomQN+PGW8DNDN9A6ovQLBKKHhUiXaSJ72vKv7SfXgmC7zPUiJ2JTwlKB00xig==
X-Received: by 2002:a5d:9957:: with SMTP id v23mr42392174ios.117.1563463559236;
	Thu, 18 Jul 2019 08:25:59 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	c11sm15579919ioi.72.2019.07.18.08.25.58
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 18 Jul 2019 08:25:58 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Thu, 18 Jul 2019 10:25:36 -0500
Message-Id: <20190718152536.28368-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] bzip2: Remove bbappend
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
X-List-Received-Date: Thu, 18 Jul 2019 15:26:00 -0000
Content-Transfer-Encoding: 8bit

The patch being applied by meta-mingw has been upstreamed as of 1.0.8,
so there is no need to have a bbappend anymore.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 .../0001-Fix-include-path-separator.patch     | 33 -------------------
 recipes-extended/bzip2/bzip2_1.0.7.bbappend   |  4 ---
 2 files changed, 37 deletions(-)
 delete mode 100644 recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch
 delete mode 100644 recipes-extended/bzip2/bzip2_1.0.7.bbappend

diff --git a/recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch b/recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch
deleted file mode 100644
index 4c43b7a..0000000
--- a/recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 84c8769b52c63cce8a8a413e5fcbad1a65681d46 Mon Sep 17 00:00:00 2001
-From: Joshua Watt <JPEW.hacker@gmail.com>
-Date: Tue, 2 Jul 2019 13:06:30 -0500
-Subject: [PATCH] Fix include path separator
-
-Changes the include path separator for Windows builds to use "/" instead
-of "\". Windows has no problems with using a forward slash as a path
-separator, but using a backslash causes problems when attempting to
-cross compile for other platforms (for example, when trying to cross
-compile for MinGW from Linux).
-
-Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
-Upstream-Status: Submitted [https://sourceware.org/ml/bzip2-devel/2019-q3/msg00004.html]
----
- bzip2.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/bzip2.c b/bzip2.c
-index e362c65..be3b3be 100644
---- a/bzip2.c
-+++ b/bzip2.c
-@@ -128,7 +128,7 @@
- #if BZ_LCCWIN32
- #   include <io.h>
- #   include <fcntl.h>
--#   include <sys\stat.h>
-+#   include <sys/stat.h>
- 
- #   define NORETURN       /**/
- #   define PATH_SEP       '\\'
--- 
-2.21.0
-
diff --git a/recipes-extended/bzip2/bzip2_1.0.7.bbappend b/recipes-extended/bzip2/bzip2_1.0.7.bbappend
deleted file mode 100644
index 3cc4b01..0000000
--- a/recipes-extended/bzip2/bzip2_1.0.7.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI_append_mingw32 = " file://0001-Fix-include-path-separator.patch"
-- 
2.21.0


