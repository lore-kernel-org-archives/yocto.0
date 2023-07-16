Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B0BC3DA40
	for <webhook@archiver.kernel.org>; Sun, 16 Jul 2023 19:08:35 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.4047.1689534506957487640
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Jul 2023 12:08:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=XKYCSXwn;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-577412111f0so40782127b3.0
        for <yocto@lists.yoctoproject.org>; Sun, 16 Jul 2023 12:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689534506; x=1692126506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ATSwrBIvyqSKvTna4RB+owVWD+IjjZYRDxHi7N/++c=;
        b=XKYCSXwnbdB8zzVbA3y212GIu1lfttRIYSqLbbkLQ8QePmXSfrHoWlA74GXZL6lwtz
         BvwvHBHqTy0oNWaGuBAy2SS1BOiV6jJ3ZtfLfEco3A59V4Mk58CizIAk/NVe1celQeVn
         IvMGy/lSJ0w8D23lx2GGBg9N0dHg2hIyO7YosI+ftGdExwpgOCTNKZo+KFuYDmNt6359
         qNEu5Dl2O37j38xdwAVW5sGvDjvwBYOuO9eZlbWpxOV1g35t7EiTEOXUwlcd12n6lt73
         cOEevBLrft7ViOuEBp5fgG9hwTQYm9CYMDVGJDeTgP9FQPUB/+W0166bS3TUIFAe4BhS
         3l9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689534506; x=1692126506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ATSwrBIvyqSKvTna4RB+owVWD+IjjZYRDxHi7N/++c=;
        b=Ube+ZqJ7mAY5IRdVBvYJtRkapbZIhdKiiK50Hv01V5Ue/YBxAe3F6l8XRbicmySmZ7
         wfIzIOK2+wdlknN2UaGl1B5CQ4t8VMo+Pcrm4QUzw/gyLqsWbZ21Wm2iJR+/NQpGAVEX
         6Dpkv2B6Sfn9jorXqIiQmWvc6TSgSsgExGB+n5A0OP1NG3Y8v4xT/rPq6WMeLxzjqD6y
         kbvxmQPu+3fjyd65iz0HhQQRbyIYKywAa9cjVF7UQAmA031NlWoFv7FA9+K+ldwX7Bct
         oM3EdPygkob8ETs0TBU7lalfQMePzwiAXZZAOYMQu3FG6WrDSuRdq2SSIJblfwBy3488
         rUmg==
X-Gm-Message-State: ABy/qLYnl8dwWbZd3w14Y8XJrkU2gEs7pEF+I0oa1ypPf0DOOxiMhxom
	kLPHQWDx182gkEwmmTnk9cXDs+pTOos=
X-Google-Smtp-Source: APBJJlFVZhe8vJYNF8p1b1kny4LG6agdqjRNApqpEnTZo07x96CE61qSVI77MiqK/D1OktBhb7x37g==
X-Received: by 2002:a0d:eb0b:0:b0:561:206a:ee52 with SMTP id u11-20020a0deb0b000000b00561206aee52mr12897404ywe.24.1689534505996;
        Sun, 16 Jul 2023 12:08:25 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:54fe:9eab:47f4:c789])
        by smtp.gmail.com with ESMTPSA id n131-20020a817289000000b005732b228a83sm3412745ywc.140.2023.07.16.12.08.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jul 2023 12:08:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] python3-json2html: add new pkg
Date: Sun, 16 Jul 2023 15:08:22 -0400
Message-Id: <20230716190822.362553-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230716190822.362553-1-akuster808@gmail.com>
References: <20230716190822.362553-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Jul 2023 19:08:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60585

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-devtools/python/python3-json2html_1.3.0.bb   | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-json2html_1.3.0.bb

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-json2html_1.3.0.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-json2html_1.3.0.bb
new file mode 100644
index 0000000..638c56f
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-json2html_1.3.0.bb
@@ -0,0 +1,9 @@
+DESCRIPTION="Python wrapper to convert JSON into a human readable HTML Table representation."
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=8065590663ea0c10aa131841ea806767"
+
+SRC_URI[sha256sum] = "8951a53662ae9cfd812685facdba693fc950ffc1c1fd1a8a2d3cf4c34600689c"
+
+PYPI_PACKAGE = "json2html"
+
+inherit pypi setuptools3
-- 
2.34.1


