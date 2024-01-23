Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDD16C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 14:38:58 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.14095.1706020733043107426
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 06:38:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TxaTiysL;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5ff88cbbcceso35556617b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 06:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706020732; x=1706625532; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=JFeV2F5aXrw6pXJd3xjVfsGGcrAZFZglhcC/73qok0c=;
        b=TxaTiysLAzMGRlXrNFWrC/N2q545dCdtZlWPs8pIRqUqw6q3Aejyh0i2eUp3tCx+/U
         gRzUJ1t4TT6hYVts0tdixWmlHfOjkF//Kl0Xxxua/QxQKIEZ9Bg8kci0pCuHj5uVap7U
         bCy9KFxx+gFh0BpISbnawTbofa7WS5kzcqxExnmmkZ2D3IoYfEGmDe96z+O+grxbUuDC
         jx9KtaUzfjIlbhKTcxvgbR73k/gXGtchQg2hf79GEqdAgY4fD7ElpwxetxMelq/VOo46
         EHUxfL2UT7DCPyGjRKOiGumachLT81p3SBxKvgC9zxQ0/IFCaigFf3s7SgQSK25drwMA
         7Lzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706020732; x=1706625532;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JFeV2F5aXrw6pXJd3xjVfsGGcrAZFZglhcC/73qok0c=;
        b=A9PDlKu2X5W0/aecieOFsvcjS9Rr/IXaCvRqnZ4HXtlrBPLqQmWI59oSRHGXPcYXYH
         h7Njob5UOdVClVI/5cT15BI8IYMx3ByC7BrYis0rFDh5JRrWU4QFKF4KzfXZBCeuU9iN
         Xr1rkvmUAsIwrl2XkKjBQQIQHDkHe9fttqlBa+oRmeOxrPTUACUB65iVEEeLsH37GBQy
         ziXjOkqx3l0mluSTkAmUY2nGQapf0jL2Qi8a5dMvYWtBL39yTbx/Lg8wXkyXMEWXESpC
         hl+8A8bbHHvOWnYpcf27HS6yyCp1We4FgBFdv9FHIkLSpo90ogU5xsLRCQlAk557KG1V
         er7g==
X-Gm-Message-State: AOJu0YwsWvyk034SlW9pUlNXBt5iWTg+NXuQfRDIZLyF65wJ7G+CGc8T
	wbqigO2a+Ew/e3rhEOvUJYaKWnNsgKXILdJpKeAelynqSxbbk5uaZzjIlCUX
X-Google-Smtp-Source: AGHT+IGN129moKc6e1fcmM/IvGRiYgsxf0PjuatdrjzWnNU9MFuz2JUj131p+xmKgkwYJVFXooXSUQ==
X-Received: by 2002:a81:91cf:0:b0:5d7:1941:3558 with SMTP id i198-20020a8191cf000000b005d719413558mr3559769ywg.63.1706020731876;
        Tue, 23 Jan 2024 06:38:51 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:de3f:b3d2:4d2d:a85e])
        by smtp.gmail.com with ESMTPSA id e4-20020a81e944000000b005ffddb2369dsm1685245ywm.82.2024.01.23.06.38.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 06:38:51 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-pyinotify: do not rely on smtpd module
Date: Tue, 23 Jan 2024 09:38:51 -0500
Message-Id: <20240123143851.2026645-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 14:38:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62244

It's not mentioned anywhere in source code, and python 3.12
has removed it.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-devtools/python/python3-pyinotify_0.9.6.bb           | 1 -
 1 file changed, 1 deletion(-)

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
index 8dd5e15..963fcfe 100644
--- a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
@@ -9,7 +9,6 @@ RDEPENDS:${PN} += "\
     ${PYTHON_PN}-logging \
     ${PYTHON_PN}-misc \
     ${PYTHON_PN}-shell \
-    ${PYTHON_PN}-smtpd \
     ${PYTHON_PN}-threading \
 "
 
-- 
2.34.1


