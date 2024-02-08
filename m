Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E41C4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 10:03:06 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.14582.1707386579314614347
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 02:03:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MHa+e5LM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40fd72f7125so13870905e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 02:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1707386577; x=1707991377; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pFnEmtkNYijn8l63/rxCG1sCKbdvAD2vb3hu0dybALA=;
        b=MHa+e5LMBrsUx0u0uzP8VZ8O891XvMHmtusSNgihpmrWnFPgqDYUpzYKrCOn/gYzOk
         MDhUNGmqdcgB+5Xnw8wlCWqGOfV7wZIpgAncgNUTirGz2KTAXd31bCSGsszbYgMsHGzx
         GBd1PXJlg0mbj0YTgtpBBPga6JKPVzoTpgs6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707386577; x=1707991377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pFnEmtkNYijn8l63/rxCG1sCKbdvAD2vb3hu0dybALA=;
        b=QuckvjV76M8opGugW2C7BEX6GkeIe3k+HiFvE03V222uikpBAgY6tXXr0exNNkZlxI
         EhKJl26DKhGvml2/hmPS0OQWW+PdwQA6alEGNXa2jZgACjfGzT0whKdFfogqzObqYyCh
         OGN3cCPPSxSMJTWt+na3QIOCta2oYZu7pmX2rRR4mivJuhO7B0mmzdwg/NewWQE7Uidg
         m98NR++GZ/Y4O+zYGKgrk4DdgT1h8xuZm0LnNS7OJexHroHVXxC9eBJ3ThH2L4rwsVue
         pVouc6e5oYZ11qdiZvT+KlfLaja/+9qhpVmPIlGTVBQ3F56utuQvF7sDPVMdmcU/oKy/
         NhwA==
X-Gm-Message-State: AOJu0YwrcP5Y2i40xdr9C3Y/NEam9+c9V/orurIylxZGhWdFKVe6gz0p
	euIOOGQS7pkzUfDn6vveLlJ/Rtbp9vBIUhtI3zEX+dI4kmV5BD+WtvJXda43Ey2K1b5G1O3mnAB
	D
X-Google-Smtp-Source: AGHT+IEs/lby7JpHouqNtboMHXfxgMQkjUuFg2xzPN/u2FHT780WI0hF+ECc5cQ7TY2rOgNb2SsGzg==
X-Received: by 2002:a05:600c:5109:b0:40e:ac4f:7156 with SMTP id o9-20020a05600c510900b0040eac4f7156mr6843235wms.5.1707386576918;
        Thu, 08 Feb 2024 02:02:56 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c14:ae3d:85df:fff])
        by smtp.gmail.com with ESMTPSA id fa8-20020a05600c518800b00410000a1a29sm1146606wmb.8.2024.02.08.02.02.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:02:56 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Add meta-exein compatibility testing
Date: Thu,  8 Feb 2024 10:02:55 +0000
Message-Id: <20240208100255.2805341-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 10:03:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62426

Add meta-exein yocto-check-layer testing. Due to HOSTTOOLS issues, we
need to had a horrible hack. v2 compatibility doesn't test for HOSTTOOLS
changes although perhaps the next version might.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json                              | 15 ++++++++++++++-
 scripts/exein-path-intercepts/clang      |  2 ++
 scripts/exein-path-intercepts/llvm-strip |  2 ++
 3 files changed, 18 insertions(+), 1 deletion(-)
 create mode 100755 scripts/exein-path-intercepts/clang
 create mode 100755 scripts/exein-path-intercepts/llvm-strip

diff --git a/config.json b/config.json
index 50a07f7..e8b51cd 100644
--- a/config.json
+++ b/config.json
@@ -1199,7 +1199,7 @@
             }
         },
         "check-layer-nightly" : {
-            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization", "meta-clang"],
+            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization", "meta-clang", "meta-exein"],
             "step1" : {
                 "shortname" : "Test meta-agl YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
@@ -1232,6 +1232,13 @@
             "step8" : {
                 "shortname" : "Test meta-clang YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-clang --no-auto-dependency"]
+            },
+            "step9" : {
+                "shortname" : "Test meta-exein YP Compatibility",
+                "extravars" : [
+                    "HOSTTOOLS:remove = 'clang llvm-strip'"
+                ],
+                "EXTRACMDS" : ["export PATH=$PATH:${SCRIPTSDIR}/exein-path-intercepts; yocto-check-layer-wrapper ../meta-exein --dependency ../meta-openembedded/meta-oe --no-auto-dependency"]
             }
         },
         "metrics" : {
@@ -1824,6 +1831,12 @@
             "revision" : "HEAD",
             "no-layer-add" : true
         },
+        "meta-exein" : {
+            "url" : "https://github.com/exein-io/meta-exein-official",
+            "branch" : "main",
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
         "auto-upgrade-helper" : {
             "url" : "git://git.yoctoproject.org/auto-upgrade-helper",
             "branch" : "master",
diff --git a/scripts/exein-path-intercepts/clang b/scripts/exein-path-intercepts/clang
new file mode 100755
index 0000000..ecdbef9
--- /dev/null
+++ b/scripts/exein-path-intercepts/clang
@@ -0,0 +1,2 @@
+#!/bin/sh
+exit 1
diff --git a/scripts/exein-path-intercepts/llvm-strip b/scripts/exein-path-intercepts/llvm-strip
new file mode 100755
index 0000000..ecdbef9
--- /dev/null
+++ b/scripts/exein-path-intercepts/llvm-strip
@@ -0,0 +1,2 @@
+#!/bin/sh
+exit 1
-- 
2.40.1


