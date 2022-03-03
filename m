Return-Path: <nodeax@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFBC433FE
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 16:40:09 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web12.13051.1646325608659189945
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 08:40:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F/YmCA/d;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: nodeax@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id e2so5038349qte.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 08:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=loNiJjvWGTRlxvgt6K1+KCkl2O9xlqYzljjb2y/b98Y=;
        b=F/YmCA/dEFBgbHPb+2QTI3deAhxgoVlsKOvy01nKzuuPGFct7+9sMZNlNqDcW+zLu/
         1Gl7mh3omhM4V4PYvjDUQu9umbS5O0CQdhpdI9zLERb+grR9kTNPsdUAU/yXtbQNXIvx
         BLh6W5lvDh16jPaZVObuIiU/h6WmrumOGf09y0kzArkyNlJw1OVSF76hBOnYanZT9GPW
         Soo+GOYFjcAgv5IheAvG5ND358qdstaaXCyBa/VWLreU2qPXrr18gU41qAx3lQHb2gEV
         wVxjdJMH3ihUh2BRNSPItLRw+QENAFNW4/CuRjP+HuIKl6C/zaSqWMEhRwX+EkYJ5aZe
         vQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=loNiJjvWGTRlxvgt6K1+KCkl2O9xlqYzljjb2y/b98Y=;
        b=TZzTi/XWF4A0OO27Rc7huKYQSbO8245+d1MAjhsJECjLw5O6aohJKCUu2Ae5ooOgLL
         b1RihNZ8IhBStwhl8iWbrV918w4UZIopZ4DsMUHJIhj2DDgOBdyEqVIs0wI2kpzR732x
         Y5y/N42rDj9Jqeuhirti/XjBr02fr4m2oKFZFntLtEw2grIHHNzwR3Cz1myaEv7Wg5nc
         1DwpnLwiQhdPAzx6h/b0QE8NBbftrQxrzbH1unJ32X8VDLDVZ6N/Yw4drUJwWfHmO15k
         eM13xyl5fOn2qfBqFn9gipxP1sSzso6F03o93eslNtJRWwBnYHs8ZEKtggv65+lNKO5L
         BnCA==
X-Gm-Message-State: AOAM532vrEyYCgKeQBf6GQ3xOq2Z0IaPs1FeXfwCPn349Z6T5sJa11ab
	Uj0tsoQCFFvDRi+WPyDxT0fRW7Yi+UhgEQ==
X-Google-Smtp-Source: 
 ABdhPJyqNMAngLDWsUJV6rg/MJuQoKO5oz5l16DchzRliHeQh36u8pDFPusN8YisutrQCxhHmXzfEQ==
X-Received: by 2002:a05:622a:1653:b0:2d8:a3b2:ab56 with SMTP id
 y19-20020a05622a165300b002d8a3b2ab56mr28211387qtj.124.1646325607353;
        Thu, 03 Mar 2022 08:40:07 -0800 (PST)
Received: from ax.fios-router.home
 (pool-74-111-105-118.pitbpa.fios.verizon.net. [74.111.105.118])
        by smtp.gmail.com with ESMTPSA id
 h17-20020a37de11000000b0047caf996ef8sm1317737qkj.20.2022.03.03.08.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 08:40:06 -0800 (PST)
From: Akshay Bhat <nodeax@gmail.com>
X-Google-Original-From: Akshay Bhat <akshay.bhat@timesys.com>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Akshay Bhat <akshay.bhat@timesys.com>
Subject: [meta-security-isafw][PATCH] meta-security-isafw: Fixes to work with
 oe-core master
Date: Thu,  3 Mar 2022 11:39:19 -0500
Message-Id: <20220303163919.3345090-1-akshay.bhat@timesys.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 16:40:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56357

Update isafw bbclass to build with oe-core master
- prelink support was dropped in oe-core as part of 23c0be78106f
- do_populate_cve_db was renamed to do_fetch in oe-core as part
of f5f97d33a1703d

Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
---
 meta-security-isafw/classes/isafw.bbclass | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-security-isafw/classes/isafw.bbclass b/meta-security-isafw/classes/isafw.bbclass
index da6bf76..3854c0f 100644
--- a/meta-security-isafw/classes/isafw.bbclass
+++ b/meta-security-isafw/classes/isafw.bbclass
@@ -105,7 +105,7 @@ python process_reports_handler() {
     os.environ["PATH"] = savedenv["PATH"]
 }
 
-do_build[depends] += "cve-update-db-native:do_populate_cve_db ca-certificates-native:do_populate_sysroot"
+do_build[depends] += "cve-update-db-native:do_fetch ca-certificates-native:do_populate_sysroot"
 do_build[depends] += "python3-lxml-native:do_populate_sysroot"
 
 # These tasks are intended to be called directly by the user (e.g. bitbake -c)
@@ -179,7 +179,6 @@ fakeroot python do_analyse_image() {
 }
 
 do_rootfs[depends] += "checksec-native:do_populate_sysroot ca-certificates-native:do_populate_sysroot"
-do_rootfs[depends] += "prelink-native:do_populate_sysroot"
 do_rootfs[depends] += "python3-lxml-native:do_populate_sysroot"
 
 isafw_init[vardepsexclude] = "DATETIME"
-- 
2.25.1


