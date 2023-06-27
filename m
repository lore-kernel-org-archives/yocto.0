Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C688EB64DD
	for <webhook@archiver.kernel.org>; Tue, 27 Jun 2023 01:44:59 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.12917.1687830293147697567
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 18:44:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=LNRhM7vS;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-57001c0baddso32257157b3.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 18:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687830292; x=1690422292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JcZYe3dF3X0osJI4tn36Z+qXtdetrTo/2M/Unjb/wVY=;
        b=LNRhM7vSr6sNONprckw3dFZBc8cP70PUG311WGu8NJjwSpqqa6XVX5dyotUn7ZTHOf
         g2qAkeE1/KKkvxuiA92Tf0UJ2D1jTzfbshagz03GZxNqV/Ax55SYGmE2xuBe47HFvsv1
         jqsTPaQUE4bQXRzI3gdJ1VtqeF7tyYItZfYoVFQjIKA+QSeR8VUhsoCeIikq5b7ykX5q
         hQ7au1ZNrR7gmP40G8MlEQnf2hPU0IfiMqA1zlHBxZ2TtYdz+YCGrW/SlnsVHwB+iNv6
         Dj75bT9Th8WTA6fpV5AJp06Z4A4rsq/zvKVezM/55JGkTnnYhXX4XgG8xaV2vR0vdKAw
         SVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687830292; x=1690422292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JcZYe3dF3X0osJI4tn36Z+qXtdetrTo/2M/Unjb/wVY=;
        b=FuldWOxdPNEUJCbb6HnGgYaAvrQ2BU2yBERQmTTbUXN+lNPOO0MRueYg9LS/3xlVjY
         ka7EPYTu4J2TOTXKtS3JQ1b0c3o+I0y63s6I/wwPIw5Isdwv020Zv8Kokvze+9f97jZu
         oh3+e8FYEsptpLTJ1lWpye1ccnvvCou+jbiz62kVpOBM0m+7/sS7w3+z2sPTopdN5VB7
         A+EPRsg9CDy3/4e8OikocBdB4WPAOfZgqKnmNhlDTFnxfsM3CNEVQ+GMlSB9rjaGD9TB
         ZdAvB9IUN5Ka9gyD43MITVVJYutOIWWwlBfKJa58lfW4W/KCJGqmiIKLMg060y7jUhx/
         GbTg==
X-Gm-Message-State: AC+VfDwD5iQcZrmGgAHsOMMXYD1oIjidgeDcsmU/2q5CKrvPoF4c3JcW
	NZCuWyKF7+5g+xd2xlRmeKvq2cIlQmg=
X-Google-Smtp-Source: ACHHUZ72cF7zBNjoIbIa/lhRd1pfIfpEWwTJNvpiWcuVlARdOS9LSD1BTD5fyw29bKF0ax7hLCg52Q==
X-Received: by 2002:a81:e944:0:b0:568:ec50:4d02 with SMTP id e4-20020a81e944000000b00568ec504d02mr21231819ywm.28.1687830291654;
        Mon, 26 Jun 2023 18:44:51 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:4f49:bc6:428e:df92])
        by smtp.gmail.com with ESMTPSA id b123-20020a0df281000000b0056d31a089e9sm1571413ywf.126.2023.06.26.18.44.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:44:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATC 2/3] python3-segno: add new package
Date: Mon, 26 Jun 2023 21:44:49 -0400
Message-Id: <20230627014450.3188750-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230627014450.3188750-1-akuster808@gmail.com>
References: <20230627014450.3188750-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jun 2023 01:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60457

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-devtools/python/python3-segno_1.5.2.bb       | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-segno_1.5.2.bb

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-segno_1.5.2.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-segno_1.5.2.bb
new file mode 100644
index 0000000..f8a6552
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-segno_1.5.2.bb
@@ -0,0 +1,9 @@
+DESCRIPTION = "QR Code and Micro QR Code generator for Python 2 and Python 3"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8e8db3765a57bcb968140e0a353c1a35"
+
+SRC_URI[sha256sum] = "983424b296e62189d70fc73460cd946cf56dcbe82b9bda18c066fc1b24371cdc"
+
+#PYPI_PACKAGE = "Flask-Script"
+
+inherit pypi setuptools3
-- 
2.34.1


