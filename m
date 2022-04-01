Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECDC4332F
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 14:43:47 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.1425.1648832098921614582
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 09:54:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IANv3bkz;
 spf=pass (domain: gmail.com, ip: 209.85.210.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id t2so3136445pfj.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 09:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yyiAgbbMlmHt722Lx/JNcg4my50CsnF4pBxbYHxWieM=;
        b=IANv3bkzbB9Pwx8rTao72SZ/BO0l/VPe5Jj3tbBo5G92DZGcV8Zr/iw4t8qrz97njm
         mQZX7pVoBbM3BcAByNJA29bpSMKY7wnX17n0kT9GO1YYt2FX5YMUHg3Vuf3Uwvq/4sZv
         GFl/Sa7+8IcMVetiZ2++fxREplkQARyzsuHDPQEEIskL62dToibpiX1XK0ske1Vt42jv
         EqQ86smAZC1LwLq1Ys1MMEavVVhUG7b9jLMd30uzUt1H4yXM1TtteP20/EqRclgNbGmw
         wDMNgX1Z2CiNZUdN+I9MasrKsNjLKertVKvQCIz2ulFV3dc78sVAxr63aJRF2KnSTO3V
         vy1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yyiAgbbMlmHt722Lx/JNcg4my50CsnF4pBxbYHxWieM=;
        b=qRKo8C1M+d0osBmN0VBrKyRkIFcrPJleJenPKbKTk1aQyGsaGlMlZJeVjZKnPRIo30
         4XjLCFo6UDEt5vBaC5F1ZAgjzKh6QxSfxVDuLY0UQ3ULyazz3Vbi48ppdGqqKHqFIMxH
         oHuSEEzAQdOPMJr6o+XnBRWz00Mmw4bKq9rK3Uc3h9mfcvyKWXiVy7AhsZLnExz02JNP
         evqcRGsl2FvO50F0EMgjB62JsVvMsnVNnbGVeQJTy2u77FB9a1Gy/K5QabJpp1YM3SI0
         rldYEbIgIP/0qY8vGHR9CEfZPCcHjA+NC4mnKhuu+PX/W3zWmxRjdax3V6z6015Nks47
         qUZw==
X-Gm-Message-State: AOAM533hAJjh+gDSHIgcddyQMlVlltWi0LvdVS3XGaSuCNnWSC4iYDTU
	IVtR6XisQXIeLRSnary/U2vji2vpAgc=
X-Google-Smtp-Source: 
 ABdhPJxqoeFeWLXAdCfsj+x+TUpi93s/CVgiXy/AYg5Elg2oG6Wwf80OHCpAZN516YXwS7VrLyjGtg==
X-Received: by 2002:a63:778b:0:b0:398:1568:1c53 with SMTP id
 s133-20020a63778b000000b0039815681c53mr15741225pgc.548.1648832097951;
        Fri, 01 Apr 2022 09:54:57 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:9292:de58:9f47:7035])
        by smtp.gmail.com with ESMTPSA id
 pj9-20020a17090b4f4900b001c744034e7csm14511562pjb.2.2022.04.01.09.54.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 09:54:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-fail2ban: fix compile issue on some
 hosts
Date: Fri,  1 Apr 2022 09:54:55 -0700
Message-Id: <20220401165455.780859-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 14:43:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56613

Use python3-native to use 2to3

Fix build issue on some hosts with this error:
 (result, consumed) = self._buffer_decode(data, self.errors, final)
 | UnicodeDecodeError: 'utf-8' codec can't decode byte 0xd8 in position 152: invalid continuation byte

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index 4118732..96e17b7 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -9,6 +9,8 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
+DEPENDS = "python3-native"
+
 SRCREV ="4fe4ac8dde6ba14841da598ec37f8c6911fe0f64"
 SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
         file://initd \
@@ -21,6 +23,11 @@ S = "${WORKDIR}/git"
 
 do_compile () {
     cd ${S}
+
+    #remove symlink to python3
+    # otherwise 2to3 is run against it
+    rm -f bin/fail2ban-python
+
     ./fail2ban-2to3
 }
 
-- 
2.25.1


