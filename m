Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8127C433FE
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 14:46:21 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web09.29050.1643294780600626722
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:46:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=U26ZLoO7;
 spf=pass (domain: gmail.com, ip: 209.85.128.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id r7so2098739wmq.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=APdWj1wfg9rwsNcR8gzZsViD0IRKraWqbCW8omE5IB0=;
        b=U26ZLoO7UwJMUP/zhqhIocElJQt2CiWQ+Ih5vwxmkXU+Z+Ep/Fqf1Z/xcPmUKsx+7F
         mPKxF/QufriLmd+FBZLH9F/nzVv1xZdssVhSw1UHKaJcgQZ/zG69LHZawd9QFO4z/vB6
         /nwLekSNpTSjw01wwJ355A9zDzCz6PHcAHpnlrgSjKx1zzxiw/H9QJzcLxartu4XfAd7
         NYoB/PAG91HJHCKs2DLjA+VxI665hB3mYeEU/QcOxxFZ2PIbjY84emctD+GkFsy/P4ZA
         MKm3qc80aUfDZ0YsEIb65cKlg7WDiskwEmzlG2yTVrQArJRiI1xT4VStNE4FnzP1XtSk
         lEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=APdWj1wfg9rwsNcR8gzZsViD0IRKraWqbCW8omE5IB0=;
        b=LfbzVcbpuDCdWG3VL4dgm+uOPy02h3SNpWD3sYyxG99Qcq7jm8yLxya4s4z33eXuoc
         7/cY4R1GHbu91bs9OZLF5tNXi/eqrZMDhtHykr2KxaCzEc82fvSjEzjzA3HD/7EsFqMf
         MJCVD0O/6g9XJm2Vw7Zuvab3G1wAfdNs/G2KQTqSNf74r6o3I5OlrvyRVY1bdRnvC5y0
         licROXjGjQoyhckpZzZgsGE3kdO0ZEQb+MIhlrH2fcoOnS83E0z36FR+pQTBinVX4N2Q
         ax5ZcgJPXi/EnZ8WXXdn8YjSR/Vpr196SNt/aa0NOhYbTNzKe828lfQEupICZD4S7sXU
         O+FA==
X-Gm-Message-State: AOAM533yGp7xeix6eAr2ZCgQkIwtWZyWjLXtepWRgWff1s2C/4RjByFA
	nKVi8EyvBC8XLiD+p+GX/zCBuFGVVFMljw==
X-Google-Smtp-Source: 
 ABdhPJyVb1y1tdqLKFrMLuOdfRz1bVlfvV/J1sgyJZ+6VBlitW3i90h1sUGqaEf2n5YMGV+WSEA1SQ==
X-Received: by 2002:a1c:cc05:: with SMTP id h5mr11936747wmb.32.1643294779110;
        Thu, 27 Jan 2022 06:46:19 -0800 (PST)
Received: from nereus.lab.linutronix.de. (b2b-109-90-143-203.unitymedia.biz.
 [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id u7sm5956175wml.7.2022.01.27.06.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 06:46:18 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	denis@denix.org,
	adrian.freihofer@gmail.com
Subject: [meta-lts-mixins][dunfell/docker PATCH 1/2] Initial commit: add
 license, readme, layer configuration.
Date: Thu, 27 Jan 2022 15:46:16 +0100
Message-Id: <20220127144617.3121871-1-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 14:46:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55994

Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 COPYING.MIT     | 17 +++++++++++++++++
 README          | 10 ++++++++++
 conf/layer.conf | 23 +++++++++++++++++++++++
 3 files changed, 50 insertions(+)
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
index 0000000..417038e
--- /dev/null
+++ b/README
@@ -0,0 +1,10 @@
+"Mixin" layer for adding latest Docker versions into the Yocto Project LTS.
+
+This is a supplementary layer to dunfell/go branch of meta-lts-mixins. As that
+layer updates go toolchain to newer versions, this renders the docker recipes
+from dunfell branch of meta-virtualization unbuildable. The purpose of this layer
+is to backport latest, compatible docker from meta-virtualization master to
+dunfell.
+
+Maintainers:
+Alexander Kanavin <alex@linutronix.de>
diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..9918c46
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,23 @@
+# We have a conf and classes directory, append to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "lts-docker-mixin"
+BBFILE_PATTERN_lts-docker-mixin := "^${LAYERDIR}/"
+BBFILE_PRIORITY_lts-docker-mixin = "6"
+
+LAYERSERIES_COMPAT_lts-docker-mixin = "dunfell"
+
+LAYERDEPENDS_lts-docker-mixin = " \
+    core \
+    openembedded-layer \
+    networking-layer \
+    meta-python \
+"
+
+PREFERRED_PROVIDER_virtual/runc ?= "runc-opencontainers"
+PREFERRED_PROVIDER_virtual/containerd ?= "containerd-opencontainers"
+PREFERRED_PROVIDER_virtual/docker ?= "docker-ce"
+
-- 
2.20.1


