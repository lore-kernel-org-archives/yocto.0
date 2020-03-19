Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4079.1584582817107875885
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fmLH4qck;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F28CEE01885; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E81ADE0183B
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id y30so287394pga.13
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mhDjtwWdbVJcPrFX+O7ytRW9f9ILxjbtuX51Yrh4bSw=;
        b=fmLH4qckeO9b9ntO10oXZWu7vyDk1vK8nvYCEX8oOGL5Zvd4XGMZF7/SslUY8F7UKG
         Jxi4ZxJgTd61A31B5ovlrZrDby/jaKT02jplTUWMnbQrE+4p9k2kbNEYykrMWcb4PG2m
         XsnmdKbMmAK1WSSd/Gom1Wvl+XD53ldZQRlLC3RBQWVBsmrqUSPlNYaUlDBqJAs1Yarm
         bMkm8vInXUfIlkSeh8i8GQqxCImBlQvju2cT1wCQEOB5WrlsCDycMZhNafMT+xX67SH6
         I0TXc5012gDpp5NV5HKM25FdA9FoL+2KADt3BP99gmhjz6zPDdnlJk/SCvPlbEEoqXxI
         +G+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=mhDjtwWdbVJcPrFX+O7ytRW9f9ILxjbtuX51Yrh4bSw=;
        b=Z+YbtjiswXQG6JAysK9z1e+Xeeyz2meE8frcgwucS46x1dn1Hq3klTQXpAGxWZdeGb
         PZFyEXWU7wkafLVI1hi+/YEfUX7+fb1N163cyqEaJLU/bUPaUKTgF9+i+cmz0L8x0MlU
         P4NiPOwtYNZGSafZ0rGgr7jPnZzACAqEyRrxrJ/+05t93rFx8+PO7B3GzSdHd4ILrsOu
         N2wB5LP0mZkOl+7vUxozNMuYeKoijM7gHQN/2l2Bx7bqXwM9CHxrIayoJKiDGEax4p9M
         NreXvUI5FJowhMaQ+S3mIJ0Y7+ycylgV+zKX9JHtSFLaUwKh3hiRTh5RSKHCeTT1ZFUl
         wARw==
X-Gm-Message-State: ANhLgQ3P2C767jBZjBO1O3b9Gfcw4GTwwDLueld3ZEbzp0ctlWCF5Ufa
	M6qZcVD17uhg67Y1UJ1w/uJcJL2soO4=
X-Google-Smtp-Source: ADFU+vtftSv5LtJ3z3UEr/EuO/888RM6+2zN9rDs10SL6tOALR1HGYhkGXfbO0IH5KoOJjDP4eVE/g==
X-Received: by 2002:a63:8f1a:: with SMTP id n26mr734079pgd.355.1584582815384;
        Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id ck11sm219760pjb.32.2020.03.18.18.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id C00602A099A; Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 15/20] crmsh: Update to 4.20
Date: Wed, 18 Mar 2020 18:53:16 -0700
Message-Id: <20200319015321.15525-15-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/recipes-cgl/crmsh/{crmsh_3.0.3.bb => crmsh_4.20.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/crmsh/{crmsh_3.0.3.bb => crmsh_4.20.bb} (84%)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
similarity index 84%
rename from meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
rename to meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
index 6d2902c..0eb1e58 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
@@ -14,13 +14,13 @@ DEPENDS = "asciidoc-native \
 RDEPENDS_${PN} = "pacemaker python-lxml gawk bash"
 
 S = "${WORKDIR}/git"
-SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=crmsh-3.0 \
+SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
            file://tweaks_for_build.patch \
           "
 
-SRCREV = "41845ca5511b844593cf25ae4eb7f307aa78c5be"
+SRCREV = "d10d2fbdd1b357500387bebb432c68e88748526b"
 
-inherit autotools-brokensep distutils3-base
+inherit autotools-brokensep setuptools3
 
 export HOST_SYS
 export BUILD_SYS
-- 
2.13.3

