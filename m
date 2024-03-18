Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58E6C54E5D
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 12:45:34 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.42852.1710765931613870454
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Mar 2024 05:45:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JdC9KToO;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: samuli.piippo@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5148ea935b8so434761e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 05:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710765929; x=1711370729; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VQNQEtKyF2o1oslCqw4n6ee0F+cbl/JD9+CBKRjqTIU=;
        b=JdC9KToOJvb1anTpVf8p3JO/lsgMYq01UmTbkx89CTIEDMr3wGG6RjB+X8yD2m1Fps
         DhTcUFxPMZm855YV5KAFMgkPecwHSKj6Qv9h9grxAg9N2h7TfCJPK4X40db2ElO9d+rw
         yL43BMAJAcnK1OP0QvSR5oJLR6AyhZ/lNw4QihuzgIiNVxGG8qgIFcaToT+oOfKMIENn
         6Yl5MXJMHvfjl5RgRnBU7fZcGlU8kCicmtpoRwn7EJJwiCVslO9qpgqcQX+qLR/9NZnp
         uR2xmtwiNcx1vcC9Da7xTLG64Sh7hVn+felUTRFS/FPh4HWCN+/vUjmqTr3TfQ4oZz47
         QV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710765929; x=1711370729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQNQEtKyF2o1oslCqw4n6ee0F+cbl/JD9+CBKRjqTIU=;
        b=E8+VAwkfLugkB+Vs2/qP+rY0YIpNxBjWvRyPmoe+e67olUUYc4jQbdh7iogBAylJnn
         O46gkz/yrPqp4TQytKZ75flo29835SfqSAoB5kEIGg+fJkiDK0mwN7sa1bGXf4zl7Yhp
         7bRD7DS9mTZMiHzx6BrsmPQD+A50tpgGJUStIoS6hnnCThN688W4Pqzl51jChZ52oSv7
         G95KWwIMrDXNXjeuoUuWoD5h5Frig7DuMdEG4h4QT4fLp7xDwHGkD7ZmW2TkVqttWhvW
         YDA9einbFzNnl8JlrR8O9Y7qhBTE3kQ/aizZM6g0LiBixFoiXqUUmXZ/nsa3MkVURrNe
         vkzw==
X-Gm-Message-State: AOJu0YxfSWaFh7IsMq53AVbUfAa31WZgKFcMpuVRZlFrqalpA7MzhoK7
	UTPsYCb81VDjNDVBIAFpBsJhxjXqJbaF+Rg3y2h1SgO5ErmMfQUNZ7xcnLD+
X-Google-Smtp-Source: AGHT+IH8YTcIcg+ClbD3HySVdsHnCd0Yi8VlBe0ELljCQyA9ea410/bIvcRuU5OVY5Ou+VNXWdSYDg==
X-Received: by 2002:a05:6512:1594:b0:512:ac3a:7f27 with SMTP id bp20-20020a056512159400b00512ac3a7f27mr10404997lfb.66.1710765928855;
        Mon, 18 Mar 2024 05:45:28 -0700 (PDT)
Received: from dcbuildsrv.ci.qt.io ([192.89.120.62])
        by smtp.gmail.com with ESMTPSA id u15-20020a05651220cf00b00513c1991467sm1577195lfr.194.2024.03.18.05.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 05:45:28 -0700 (PDT)
From: Samuli Piippo <samuli.piippo@gmail.com>
X-Google-Original-From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] mingw-w64: upgrade to 11.0.1
Date: Mon, 18 Mar 2024 12:44:14 +0000
Message-Id: <20240318124414.135271-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 12:45:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62783

Upgrade to latest release of MinGW-w64.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/mingw-w64/mingw-w64.inc                        | 2 +-
 ...4-headers_9.0.0.bb => nativesdk-mingw-w64-headers_11.0.1.bb} | 0
 ...4-runtime_9.0.0.bb => nativesdk-mingw-w64-runtime_11.0.1.bb} | 0
 ...reads_9.0.0.bb => nativesdk-mingw-w64-winpthreads_11.0.1.bb} | 0
 4 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_9.0.0.bb => nativesdk-mingw-w64-headers_11.0.1.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_9.0.0.bb => nativesdk-mingw-w64-runtime_11.0.1.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_9.0.0.bb => nativesdk-mingw-w64-winpthreads_11.0.1.bb} (100%)

diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index ce5d0db..713c0ad 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -5,7 +5,7 @@ COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
 
-SRC_URI[sha256sum] = "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c104d1794ae22a4181"
+SRC_URI[sha256sum] = "3f66bce069ee8bed7439a1a13da7cb91a5e67ea6170f21317ac7f5794625ee10"
 
 UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
 UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_11.0.1.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_11.0.1.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_11.0.1.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_11.0.1.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_11.0.1.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_11.0.1.bb
-- 
2.25.1


