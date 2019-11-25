Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6707.1574699981031743133
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:39:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GtzMUwU+;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kergoth@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB3E5E00F22; Mon, 25 Nov 2019 08:39:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C89CE00DAE
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:39:40 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id i12so18894032wrn.11
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eGD8huHfKtnw1JTBUpzO/XTV3FU+ACPWP82fvOyTkDM=;
        b=GtzMUwU+ZOTeeRrOrTqsg+okBk8PF/36XbXKdgrDIirL0/K/A9nDaRTcdxRkf7qyva
         2wiEoo6MjB8vN00GWwG003aLVDu+Q4/UAevq5RJgJ0fXW4un7UJs5nuXSFlARXdiPGGY
         llrf8E18YL9XQg16oDqt0aeqqmLPrxGOubLGglWi8ECMSiXcbvmsiy2IwwWQ3S3xDlIp
         6UZwT8d16SJ3y/VCoxvEgKuO8yuEb0VXaewxY2DQE2xtiC5HkfoTwyXa3j2TvKZygZUF
         Yk8H4PujewGj0qwbeew8jlPAJg/aSAIzLLjRrwMyoFOc8YMNNAwI3fFqJgbtKuagYhce
         acug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eGD8huHfKtnw1JTBUpzO/XTV3FU+ACPWP82fvOyTkDM=;
        b=tTZTCQfqKGJ7vCtgilXgXKvcQOOjZm344KY3ojXFdRCQ4EJ0fV5oHLZSLhAxNc1caG
         kduHJauykVwdmwbzDrs4s/KAgtPxGbZG1MLlIgJqGk1ApARwNbBhuOq4qZGH4sfRpJwv
         T96qCpVMf+b51Z295D1u+PqhMAEXW0fGhY9iFKNOYqZy6XKMDrAbtrzRnXhEC57hBwT7
         enz0cOWFfKChjgSgUuv7YJhmtfEqtE4USbvzEV+dm/95/b6zbWIGzNcI4ir/SmTUR2zp
         gPpFb9AsP+mvPYjVQ2Ai2qzE8WYuy5tn+XcqJ0zLemI2VbTBeHFz+Cz52tnjnlYR2lzI
         lfCg==
X-Gm-Message-State: APjAAAVYYDVziv2NDcELyM4iHV9J1OZqLzIErJpYoXmBWdZMyVeorJlm
	5jinz538UOE3qlc3RQ2tmG7/T7CGCWY=
X-Google-Smtp-Source: APXvYqzsYfgciOCSNYXlIgSTKoNhQiMCCCse//Dm0nDPM1rKAhg7gqKI28wQZ0UekgaCxrUKPLwq+A==
X-Received: by 2002:adf:afc2:: with SMTP id y2mr14985392wrd.254.1574699978979;
        Mon, 25 Nov 2019 08:39:38 -0800 (PST)
Received: from svr-pkl-eng-07.mgc.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id m15sm11016123wrq.97.2019.11.25.08.39.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 08:39:37 -0800 (PST)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-security][PATCH 1/3] checksecurity: use more portable find args
Date: Mon, 25 Nov 2019 21:41:10 +0500
Message-Id: <20191125164112.7063-1-kergoth@gmail.com>
X-Mailer: git-send-email 2.11.1

From: Christopher Larson <chris_larson@mentor.com>

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 .../checksecurity/checksecurity_2.0.15.bb          |  3 ++-
 .../check-setuid-use-more-portable-find-args.patch | 23 ++++++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch

diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/recipes-security/checksecurity/checksecurity_2.0.15.bb
index a9616911..030bf251 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
@@ -5,7 +5,8 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
-           file://setuid-log-folder.patch"
+           file://setuid-log-folder.patch \
+           file://check-setuid-use-more-portable-find-args.patch"
 
 SRC_URI[md5sum] = "a30161c3e24d3be710b2fd13fcd1f32f"
 SRC_URI[sha256sum] = "67abe3d6391c96146e96f376d3fd6eb7a9418b0f7fe205b465219889791dba32"
diff --git a/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch b/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch
new file mode 100644
index 00000000..f1fe8edc
--- /dev/null
+++ b/recipes-security/checksecurity/files/check-setuid-use-more-portable-find-args.patch
@@ -0,0 +1,23 @@
+From f3073b8e06a607677d47ad9a19533b2e33408a4f Mon Sep 17 00:00:00 2001
+From: Christopher Larson <chris_larson@mentor.com>
+Date: Wed, 5 Sep 2018 23:21:43 +0500
+Subject: [PATCH] check-setuid: use more portable find args
+
+Signed-off-by: Christopher Larson <chris_larson@mentor.com>
+---
+ plugins/check-setuid | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+Index: checksecurity-2.0.15/plugins/check-setuid
+===================================================================
+--- checksecurity-2.0.15.orig/plugins/check-setuid	2018-09-06 00:49:23.930934294 +0500
++++ checksecurity-2.0.15/plugins/check-setuid	2018-09-06 00:49:49.694934757 +0500
+@@ -99,7 +99,7 @@
+ ionice -t -c3 \
+ find `mount | grep -vE "$CHECKSECURITY_FILTER" | cut -d ' ' -f 3` \
+ 	-xdev $PATHCHK \
+-	\( -type f -perm +06000 -o \( \( -type b -o -type c \) \
++	\( -type f \( -perm -4000 -o -perm -2000 \) -o \( \( -type b -o -type c \) \
+ 	$DEVCHK \) \) \
+         -ignore_readdir_race  \
+ 	-printf "%8i %5m %3n %-10u %-10g %9s %t %h/%f\n" |
-- 
2.11.1

