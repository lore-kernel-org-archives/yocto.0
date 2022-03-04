Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3054C433FE
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 06:49:43 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web09.4459.1646376578647616352
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 22:49:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JbLA/yQJ;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id s1so6913773plg.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 22:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1uKuL7EtncmgUYmVNELNAoI3t+ZrL3M4qOzSyP8FBks=;
        b=JbLA/yQJ1Ggeia99azLUOD1zAtF9jguJ1nCSNpmiXZ1x269cpZ7tI53/yoDY6yN4/v
         W+jva5jRbe6gztzPqdTWreWNBfuhuacqnuE7oKh51uv/B1Q2LO1FL81z1B+x8m+rhmcA
         9DTcSS0ix4E8QISPZIVM/MK+Hpt09jJ7U2tnkCwhg7sdNZ4nkaAINH/uvec7Qcmmxusw
         KqVP16X+qLYKqMSPOfEEUztpY0TbPoxcapYlQvxXS3p0oVFz+lWrnIYhEuNWkDlP4pCX
         cp06AEwdOeLkRcoP443RTRUeWEN5LG7yPwI0RN25D9nftk0aO/bDX7ZIuSuLnOGr2a7C
         h5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1uKuL7EtncmgUYmVNELNAoI3t+ZrL3M4qOzSyP8FBks=;
        b=czBDcydQdC4QFsdkH/paI+ASlhdC/QB32QCRJ1JEMxBtppvbJ1O5KH7GtpX5FT0JiI
         gTkRyYX24JKrqdnJ4w6Gpoj1ZhvzInEMwG4fhJjNIB1aLCQ4MQsqlb0rQVZiLImKY+KP
         8lUxFZo/WSMWfuR/6mZskVoIQp+ZBU50zYMYf1vNCrsthwEdPe9Imd9j9pvUOL4gUq8P
         ObhE7jNe+wsOyNCSCLTDEpd36lCPXz6D+QA8L2YVB/0Qu3hB5YZVUfJOv0OrOXDFIuq2
         LLxHJlx20XhJpGDcnZB4K4i6OxAkL/uQ2dyMlk7eu56FQ7Ofswh/yJ0o1tqWh85A6E5u
         dT4Q==
X-Gm-Message-State: AOAM533tXoHEzu1RyiHhxnliY4oz5ZN+jmw94FhUcZ5QYIFTyi0LcO2F
	Jn/VGPLDFLjFmFoeUd6qWo1kSeyTYBY=
X-Google-Smtp-Source: 
 ABdhPJwZbEABpm9gUC4Kwd2hVLFt9ZNTMF7vLj3U1qocB73/i0FRlOXCo3B/QYNtlEVcjkm2nS7hbg==
X-Received: by 2002:a17:90b:e08:b0:1bc:2b0c:65aa with SMTP id
 ge8-20020a17090b0e0800b001bc2b0c65aamr9096512pjb.102.1646376577831;
        Thu, 03 Mar 2022 22:49:37 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:f6a2:87a3:bed8:c9ed])
        by smtp.gmail.com with ESMTPSA id
 bd35-20020a056a0027a300b004f63bca32e7sm4002551pfb.208.2022.03.03.22.49.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 22:49:37 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] python3-privacyidea: fix QA ERROR
Date: Thu,  3 Mar 2022 22:49:34 -0800
Message-Id: <20220304064935.3276672-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 06:49:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56362

ERROR: python3-privacyidea-3.5.2-r0 do_package: QA Issue: python3-privacyidea: Files/directories were installed but not shipped in any package:
/usr/etc
/usr/etc/privacyidea
/usr/etc/privacyidea/dictionary
/usr/etc/privacyidea/privacyideaapp.wsgi

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/mfa/python3-privacyidea_3.5.2.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-security/mfa/python3-privacyidea_3.5.2.bb b/recipes-security/mfa/python3-privacyidea_3.5.2.bb
index a4ab59d..043cbfd 100644
--- a/recipes-security/mfa/python3-privacyidea_3.5.2.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.5.2.bb
@@ -11,8 +11,6 @@ SRC_URI[sha256sum] = "26aeb0d353af1f212c4df476202516953c20f7f31566cfe0b67cbb553d
 inherit pypi setuptools3
 
 do_install:append () {
-    #install ${D}/var/log/privacyidea
-
     rm -fr ${D}${libdir}/${PYTHON_DIR}/site-packages/tests
 }
 
@@ -21,7 +19,7 @@ GROUPADD_PARAM:${PN} = "--system privacyidea"
 USERADD_PARAM:${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
     --shell /bin/false privacyidea"
 
-FILES:${PN} += " ${datadir}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
+FILES:${PN} += " ${prefix}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
 
 RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
 
-- 
2.25.1


