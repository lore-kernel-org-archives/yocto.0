Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBDD4C761A6
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:19 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.59664.1680279677738163944
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=AiAHVLE7;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id l37so13226037wms.2
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279676; x=1682871676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D1IiSk+1IwflP7HZ70o8ScO08icJlSeJ8oPHYhXs3qM=;
        b=AiAHVLE7zZ6L3xSVbdlbDxTCtE+thgljOolTyD/e6GfgCrKbP8hSH/faNPiAEGDsir
         Vvx8vokdETq8aNxleHLY0yOCYloXY42PG79hDe7oEOwwE8OoocP0G7nJm9gD5jmpriYF
         NNKEACGOvFf00heDejV8UKCqRql9i8AWInRnX8D1RfnzFtXE9U8/IKEZ/deZ/W0zzMWN
         L420apMhEemp6XMPH1jgRoCcc4eL9pV6sGWg+ftX08x9J0FQ69bwSnsDtl+fu7Eir/+q
         H/DQu8lnGxviBkASMQvA80l8XEB2ahOp7VPViER0CHEpQo4nFMN9peiscQ88nf0cYJNj
         dWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279676; x=1682871676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1IiSk+1IwflP7HZ70o8ScO08icJlSeJ8oPHYhXs3qM=;
        b=G7HnPuSeUK8e5k7SfP82SbS+Jvx/YbBxwDy0Dmx8wjqgCQhCna2J0Bu4kywED+/Ikv
         LHz8OEEAciHncSddk4g8ZJw+qQr6yJhWXslMiEE/XkNwotAinVcBKrtF43mlbuUM73dx
         Kqz39d3gRwbld9n+l2JtqihIWvN8SLAG+YO7wm5k28L7RDJ/pTUIk3qz3mEkHNfBrpxy
         qUx+wy7xLEzr3ybngl0SyoRUcpkPNqWNby6IyRZ3yrCVWA72/w1aRBo6wEi4mQSLC2zt
         58y1RnWUAFMD9mYdL+JpjKAs8ZNuRJR7KWbIatJMt+SAGN2YAprKvDz5OF0QER/aJEmy
         /+GA==
X-Gm-Message-State: AO0yUKU53ES7GyWWne4ttMLUV4PlmVCa8hZ/tfDRgPx7r37FngskXee9
	OnXOyknW5ZvMtQE2Nd5j5uOrwiuTSdf68A==
X-Google-Smtp-Source: AK7set9yVPBOjHsWxNKZzEhJ2paWEdbysOIvBSj0aPJzujWvcIpkbn1Kx35nkIFwUCyoDupPHVF08A==
X-Received: by 2002:a05:600c:2254:b0:3df:e41f:8396 with SMTP id a20-20020a05600c225400b003dfe41f8396mr20351847wmm.37.1680279675498;
        Fri, 31 Mar 2023 09:21:15 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:14 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Alexander Kanavin <alex@linutronix.de>,
	Martin Kaistra <martin.kaistra@linutronix.de>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 01/16] Initial commit: add license, readme and layer config.
Date: Fri, 31 Mar 2023 16:20:27 +0000
Message-Id: <20230331162042.1801766-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59570

From: Alexander Kanavin <alex@linutronix.de>

Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
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
2.34.1


