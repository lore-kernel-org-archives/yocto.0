Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01C5C001E0
	for <webhook@archiver.kernel.org>; Sun, 16 Jul 2023 19:08:35 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web10.4046.1689534506189487630
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Jul 2023 12:08:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=WfrxaHNQ;
 spf=pass (domain: gmail.com, ip: 209.85.128.172, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-579dd20b1c8so36428677b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 16 Jul 2023 12:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689534505; x=1692126505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vEZqT9r+MpjMJJTn15WEffsy5EMd8+NlMxiZgZwGFQI=;
        b=WfrxaHNQ2TvUFa0ffBIpqzmxVRd13l+SG7PgIPu3gXsjn84cao3mydx4qnK4PPSx6b
         grpFXu5B3THRKTTMtJFdNdvdbrNeCW7BoCGJCjmhqOAbZt1zpqPSCA4717JzawzNrfmI
         y1BbVl0fSIBa9oIyAk3Kzx3vCChUQwizxrmYDEBE7Uc5ynWHqUVIL3fSizAKbbnK9+uc
         xut22xhRuycb++9QSj3yq0ff1YkNcBxIq6BPVhI9WqrzeLTFmQk1nri6SVKS/WcqNCvx
         rwZRr4By67rJm+xBDx3Q1JUdVstQ86NRjamplWwSmHpLnpanunq0FxgyL5bbm+M0Y/6p
         nsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689534505; x=1692126505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vEZqT9r+MpjMJJTn15WEffsy5EMd8+NlMxiZgZwGFQI=;
        b=i+R3veyKXh0zNhv3NCMgvfH8KhQZIkpW3wv/2O5bqSnsbnK9cnQiLNb55dV38d8drC
         fiisbsvI6MDUtU1THeBhyS3urY6EfZRed0VTV5rEpxRhJFevBjwUthZhaa2jDxty5Xy3
         6qexdlg3OJUUePGlcgRjbD5SsY1+gkCXRkezexd/24LuV+JInu4s1Ai0L3EMHBYcxHaO
         5WVMUqKsU3UVQq9x40IhY6Uaw80LS5xGBbGictLg39A6cJmvy09B2isLPZ9t9bovwWYP
         QZ65yi7JYs1TvBcJXp0wx4pwhGXjfCOWePTE+FBMcq52hZzSAoFt4AMw1asj3StJnVL9
         vXtg==
X-Gm-Message-State: ABy/qLYQrPJtVdSJ68A7CfhXd0yqiA0zVU7qv0M24LgrCIJKb2lTkw2r
	2Ev2Oci4jn/g6wm7yN/nEqmwwUSmW0s=
X-Google-Smtp-Source: APBJJlFgh9iPEq1KgG46G7YLlOkxQ2sqTZF+l0GKurO62X8W0R8DX0dmIInEtav6eqPz8RLk+uvAsQ==
X-Received: by 2002:a0d:cb48:0:b0:559:deed:f363 with SMTP id n69-20020a0dcb48000000b00559deedf363mr9309373ywd.2.1689534505204;
        Sun, 16 Jul 2023 12:08:25 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:54fe:9eab:47f4:c789])
        by smtp.gmail.com with ESMTPSA id n131-20020a817289000000b005732b228a83sm3412745ywc.140.2023.07.16.12.08.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jul 2023 12:08:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] python3-json2html: add new pkg
Date: Sun, 16 Jul 2023 15:08:21 -0400
Message-Id: <20230716190822.362553-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230716190822.362553-1-akuster808@gmail.com>
References: <20230716190822.362553-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Jul 2023 19:08:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60584

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-devtools/python/python3-xmldiff_2.6.3.bb     | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-xmldiff_2.6.3.bb

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-xmldiff_2.6.3.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-xmldiff_2.6.3.bb
new file mode 100644
index 0000000..517ed87
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-xmldiff_2.6.3.bb
@@ -0,0 +1,9 @@
+DESCRIPTION="Creates diffs of XML files"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=0d0e9e3949e163c3edd1e097b8b0ed62"
+
+SRC_URI[sha256sum] = "19b030b3fa37d1f0b5c5ad9ada9059884c3bf2c751c5dd8f1eb4ed49cfe3fc60"
+
+PYPI_PACKAGE = "xmldiff"
+
+inherit pypi setuptools3
-- 
2.34.1


