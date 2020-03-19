Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3946.1584582809615648087
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MOM5GsIH;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B6FFE01887; Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA95E01845
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
Received: by mail-pf1-f176.google.com with SMTP id z65so493866pfz.8
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=e/iSiJTNIs2DE5MuVouHzT2d0b2HChxenuR2cdcc6EA=;
        b=MOM5GsIHVu0lsjAYOba3rc8HDc9DbpYP3+qGCkOZnjsSjOk64mZ+nQRWuINGotq+uc
         wpsLAgU85a4ICzfPcWpjnkmawjPEUAf5kHRjYYg/Mz/kqPOSZdzmetUPH6w8LXzXLq/5
         QCMTDWBhi1Eg0Y4abji9sRYwlQLmEweyPOITuNpaYlm+q4/8PReVmXSwF9bdVhudTfP8
         s8W7exWDhcILs/j7W0xB6Uwj/N2AVS7bEIjR339T+c+xJkk4IYTCov5GEmX9uett3GXg
         SyR0w8k7L1nWAbdG1TgTjGe39IqwiQEkr3Xm3gwzZh7ttZgK5/SwoqQsqfxrcj0xfVFT
         JMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=e/iSiJTNIs2DE5MuVouHzT2d0b2HChxenuR2cdcc6EA=;
        b=FTQN2QLFpP8NEtYM43ikVx2C5TnHgRSovo3fEVCCM69KuAI8D0dlm4Hw8g2P196FNi
         Uh6w49ah4+w7klMcAIXUxUx4OrwRDaTZvA7cFaPaahDZs1zx01bcvLdAMvAXgsUw4y55
         7jj3lrqbFJA/AUC9rJhmgI2c9sMZK0TAMIz1nEqQkBlEUNHAH3sFJHahEp6hbDcTFnjD
         h5ayW5+dybvEN98OHxQKyOA6SszkTFlvdjOjDrPSSzX7AiPzxSxBsAri9fcxloIa35no
         Oo6z8AjjU6cbhz0ZR5vlQ0DyjL7MYkhA9e3Oue02XFGFRCjcP5uDgoqg90bFVByaNcRV
         b7/w==
X-Gm-Message-State: ANhLgQ3u6t7DHwJ4KvD7dK7Pnqcmcn3ly/01nOPZkEnmYVo2fnEC6/7K
	LG90bPgG6B9416j9SlZlSXU=
X-Google-Smtp-Source: ADFU+vtXVfjH87LehnIS2zaZZ8h7xlU13jctw0vb9A9mFiJvGJWMZ8tajeElAU150syRZ+GlgmKfIQ==
X-Received: by 2002:a63:1245:: with SMTP id 5mr719726pgs.55.1584582808871;
        Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id j126sm273648pfg.60.2020.03.18.18.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 730F02A099A; Wed, 18 Mar 2020 18:53:27 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 05/20] cluster-glue: fix depend issues for py2 removal
Date: Wed, 18 Mar 2020 18:53:06 -0700
Message-Id: <20200319015321.15525-5-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index e0aa2b1..749ce8c 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -137,6 +137,6 @@ FILES_${PN}-lrmtest = "${datadir}/cluster-glue/lrmtest/"
 
 RDEPENDS_${PN} += "perl"
 RDEPENDS_${PN}-plugin-stonith2 += "bash"
-RDEPENDS_${PN}-plugin-stonith-external += "bash python perl"
-RDEPENDS_${PN}-plugin-stonith2-ribcl += "python"
+RDEPENDS_${PN}-plugin-stonith-external += "bash python3-core perl"
+RDEPENDS_${PN}-plugin-stonith2-ribcl += "python3-core"
 RDEPENDS_${PN}-lrmtest += "${VIRTUAL-RUNTIME_getopt} ${PN}-plugin-raexec"
-- 
2.13.3

