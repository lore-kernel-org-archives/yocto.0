Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B002C04A68
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 21:33:09 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.1051.1659043986283417228
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=l8JBWe3j;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 q7-20020a17090a7a8700b001f300db8677so3435202pjf.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=05yIEQDFa7mt4bMRnII4qc8/m2e6RNRWYCZn30FOGrU=;
        b=l8JBWe3j3HDcraMmwzwnCqAmYrl1y3L5yGj3vhjUsEYmWHuh3ba+AvWP0hfwpnsHPu
         kCq0AWCUvtCQxm13O86iuorUEbhYkmDP7INKwwZuQdlEBnXTt3bS10TDl+P+K/t8gRHl
         DLTTROQsgL/s5dZZ4qjn8QVOb5Otcq6MSFGaMnJbwaqAZnSdZlAAOSBTqTHf8ze93p3w
         Vun9uYWmfGVizhNOT0uEP6LdBlUeOBe5xnZFc/2qbviDOyUwbDORlm4lhyY3GyIlrRRy
         jUEC67pVFIun7aWgffMmG9Jzhm//6/5t/tsw+qLOhaOSFx6Q5806XpuR3deNBu5yz7ko
         O0IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=05yIEQDFa7mt4bMRnII4qc8/m2e6RNRWYCZn30FOGrU=;
        b=xkHlTt5+kF2NLPvhHMm7pthKJLmUHxDR7bj30CHeyJYjRwiO0wvbxUebt5cVf3KsMJ
         gBtboSWlzjQ1DIHFabVILD9XIuS4npdVpQxgkuuxKn8EiobjnOdiqpDLwkLOpemTgAXZ
         +BAo/d+J4OoXWiuQhbtoj5814cjORu1BSRbRhRPEWQu70gj38LNld84n2XGtuzPm/Xtl
         EbZHNKYN+1CBZ4eIsjKKB9Zqlkd0YAQUHuRomTLzVQkLwJT+PS6pQeluEikBoxT6OJAf
         ef6o+GboqpCRgS8DOP2bFXeMKXnWZ48oPDcmbtt4pgg2hNE2c5hpo2JHpFQAwpDLu6ZA
         qHQg==
X-Gm-Message-State: ACgBeo220ZZkMUkp4ydDtXcyGmyAPFRCu/9NjOvWmmbhdCi5SDglYu7O
	9dkZxLYI6M7lrtu/w6vVnvYeHjLAqaA=
X-Google-Smtp-Source: 
 AA6agR4fM4mucImcnmy/8UKLea3kxfFvuLYoejNIrxVg5XUbRWbKCDVtlCgTJTP1vLqrKgdqlgionw==
X-Received: by 2002:a17:902:e841:b0:16c:3053:c7e6 with SMTP id
 t1-20020a170902e84100b0016c3053c7e6mr725310plg.163.1659043985296;
        Thu, 28 Jul 2022 14:33:05 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 b62-20020a62cf41000000b005283f9e9b19sm1207328pfg.180.2022.07.28.14.33.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 14:33:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] suricata: update to 6.0.5
Date: Thu, 28 Jul 2022 14:32:58 -0700
Message-Id: <20220728213301.3138-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728213301.3138-1-akuster808@gmail.com>
References: <20220728213301.3138-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 21:33:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57665

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{suricata_6.0.5.bb => suricata_6.0.6.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-ids/suricata/{suricata_6.0.5.bb => suricata_6.0.6.bb} (98%)

diff --git a/recipes-ids/suricata/suricata_6.0.5.bb b/recipes-ids/suricata/suricata_6.0.6.bb
similarity index 98%
rename from recipes-ids/suricata/suricata_6.0.5.bb
rename to recipes-ids/suricata/suricata_6.0.6.bb
index 913e64e..35054ef 100644
--- a/recipes-ids/suricata/suricata_6.0.5.bb
+++ b/recipes-ids/suricata/suricata_6.0.6.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
-SRC_URI[sha256sum] = "0d4197047c84ba070dfc6b1d9f9ee92f52a71403bfac0e29b2554bb21fe00754"
+SRC_URI[sha256sum] = "00173634fa76aee636e38a90b1c02616c903e42173107d47b4114960b5fbe839"
 
 DEPENDS = "lz4 libhtp"
 
-- 
2.25.1


