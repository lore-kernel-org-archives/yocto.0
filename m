Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 325F1C433EF
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 00:11:13 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web09.54649.1638144672580038114
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:11:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lHQZnM/h;
 spf=pass (domain: gmail.com, ip: 209.85.210.177,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id p13so7220459pfw.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i+8e8TU/UOgZx9Eb6q6lUJ80NG0zeNxWIW0QIZIz6is=;
        b=lHQZnM/hv7ico9ZTdAeZt5jpDrpSRU+D4lzBQrJ8vBfITYp6fj+tSy5fBsJlmDhvEV
         +FHUVToSozcDrAfWm2YpNAVfCwrOT7NaH+51W9ZJJXODLfuRMUzxy8PkdTtphsuaDXGQ
         SwYdl1gg4zIu80AfOmI1djTERm42uTopn7BRAX8CjSeaVQuY8XffRhDoy8FNaWah3wvH
         WvpTt5r+/FDi5bsI2c/hz+ZDg818y1SdcrCKn9j+5zP2+VMWiYXsEkzpVKwquximtKYy
         FVllbqOqRHwr/D6PMx1QzdTookMbRva8UO2opjq5wi4jlCLJ9OHrG/x9aSdlYYgOW6RW
         Dzpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i+8e8TU/UOgZx9Eb6q6lUJ80NG0zeNxWIW0QIZIz6is=;
        b=yE13YLIYkgUNm/DqlynFZKgp+AAZsOmOfDEXPsVlWzH7XttAzhmgiP4j5PAso/f7Wm
         CKSD5r+PxZp1KjFGvu4noZxUmGo5B32cEU59OaEU6ZwciJKBO/s6P/jPpTMjwoU8H5t+
         uypLzT0X61jddqU2DT1zy/9JMfpnd/ypUz1dO6C4XlJ9QuFJlavElsbVYKQFYinKbrzg
         msvf/BhVgaXY7vRYg2/ilRhJh7QxH6KcKfdaAaPxx7oKkj+yuGCe1kpgJf1A7qy4ADye
         9+ORCMbuvDcjlDkbL8fwpRaW5JH4xXeUhdVaxgt2z7jkxMniyK961cMM8g1S0J17o/0W
         h58w==
X-Gm-Message-State: AOAM530ilSqpgPOWsyr+pQjFtZy89MSBNZ8QOOVusdJHYOYBggy9dkcb
	Iafez9g1oSeQSKgXjiLaAakJnH3tut4=
X-Google-Smtp-Source: 
 ABdhPJzkySvMSAk3EPgMZFcmo4UiDbvK9+VhLVb06OH2R9MT737zZqWhSOCPyOnyAB5/tEiY2Fh0jQ==
X-Received: by 2002:a63:2b08:: with SMTP id r8mr33377604pgr.211.1638144671837;
        Sun, 28 Nov 2021 16:11:11 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:ab2d:45ef:1126:5ad9])
        by smtp.gmail.com with ESMTPSA id
 p15sm15938712pfo.143.2021.11.28.16.11.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 16:11:11 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] libest: does not build with openssl 3.x
Date: Sun, 28 Nov 2021 16:11:10 -0800
Message-Id: <20211129001110.3521628-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 00:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55435

blacklist for now. Remove from pkg grp

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 -
 recipes-security/libest/libest_3.2.0.bb                 | 3 +++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index e9dad5b..fefc66d 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -38,7 +38,6 @@ RDEPENDS:packagegroup-security-utils = "\
     python3-privacyidea \
     python3-fail2ban \
     softhsm \
-    libest \
     sshguard \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index 31fbe3c..41a4025 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -25,3 +25,6 @@ S = "${WORKDIR}/git"
 PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
 
 FILES:${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
+
+# https://github.com/cisco/libest/issues/104
+PNBLACKLIST[libest] ?= "Needs porting to openssl 3.x"
-- 
2.25.1


