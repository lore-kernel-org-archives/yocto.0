Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDE7C433F5
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 14:43:27 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web09.29008.1643294606578143695
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:43:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YrOI3wCd;
 spf=pass (domain: gmail.com, ip: 209.85.128.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id
 c190-20020a1c9ac7000000b0035081bc722dso2025748wme.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VBI5Z4lqFsEwt9MJ58lTWIRZwBqKs61nj5JXtrL20wQ=;
        b=YrOI3wCdQON3k8fRtzZPN8fSJV03ntHBKnFPg/zOQVyORKfqMnxcG0JiF2Z5J23mpD
         3F4DqoViWHi2zY7FrhVlW0HCcsteiDtkF4MeUjX+J2yY6IZ4MeAVAdvVI7tvwTrznbc7
         Idcar9VMTKiAqdKl8/oD7tTVVwruSEjZspuJhg6d/1oWAlZXXV+gra5FAsw8eD5nQcwt
         1UwlJI/X75HZrRQVaBCYHcaEVS8PdgnLxdZQI66iOA7SDX/FAFc95g+bkV+EMFEyj2lz
         GJ7sXwbZZpXeCVZkZ7KPZq67UNpn1boW07QTS6Tfyt0C370Sci2AESaoL6p7c/h98/o7
         Kl1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VBI5Z4lqFsEwt9MJ58lTWIRZwBqKs61nj5JXtrL20wQ=;
        b=j2/uwGV2t+ZHvGBeYHAPC8on7IROOaqPv8MrF5FqBNniLdQyJ7FqakO3oPfjWXg8qC
         X6HR55ibQtkFydMjArErDiYiKS+Oq5UT6FA2nybSBWz5gIZQhWEbe9y4cjhyqJgnl8ki
         ZtNkgM0lW1VMLSivnpsEzK0/c/p7uej8BhrpfynfUNbXQUNkLzsGpu0DJnHOINIzH/xQ
         pxCJYmA0COWqHGEEsYrYAaUrBbrhrmxdZxwUQcqNSzlPIX7CFdo29zbT7jMToPYkN6zq
         cG6FA8O6X0uQqRt4x6dHKK2pjPCnYf5ORO2UAn4WcOTsoXGhkUQbTmhjZ7UYSEnjXhU8
         feAA==
X-Gm-Message-State: AOAM530ErcnlRcEKFCZIXxcRKGukOL9GSco7h6jGmJztCa5L/d8pH+gG
	bh31tvlIBy+7Lo+9+lGNr6uBGdXseUj1oA==
X-Google-Smtp-Source: 
 ABdhPJwRL+WY9UiP5w3odsvgtEK5RlP5WVfG6N7fcIQTg25V/yxk2xSbULo6AHsD6Hl8rNEs8JJWTQ==
X-Received: by 2002:a05:600c:21c1:: with SMTP id
 x1mr3532164wmj.59.1643294605173;
        Thu, 27 Jan 2022 06:43:25 -0800 (PST)
Received: from nereus.lab.linutronix.de. (b2b-109-90-143-203.unitymedia.biz.
 [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 l13sm6417669wmq.22.2022.01.27.06.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 06:43:24 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	denis@denix.org,
	adrian.freihofer@gmail.com
Subject: [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit: add license,
 readme and layer config.
Date: Thu, 27 Jan 2022 15:43:20 +0100
Message-Id: <20220127144323.3121475-1-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 14:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55990

Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 COPYING.MIT     | 17 +++++++++++++++++
 README          | 23 +++++++++++++++++++++++
 conf/layer.conf | 19 +++++++++++++++++++
 3 files changed, 59 insertions(+)
 create mode 100644 COPYING.MIT
 create mode 100644 README
 create mode 100644 conf/layer.conf

diff --git a/COPYING.MIT b/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy 
+of this software and associated documentation files (the "Software"), to deal 
+in the Software without restriction, including without limitation the rights 
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+copies of the Software, and to permit persons to whom the Software is 
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in 
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+THE SOFTWARE.
diff --git a/README b/README
new file mode 100644
index 0000000..5b22b72
--- /dev/null
+++ b/README
@@ -0,0 +1,23 @@
+"Mixin" layer for adding latest Go toolchain versions into the Yocto Project LTS.
+
+At the time Dunfell was released in April 2020, Go 1.14 was the latest version
+and officially Dunfell supports only that. This thin special-purpose mixin
+layer is meant to address this issue by backporting Go recipes from the master
+branch of openembedded-core.
+
+You can see what Go versions are provided by listing recipes-devtools/ content.
+
+Including the layer automatically picks up the latest Go version; different versions
+need to be set explicitly by adding the following line to your distro config 
+or local.conf:
+
+GOVERSION = "1.16%"
+
+Please note: enabling these newer Go versions makes docker from dunfell branch
+of meta-virtualization unbuildable as it is too old. If you need a working docker
+recipe, you can use the supplementary 'dunfell/docker' layer from this meta-lts-mixin
+repository.
+
+
+Maintainers:
+Alexander Kanavin <alex@linutronix.de>
diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..5f74224
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,19 @@
+# We have a conf and classes directory, append to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "lts-go-mixin"
+BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
+BBFILE_PRIORITY_lts-go-mixin = "6"
+
+LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
+
+LAYERDEPENDS_lts-go-mixin = " \
+    core \
+"
+
+GOVERSION ?= "1.17%"
+PREFERRED_PROVIDER_go-native = "go-binary-native"
+
-- 
2.20.1


