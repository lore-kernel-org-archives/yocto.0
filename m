Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08F5BC74A5B
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 19:59:56 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.3803.1679169594720196122
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZZWL5ziv;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id op8so5505758qvb.11
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=RDR+wAtKf32tyMEIuPHj2pYqeObyU+RmiOPd8osKAok=;
        b=ZZWL5zivjqZGeOoIHTZNDlAGgYWhl9FaV/ytEu20IjCvWaHdwYdQBrsAMO3dGrZFtE
         inGWwwaKVmx0iCNyOvesmWTqxIYb40DZqjFpzclrMp38Uucofivbx4TEjpO/F6JOrdih
         I2YHpp6bjh3XFwN5clo5FRzGZzXSlskGK6JFmm2WsAvh54UG+W+IlhG7lBPzyOtJlWI9
         eqpPvqwNTuNxQRunBEjSlNBxhDFW7rCNOGYxINgmKBmUKW/fwRCD8KMfBkuNAJxtX+tB
         5MOQ1b0ZWgQ5+uueAy0fILXlNCfb1QHO8N3gqk67L5ugyDuuHR+t9Uy+fqYNZ+2DVB/b
         wzrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDR+wAtKf32tyMEIuPHj2pYqeObyU+RmiOPd8osKAok=;
        b=U9h7c3Z1NdyOgbCLaRETheTdm6aunyzCIjjiGUGM3aOgpv7fepcpzNr4vWcruI1PoW
         aCeZeXUE40zeo/sEp3FeOrLURdZPUid3TPvXEJtSIWg+hbZGNOMM6eYDXf7G3l04Xigd
         2NniqFb4OwrqeJO+jWSzyaWwNY+NhFnwqsyVjL1QKiEnwg1VwuFBCtiw37IpQbHH6wUS
         aouJemyD8uTmSvMN+2Q2nj1MxN7+vV6kD0VZ5uk2lZK9RmyGCiVTNRZauk4ZJNTz1+ns
         DKF8JbcBtNSfcYvbRXEyijtkATDbvwjusB52+Pu8afcHxMGZaQI1ne68AadXNWWTu6sp
         319A==
X-Gm-Message-State: AO0yUKVZw6iqH10j51Y+z0WYF5AJ/tka8QvQpPjS1g6MpH9r7Pg0MWvu
	LO5aJ/jQDL0jSwuZk3D4DYs2kOpajwY=
X-Google-Smtp-Source: AK7set+l9pwGVI/fmYGDBMInHvYeBwNpF99xBoYEpWAtVibwU8nFdMcA7+4mHYog4I6sybaeGtchJA==
X-Received: by 2002:a05:6214:2622:b0:5b8:1f61:a20 with SMTP id gv2-20020a056214262200b005b81f610a20mr13978601qvb.35.1679169593629;
        Sat, 18 Mar 2023 12:59:53 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/9] python3-fail2ban: update to 1.0.2
Date: Sat, 18 Mar 2023 15:59:44 -0400
Message-Id: <20230318195952.538375-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 19:59:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59453

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...n3-fail2ban_0.11.2.bb => python3-fail2ban_1.0.2.bb} | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)
 rename dynamic-layers/meta-python/recipes-security/fail2ban/{python3-fail2ban_0.11.2.bb => python3-fail2ban_1.0.2.bb} (90%)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
similarity index 90%
rename from dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
rename to dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
index 1f55267..9379494 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
@@ -11,11 +11,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
 DEPENDS = "python3-native"
 
-SRCREV ="4fe4ac8dde6ba14841da598ec37f8c6911fe0f64"
-SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
-        file://initd \
-        file://run-ptest \
-"
+SRCREV = "e1d3006b0330e9777705a7baafe3989d442ed120"
+SRC_URI = "git://github.com/fail2ban/fail2ban.git;branch=master;protocol=https \
+           file://initd \
+           file://run-ptest \
+           "
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
 
-- 
2.25.1


