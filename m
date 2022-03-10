Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88281C433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Mar 2022 21:01:36 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web09.2126.1646946096002786961
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 13:01:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NPp4rXrH;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id bx5so6345633pjb.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 13:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B3pwfzg1ueVvVJCJd7nguT7tPKg/v5x56fTtlclhmCw=;
        b=NPp4rXrHpZ8a/2Vajq3vMPUfrmmYs2shwytEW9yh9XbYa0nFZFfKyRfyaOA4UJNznb
         TLKAEmyiKp1JooWBL6RSIc9Dy1vz2a5hWtWkJSD6P4UanFZBhZRHlKHzQPLlZzuvHUh3
         zSUaS4cxtkb9Q5VJL8ThjpNlhYELkJg1voCFD96qizX/iH2e2sjssScmLURQIotDMfxz
         v9cq7i0iwaVKmOXeHaP6kHn6gzI7KNeHxpzuKpH4pO2CNme6l4xIQFNdPaL9B29AtcJ9
         rPKmmVn0ejHrLtPJPIfofxWuU0gRHj1RmdkzEJFYcAXQYJraPAhGw5LfBjE8oSFLRGvP
         BHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B3pwfzg1ueVvVJCJd7nguT7tPKg/v5x56fTtlclhmCw=;
        b=eQpy+bJnBS0qXMYztQn/A8+FDrQYlQ3m7aMR3yVr0CF5qF5EnOs/LmhuVnMsTNLr+N
         K2kqQA2X5PJUN00uSEEQPkQ55/dCYfl6xHTreaBD+rIgltjAu6RLvm57hRlGVjGr7cwO
         pTwE93AMo1SeKrbyghz4+ZRqjQOwt6i3zr1HnxBRLD2PWPS2lD+QLGR1SXdw69FpdHMj
         2B2MEqHqn9PpJ2LCywE/velEAFdsyYZtPBpjqfhJecb2PQyHGklQ8fF10TA7Bg8Lbzsm
         zz91t+s9KQwvF2n/Y7YOdzkoP7rpapyRKp3MGuOGfYlquIZCj1W+Fb6TKWd3E+GDtxmz
         +kyQ==
X-Gm-Message-State: AOAM532tU+CI65gY0bGMC6WvpKScGrIxcgwPQlXYdYQHZMFwzCyJAsqE
	QFmnSuwTZw/4GQLm25hMJHRAQhdZzOQ=
X-Google-Smtp-Source: 
 ABdhPJz4YgSMeYoOUhaHcIYHCjNfXiF3/gKET5HgnVIngoqnsmFYXwqQ4kB6Jhs5gdda69FuNozrMQ==
X-Received: by 2002:a17:902:bc83:b0:149:b26a:b9c8 with SMTP id
 bb3-20020a170902bc8300b00149b26ab9c8mr6868891plb.143.1646946095127;
        Thu, 10 Mar 2022 13:01:35 -0800 (PST)
Received: from keaua.gch02.lax.wayport.net ([208.36.66.70])
        by smtp.gmail.com with ESMTPSA id
 j67-20020a636e46000000b003740d689ca9sm6033950pgc.62.2022.03.10.13.01.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Mar 2022 13:01:34 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-fail2ban: addjust compile to
 setuptools_build_meta changes
Date: Thu, 10 Mar 2022 13:01:34 -0800
Message-Id: <20220310210134.8550-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Mar 2022 21:01:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56418

Tweak compile do to this commit:
bcd7e29a3b setuptools_build_meta: clean up configure/compile

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index 2fe407e..e653d9d 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -25,7 +25,8 @@ S = "${WORKDIR}/git"
 do_compile () {
     cd ${S}
     ./fail2ban-2to3
-    nativepython3 ${S}/build-it.py
+     mkdir -p ${S}/dist
+     nativepython3 -c "from setuptools import build_meta; build_meta.build_wheel('./dist')"
 }
 
 do_install:append () {
-- 
2.25.1


