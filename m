Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AB06C48BEA
	for <webhook@archiver.kernel.org>; Sun, 31 Jul 2022 05:49:49 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.10886.1659246584798998217
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B7aidyCS;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id
 15-20020a17090a098f00b001f305b453feso12101345pjo.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=sGqXDGzQi6K52NcQTvBZBCb48IKJtZH4+dIPtkVqnqs=;
        b=B7aidyCSU+Qds2gGDRJWM4pklf9NArFGaOdy9jlj+pfbWWnECMYSzMKnW0ajAB0ZvJ
         PYQSsOovdsDZmv9KS7dNXxKyXW31xVW+VyZRZyewCsxo9anOfhIYO/0FpS2UWgQP1j6F
         rW8SaEAcBv+fIxHKwJ7Yzlkg7aYJNjqO81QBIVTJp0hRNqgek/inOtcc/1NsW89ygUA8
         aggLah5soaqumw7zSGCP4PPTYIOiAU3GWdC0DPTJIRvF/dyYLge2st8oGnWTxbi57FKE
         nRNJSZIqzoN/4/xcA/Szn0iaKBQG+NKycOtYYKO5W2DLXrK4sGap7MuJTnOqi73nyZPX
         +ZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sGqXDGzQi6K52NcQTvBZBCb48IKJtZH4+dIPtkVqnqs=;
        b=xeOtdLKpFz9uGXC1NgDUhsUzlkzqeu8Fq6w58orTP3Sy5N4EL6hiA+BEemaj7XvyeJ
         2AqI0B6MgUZcTn40TTQRerHN4EXDVHPajG5RefC5Q43lT3lxCG/A17H08ozYGgMQ1bCG
         yRZwLxc63i2ycJ/8UTtuJu7eSwsk2offw08l+jJZYqx0c8e7QNyEX2T8DmWykvlUHVIy
         9Rs36bZtbwoAY//R3IOIz+PP2f31lOLIrxiapdgXxhP6VnM+Y+rEsDV9qrb4m4khqGuR
         CyLyXVI+ns04cMBwNsyybg8cVc4Jgg4xQ/yMVzxfwJR2qOcJtzx+orrho8UwppI7C2NA
         J+QA==
X-Gm-Message-State: ACgBeo2F7wBD07m8H4kiSNkxgujQhoxwIfLhExpgY1GndSTJGApe6UiU
	7lz0SZUHAG33BAyr2JiL99oc7DKTN/w=
X-Google-Smtp-Source: 
 AA6agR4clDEF7NpGNwTv0eau1G0Y+a3f6fm+e/4DG/yWsQEYz6Y5zfWmhAuPL/BKlmmqKLDXMnqVJg==
X-Received: by 2002:a17:903:2c7:b0:16c:ebf6:db22 with SMTP id
 s7-20020a17090302c700b0016cebf6db22mr11100306plk.16.1659246583822;
        Sat, 30 Jul 2022 22:49:43 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 az13-20020a17090b028d00b001f30b5bb378sm6039202pjb.15.2022.07.30.22.49.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 22:49:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] ibmswtpm2: update to 1682
Date: Sat, 30 Jul 2022 22:47:38 -0700
Message-Id: <20220731054739.2199164-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731054739.2199164-1-akuster808@gmail.com>
References: <20220731054739.2199164-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Jul 2022 05:49:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57705

fixes openssl 3.0 support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch    | 5 +++--
 .../ibmswtpm2/{ibmswtpm2_1661.bb => ibmswtpm2_1682.bb}       | 3 +--
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1661.bb => ibmswtpm2_1682.bb} (93%)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
index eebddb9..962bfc1 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
@@ -20,7 +20,7 @@ Index: src/makefile
 ===================================================================
 --- src.orig/makefile
 +++ src/makefile
-@@ -38,12 +38,10 @@
+@@ -38,13 +38,11 @@
  #################################################################################
  
  
@@ -29,12 +29,13 @@ Index: src/makefile
  CCFLAGS = -Wall  			\
  	-Wmissing-declarations -Wmissing-prototypes -Wnested-externs \
  	-Werror -Wsign-compare \
+ 	-Wno-deprecated-declarations	\
 -	 -c -ggdb -O0 			\
 +	 -c -ggdb -O 			\
  	-DTPM_POSIX			\
  	-D_POSIX_			\
  	-DTPM_NUVOTON
-@@ -79,11 +77,11 @@
+@@ -80,11 +78,11 @@ TcpServerPosix.o	: $(HEADERS)
  .PRECIOUS:	%.o
  
  tpm_server:	$(OBJFILES)
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
similarity index 93%
rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
index c2cdf6a..85fc7e0 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
@@ -18,8 +18,7 @@ DEPENDS = "openssl"
 SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
            file://tune-makefile.patch \
            "
-
-SRC_URI[sha256sum] = "55145928ad2b24f34be6a0eacf9fb492e10e0ea919b8428c721fa970e85d6147"
+SRC_URI[sha256sum] = "3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
 
 UPSTREAM_CHECK_URI = "https://sourceforge.net/projects/ibmswtpm2/files/"
 
-- 
2.25.1


