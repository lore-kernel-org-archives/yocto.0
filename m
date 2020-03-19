Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3945.1584582809391760029
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qn3Vcy23;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E66F2E017FC; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ECF4E017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:26 -0700 (PDT)
Received: by mail-pf1-f176.google.com with SMTP id l184so497486pfl.7
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=/H8e7Uwkp9ZCXduvb81jm7P7PYY4MAC1bYil7QrMv8Q=;
        b=qn3Vcy23soPCbOQtZAdzbdGvpzfXpm9fFeFaj8y3DPikaMHZTbt0LnX455jze7NXxa
         U7eodRLpk04Ai6s7nKFoX5IgJFgIZ1Y7b8rS+wKg3IOIYpeWlnCPSE7r5Oo5+IUKkMJ9
         a3YNo+HGuDs/wlSChHhxuILkUkrdYO98E3GO44LJecje1Ay1Yp1db5xwoJe1XjxiqNpB
         mwCwJNkuzombKMI+pSyNbUND66Ao7JNU0vAHjpH0IZY7SmJqMHFoqnP2Z1iW0fIQ6QFd
         WpJtn9zHzOrzEdySTYXyka4TEOXvzSMosgtYs/URtycqAC4iEVv/mvUIFiZ7U7unxDly
         auxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=/H8e7Uwkp9ZCXduvb81jm7P7PYY4MAC1bYil7QrMv8Q=;
        b=Np+9RwAfDxl0p8mR7NxS/G53TcMxoOkBcGP9ijf+zIjt9uc2ajWhG7nimX+iSmFT7O
         VHi+iTxiJSukkvMeu81NWvaeLUHfAtkMI0JWzPwfLaoUkC5y6Dm3ysNBCm4HUiA3fWq9
         cnAIKf7Spc2fR2xZRPFAiqwQYw+lfGNG8zNbAeN8klsyk4twrrAt91BrW5J6Z+t30WM6
         HYTiwDmc1wjwj3v+0/KW1hOizm9BGWICwrX33EkgG1RiN+1NsRMPwFZv5pkvmTaMJ+ng
         PBNzc2a1EipncRU/P6HhwzocCADEPmZaI1w9vknzERFnCGYI7Crr1/gvWbT6EHR/O/9q
         V5Dw==
X-Gm-Message-State: ANhLgQ3fsXDNXko5cpm7acEXTWAEjxASg/neISMCRFrY9PfuEIbPGjOY
	2arPrdE+r/WhFeoA7XnCjY07svclMtY=
X-Google-Smtp-Source: ADFU+vs+zzFiT3WJ8cAHC6ib8qxuDvcqLy/9blbeK6VtDP2T9KrcO0PVIUOHOvBYwY4rKv05jTlk+w==
X-Received: by 2002:a62:e917:: with SMTP id j23mr1415927pfh.154.1584582805928;
        Wed, 18 Mar 2020 18:53:25 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id 73sm304048pgg.90.2020.03.18.18.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:25 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id EA0992A04DA; Wed, 18 Mar 2020 18:53:23 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Changqing Li <changqing.li@windriver.com>,
	Adrian Dudau <adrian.dudau@enea.com>
Subject: [meta-cgl][PATCH 01/20] monit: upgrade 5.25.2 -> 5.26.0
Date: Wed, 18 Mar 2020 18:53:02 -0700
Message-Id: <20200319015321.15525-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../recipes-cgl/monit/{monit_5.25.2.bb => monit_5.26.0.bb}          | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/monit/{monit_5.25.2.bb => monit_5.26.0.bb} (90%)

diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
similarity index 90%
rename from meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
rename to meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
index ab9e922..6ec1a21 100644
--- a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
+++ b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
@@ -9,7 +9,7 @@ HOMEPAGE = "http://mmonit.com/monit/"
 LICENSE = "AGPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"
 
-DEPENDS = "openssl zlib"
+DEPENDS = "openssl zlib virtual/crypt"
 
 SRC_URI = "\
 	http://mmonit.com/monit/dist/${BP}.tar.gz \
@@ -17,8 +17,8 @@ SRC_URI = "\
 	file://init \
 	"
 
-SRC_URI[md5sum] = "890df599d6c1e9cfbbdd3edbacb7db81"
-SRC_URI[sha256sum] = "aa0ce6361d1155e43e30a86dcff00b2003d434f221c360981ced830275abc64a"
+SRC_URI[md5sum] = "9f7dc65e902c103e4c5891354994c3df"
+SRC_URI[sha256sum] = "87fc4568a3af9a2be89040efb169e3a2e47b262f99e78d5ddde99dd89f02f3c2"
 
 INITSCRIPT_NAME = "monit"
 INITSCRIPT_PARAMS = "defaults 99"
-- 
2.13.3

