Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4985FEB64D7
	for <webhook@archiver.kernel.org>; Tue, 27 Jun 2023 01:44:59 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.12916.1687830292874914351
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 18:44:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=d9NYsOin;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-570877f7838so41842147b3.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 18:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687830292; x=1690422292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=mgkcf9tXerwcahw5ymlMk3IECIW7UKY4AbMrCJC5feM=;
        b=d9NYsOinxHVqU9vg2nXtBXty/Tp1j4QZNcygRZKE7DSkuGFgkXRSfYAPo0c2BnsROP
         7iLnBRkwk407z56XHzxOyHs+7KMkIw//BozH/VaydDA9cNRv/BMYFCyRUbmpkXyESmYT
         vog6PRTgNtBbrJWh3yOxVpHKNEXtebltIrsxh8/ISo6/gQqNtLJNUGcWf4wOTu5zHhjP
         DIRhzAKDcF+i2pi0B2KochfX1EgsWNUMu9g0yVfcTYFtwz3VcQ8HhLrcaEFGskLnLdvo
         g7vphdp6fIxasFreZw0QpIT1grN0MA7cv090KbibT27sYFHsiFQ0R2p6kJOebk7hsI0o
         sICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687830292; x=1690422292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgkcf9tXerwcahw5ymlMk3IECIW7UKY4AbMrCJC5feM=;
        b=TwRR91c/CsbjOewer8rVHUUN9liMPBiwyjbHujl5XyZR1q8B7OrpGqIpJfAVNy8W1M
         JuKVp8WcrOv6FEXU2Oa3yOEWAuOOzHOgRvkEmYAIyQc97Y/h0Y74sQvrOyvx/3LAcOsG
         4HviQZUMNCwio+OzHd0MMH2H0aVEbKqOuUgzKhqAvJDjHyxWXheydNEEofwwnZV9ZKc9
         l379YO7MGRi9rE1feTP/rDcZbN25486LfD2qUgiATj2x7rkhK1BLK+2cz44i+gUkGrd4
         O21imKxQRqtVbEA6uhC6IGn1GEcrLsHq8PA3+wjX0NyWp5IE6cmZQZOYijEhvjNBq2HR
         fk+w==
X-Gm-Message-State: AC+VfDxf0rLZc/CHUIj70bdayLPWeHtZvbmCLjHfIWHMhP0tg0ZeahOC
	/bJ3T7ZhEGFkdnTQVpkhvgwoOkIkmq0=
X-Google-Smtp-Source: ACHHUZ7xi3zhByL7uAbngi7X13/TezZN29Cdi2arYMuyCQ3LFIEI3sQR4yGxi4g0Pr3D6fHpUhOJ3w==
X-Received: by 2002:a81:8496:0:b0:570:20e0:ec4b with SMTP id u144-20020a818496000000b0057020e0ec4bmr30268782ywf.27.1687830291189;
        Mon, 26 Jun 2023 18:44:51 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:4f49:bc6:428e:df92])
        by smtp.gmail.com with ESMTPSA id b123-20020a0df281000000b0056d31a089e9sm1571413ywf.126.2023.06.26.18.44.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:44:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATC 1/3] python3-flask-script: add package
Date: Mon, 26 Jun 2023 21:44:48 -0400
Message-Id: <20230627014450.3188750-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jun 2023 01:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60456

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../python/python3-flask-script_2.0.6.bb           | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb
new file mode 100644
index 0000000..377ad02
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-flask-script_2.0.6.bb
@@ -0,0 +1,14 @@
+DESCRIPTION = "Scripting support for flask"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=e686048adb69341fc8a08caeda528b41"
+
+SRC_URI[md5sum] = "3fbd91fe13cebedfb2431331f6eabb68"
+SRC_URI[sha256sum] = "6425963d91054cfcc185807141c7314a9c5ad46325911bd24dcb489bd0161c65"
+
+PYPI_PACKAGE = "Flask-Script"
+
+inherit pypi setuptools3
+
+RDEPENDS:${PN} += "\
+    ${PYTHON_PN}-flask \
+    "
-- 
2.34.1


