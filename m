Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21477CD343F
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:13 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4002.1778203569878625689
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=BCyx1Sdo;
 spf=pass (domain: konsulko.com, ip: 209.85.210.172, mailfrom: tim.orling@konsulko.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-836ebdeb969so637039b3a.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203569; x=1778808369; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RevNAg63UntrgGhEbeJlSDWjtYKRFpzF9WJml6ixDsc=;
        b=BCyx1Sdow3bqtQRJNEXnheU/ueGpZpjHZHnFe7qcX20wVy2pfh2yH04doSXW/7jB42
         1mBo1wPiky1Re/C1n7O3HVOcj56J7vhZVjOudKdurvFtNHbNVUxE/p3e3oPX0tM6ylTK
         +x9Q5odjc/3PXN6XYTIYUfg5IKZ+yXyNBEnpg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203569; x=1778808369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RevNAg63UntrgGhEbeJlSDWjtYKRFpzF9WJml6ixDsc=;
        b=HvlDog9iHMuFwW5ok1XF3/kNA9aiaByrtBHOAPLGKM8Ykme1AtMIDMa14klvNlBfjC
         gxdK4wPrMG5WHQ7iuunOGpFB6qhcrR6YkGLILSu9Fh9UoQfcZLZ5H9KsgsyS2OnF2WAk
         NDm8rHJVAZ9N9NpUhdUxRp+OZwsAdKZrWzPEqI3uu/4UPxKKJ6D7GeJjE3atAmHA9vLw
         cHn/XOdzManQZTVxRPt60UPv1EFep6XVDihQi87+0bLUwaoIU2YnGa5cy5r++vw38zCB
         GsyL7waK8Jpx0UeZhe9uGmpEA0m3M2sxtJQC1U9SivOCtHjhClulu/iULQXAXyY2T5nQ
         h6Sw==
X-Forwarded-Encrypted: i=1; AFNElJ9lgeGIgwCw4L4S/2/9dPTEN7fbaH8snzwswQsJ6QMCi+q2MblHzBpzj2awDjff24L52MSuXg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyBTIeNoNEVCTNYhnytcSAyHQbaNDcLSYBuXGQJFnxBXfxSTZyt
	OH22LxDzoMBmY7MjP3pte1mQw4fJWUcr3Ulsj3ie8Vpwi8NaG7idIiBBE1AmFDRWqh4=
X-Gm-Gg: AeBDieugmJNdUtVLRDOVvBGVx4nwUK2mtVljo5Lq8jXehkY+CFKsQsVxtlOtraJY/R5
	P+fsSdRevnxFVJAKZmDb4ggNier1DBxhd9XBUfQlgW8ecyMra3Gfzhm/neTMG7p2epzXyxMXhW4
	UNTlnPclCXcnrpgepXmavsruHctD9f+mhtpHlrhPGwP8u9i7Z7uCr+bi8iPOHQZGghfE05r9zjK
	QnbFB4GA8C2s5y4GSFUNeLJDp+3GelO/uaMuXherzrIZ9m3V5AufwHuiTgICI5fzHJOuwFhVULv
	/xbH8cqd705GGTF8rXXSly5Bq3HRwT2sNIQ/6mpYGgidg1iBpUgjmM6W/F3yqHgGDXgeIBRzNR4
	555cDkB72nYajytajXPD6S0W6KHyC5yNsns7gT1L59oREWB1voh9XxpWCLlVkg+n2lYfQPZ5nJ9
	pSEfMO6A6Vop1NTM3b/1/PMbIROBgnDR1fLNu0M37T179HyBkzTk0hYjczcpmUjaw=
X-Received: by 2002:a05:6a00:1f17:b0:835:cc47:6fe3 with SMTP id d2e1a72fcca58-83a5e24b471mr9945775b3a.45.1778203569214;
        Thu, 07 May 2026 18:26:09 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-839682a52cesm9809465b3a.57.2026.05.07.18.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:08 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 06/11] config.json: add vcontainer-tarball build target
Date: Thu,  7 May 2026 18:25:35 -0700
Message-ID: <f76cfa3158594d6abef88eaea589b9e135158e9f.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66507

From: Tim Orling <tim.orling@konsulko.com>

Add the vcontainer-tarball build target which produces the
meta-virtualization SDK used by downstream container build/test
jobs. Modelled after the buildtools-tarball target.

The target uses EXTRACMDS to reset BBMULTICONFIG for the worker
shell, places the extravars in the per-step config, and includes
a publish-artefacts step so the resulting SDK tarball is staged
for reuse by container-tests and other consumers.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.json | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/config.json b/config.json
index ab0ad7c..9e6898d 100644
--- a/config.json
+++ b/config.json
@@ -1869,6 +1869,32 @@
         },
         "toaster" : {
             "EXTRACMDS" : ["${SCRIPTSDIR}/run-toaster-tests ${HELPERBUILDDIR} ${HELPERBUILDDIR}/../layers/bitbake"]
+        },
+        "vcontainer-tarball": {
+            "NEEDREPOS" : ["bitbake", "meta-openembedded", "meta-virtualization"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                "${BUILDDIR}/../meta-virtualization"
+            ],
+            "step1" : {
+                "shortname" : "Build vcontainer-tarballs",
+                "BBTARGETS" : "vcontainer-tarball",
+                "extravars" : [
+                    "DISTRO_FEATURES:append = ' virtualization vcontainer'",
+                    "BBMULTICONFIG = 'vruntime-aarch64 vruntime-x86-64'",
+                    "INIT_MANAGER = 'systemd'"
+                ],
+                "EXTRACMDS" : ["sed -i '/vruntime-aarch64 vruntime-x86-64/d' ${HELPERBUILDDIR}/conf/auto.conf"]
+            },
+            "step2" : {
+                "shortname" : "Publish vcontainer SDK for test reuse",
+                "EXTRAPLAINCMDS" : [
+                    "install -d ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest && install -m 0755 ${BUILDDIR}/tmp/deploy/sdk/vcontainer-standalone.sh ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh.new && mv -f ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh.new ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh"
+                ]
+            }
         }
     },
     "repo-defaults" : {
-- 
2.43.0


