Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87587C0502A
	for <webhook@archiver.kernel.org>; Sat, 27 Aug 2022 11:42:22 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.47964.1661600534584592309
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 04:42:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B6F4vIm+;
 spf=pass (domain: gmail.com, ip: 209.85.222.177,
 mailfrom: akuster808@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id g21so2993426qka.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 04:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc;
        bh=l4uilZ2np7Qfxi1e4OGvq/LeNeBaGf/utwI4/TYNwyA=;
        b=B6F4vIm+ANJ4R+RdAa6yfIeo5WxFGx52PmCcM6rpp7RPEswW28Czl8bb0XPLeROXEI
         V33U+bfLeGLopmybwbxinhrqBOn7ujaQ+I7spaVqSxZhuuImibe5jpiBQN0TJWHX9Bbu
         x90+xqbr1iErXv5rmTprrk0hxXSiWapIraIe+so1M7EKpfQhPpA3f/HK3lOG7IF/8l0D
         Z+78Ej0yI82rDpDNuEnJelNxzu41pfvlx6IaL52s8LmTBAImIxvuPZUV4GsuDfaacQ/1
         RwCBh173ufCejrXr0Ek77QIr2mhRL1htSo9ebAs96kfFZFNiedrOEdG5yjOja+arUk5u
         wieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc;
        bh=l4uilZ2np7Qfxi1e4OGvq/LeNeBaGf/utwI4/TYNwyA=;
        b=74aCuY8g00I0TBOI39cYsBWBgi7gt8Qjtd+AEG/rrM32MM6t8xpZajo3K82kMLXZdw
         i3XCIXWifC52bPdwXM9ykmZgqOz4rGzqTgystKNykPoY5Ni5/YAyfWST0A7oN1ySDP/a
         canb4xJMKcFyJOTsbAmMhKG7VLUNVX9Vb4AVQQb0bLFtV7cbzMPxugIsIa4Kw4DGiLMu
         hnlhTphRQOnuw3Nqr5Ee5YpIvQ+o2lHapV31KNLN3fJ3kMCC9/SmV7S3f45A7l02ylfV
         SDttSe57fcOrD3+xsQqySACKKMcXzPr8o9ZCKek5r1bm8ag+RWBaUYWePrsdJEe2ylTl
         59Vw==
X-Gm-Message-State: ACgBeo3wGVM9ri3oDgkzvUhCOcVfoFLuTA8MbLDisCBZ/myR9hbOWeii
	1UhJfQP2xdMvrWcjSf61nut4NBV+DdY=
X-Google-Smtp-Source: 
 AA6agR50/6Qwg9KAdqTXwoh9gQo2SwAH8XG1vQzGgQWpY6b36QsE2hndw+de0QQMS2sazh8zTHygTg==
X-Received: by 2002:ae9:e517:0:b0:6ba:e7e7:8f88 with SMTP id
 w23-20020ae9e517000000b006bae7e78f88mr2677284qkf.324.1661600533252;
        Sat, 27 Aug 2022 04:42:13 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f12c:4e90:b43e:828])
        by smtp.gmail.com with ESMTPSA id
 j7-20020a05620a410700b006bbfc742511sm1886980qko.12.2022.08.27.04.42.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Aug 2022 04:42:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] suricata: fix compile issue
Date: Sat, 27 Aug 2022 07:42:09 -0400
Message-Id: <20220827114209.4074779-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Aug 2022 11:42:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57915

make[2]: *** No rule to make target '../rust/target/arm-poky-linux-gnueabi/release/libsuricata.a', needed by 'suricata'

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
[v2]
use RUST_HOST_SYS instead
---
 recipes-ids/suricata/suricata_6.0.6.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/suricata/suricata_6.0.6.bb b/recipes-ids/suricata/suricata_6.0.6.bb
index 35054ef..ce9aca8 100644
--- a/recipes-ids/suricata/suricata_6.0.6.bb
+++ b/recipes-ids/suricata/suricata_6.0.6.bb
@@ -145,6 +145,8 @@ export logdir = "${localstatedir}/log"
 CACHED_CONFIGUREVARS = "ac_cv_func_malloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes"
 
 do_configure:prepend () {
+    # use host for RUST_SURICATA_LIB_XC_DIR
+    sed -i -e 's,\${host_alias},${RUST_HOST_SYS},' ${S}/configure.ac
     oe_runconf
 }
 
-- 
2.25.1


