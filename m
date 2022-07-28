Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5124BC04A68
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 21:33:19 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.1065.1659043994040157555
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mBxGEYYq;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id
 f11-20020a17090a4a8b00b001f2f7e32d03so5922952pjh.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=QcNSvGs9qJJYY2XSiqXLgPPA+8ESmlKjFkebfvqSp8w=;
        b=mBxGEYYqqDk1dPVYnR3PtRWhZ+zfRi3RBqwVZedWmZa064FSuW/8E+oXkRb6iSiqB7
         31p3tTBO6Yv8b6xDA3ZLvHFGIvgT6c4MkG4VUXSxkDwnnhSkHKYbWv0HPAGQLTIrRcCo
         gjzEoOoLCwjOeqfxJMPvqOQ757OBa//e4rP6i6V5m2WOacCEPmc2GI+xzOXQood4e5nP
         H5GDwv+6Ebuwdjae+EZuDLifmj5LlIa0hpPTb+PuxdG4DDbf6g7nX+7IbTcJfbz6sqd5
         NmsC749g9rs56GBrUaM8laaKqlyS8PSYa5RNpH3iNtbHf6/2NG5VTSPOc/CKW17lkuFq
         XgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QcNSvGs9qJJYY2XSiqXLgPPA+8ESmlKjFkebfvqSp8w=;
        b=IN1GMyv329m9UBMECoGD3OFPDna9K/39/bV1w1AZDZ1hfgw+Dxad0SINcUNZNM7uTJ
         QmN0l1URNl8kRAloPkY4MekX/GEN8D/uRV5JfYEiO8TZuWH+Lqqs4aHjY9u3u8JxreAF
         4Jyp6p+4GXq7cfvQdVydGUYaIyOVtEyRuHDiYBXOeWc+MFv2ZqQv0xNRQhHQ/nqt4ZG+
         PmNTf44BwpLxAjY6vBHMAMSpvzvDu2zKPnA9/wSu5yC+m/r+U1VV1SnjGT7UQedDFwQL
         2jrWM9LMs3dSxAfqWG+vYtyO/FC5tXqUq47qCR7Hli5MvLyGHJcpQ7B3VVDhslrM4zwm
         F0kQ==
X-Gm-Message-State: ACgBeo3mD67ZaSWQPa5w1aBBXhsFG6rgwXncsRKc7mRmthG6hC35EzaY
	DlP4P4vUb1rItlzemUk9DuzOitH455c=
X-Google-Smtp-Source: 
 AA6agR40hdt+eGJ15Fh09SWhr5hfScCWrfy7hhY0AL1M74gEGe5l58isd25vQJJX+HS47zsexe6Flw==
X-Received: by 2002:a17:902:cf4c:b0:16d:1175:9ed0 with SMTP id
 e12-20020a170902cf4c00b0016d11759ed0mr873840plg.66.1659043992994;
        Thu, 28 Jul 2022 14:33:12 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 b62-20020a62cf41000000b005283f9e9b19sm1207328pfg.180.2022.07.28.14.33.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 14:33:12 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] fail2ban: add UPSTREAM_CHECK vars
Date: Thu, 28 Jul 2022 14:33:01 -0700
Message-Id: <20220728213301.3138-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728213301.3138-1-akuster808@gmail.com>
References: <20220728213301.3138-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 21:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57668

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/fail2ban/python3-fail2ban_0.11.2.bb        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index 96e17b7..1f55267 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -17,6 +17,8 @@ SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
         file://run-ptest \
 "
 
+UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
+
 inherit update-rc.d ptest setuptools3_legacy
 
 S = "${WORKDIR}/git"
-- 
2.25.1


