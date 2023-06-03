Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0721C77B73
	for <webhook@archiver.kernel.org>; Sat,  3 Jun 2023 20:54:47 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.5548.1685825683106403210
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Jun 2023 13:54:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=BWXcX1QO;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.182, mailfrom: steve@sakoman.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-39a505b901dso3001543b6e.0
        for <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 13:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1685825682; x=1688417682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RpAKylXWMWCTKNBLJxil7xJ6huTQjalyeoXYZul8inw=;
        b=BWXcX1QOrS6gZlyY+nkHLWnBRBuOHSsC+T0LpSMJSY1De++SqUZdtcKSllQ/CD+Aah
         ZXdEmz6uVDIeMQUkYyee/8tDeNc51cH6wqxm2BbjDew08ZT5fob9V5IP3368vxfRn47a
         c+NphdFf5Vb8H/78JA6Z9jToqV6UbLzJkbLtqBv7w8fWn0JL1AV/a0lliZHSU2X2b8eC
         qMhr9Uvjz+o+360IjmTgY1fiXH4kDMwZM7Jx33eM91b1717aEp6XRmxryalfVw/CCl1y
         Li1LZYn6aDsgyqnGykCn9MIXbJEdcaCmudBvWMmMeIvii4lNlq4EztMqAb4GlyZh6Zz3
         ySvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685825682; x=1688417682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RpAKylXWMWCTKNBLJxil7xJ6huTQjalyeoXYZul8inw=;
        b=ErU0zjcFDKfeKXfJQNC6IgxU2WYs8RXMUQJOnE5i9dsSaTP52Jy1KQmk3VxhifutFD
         Fe6f0+k5lKBdDYsn86RDzIXMYEJsLmHzP9SPNLrPYgR+22ncR7KSeiCugMAF6vIcUnAX
         AIm6ZMWmI1yPvANOhyZFZ62iKUnK6xkyEOMG6YcuVYw+vQzmnKwT8TcmccZ3Td5wS3j3
         IAxAcuqULahQ/lBL/35NB+Oa3fEsBx8GSXTby9eK0899iDcUY8u5M0qQYGmOMf9Qn4xl
         JbHBPOhvCkJHTE5cp/wQJQfcgHsf6GuRnBRGjZ4KxuHgiBBlCOdvVDe4huPXvlZfIj6K
         iWQw==
X-Gm-Message-State: AC+VfDwKsK5mF8oEJK0GckkwSaeHfbtM/q9g0syPOgWzHuvKAbrKRPA/
	e2Sg2FAsT9ohJcHIF8WKt6CrNz5mG6OK9tiFHBE=
X-Google-Smtp-Source: ACHHUZ6S6qWWyiW/ocIHTF+yIBtohPfQRg5ZFfkgWoOnTgg8hdaEeilHHjtdM6Q00hy1BCA4L//4Xg==
X-Received: by 2002:a05:6808:3a3:b0:38d:eb54:7ccf with SMTP id n3-20020a05680803a300b0038deb547ccfmr3828586oie.23.1685825682090;
        Sat, 03 Jun 2023 13:54:42 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id ie3-20020a17090b400300b00255e2d5d56csm3205387pjb.1.2023.06.03.13.54.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 13:54:41 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: use buildtools for all alma
Date: Sat,  3 Jun 2023 10:54:34 -1000
Message-Id: <5683f419ade0cbe8f7c30998ea3d5754e82e34ef.1685825591.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1685825591.git.steve@sakoman.com>
References: <cover.1685825591.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 20:54:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60172

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 607e3ef..4084138 100644
--- a/config.json
+++ b/config.json
@@ -1147,6 +1147,7 @@
 
     },
     "buildtools" : {
+        "alma*" : "${BUILDTOOLS_URL}",
         "debian8*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
         "fedora*" : "${BUILDTOOLS_URL}",
-- 
2.34.1


