Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41389CD37A7
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:13 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4003.1778203571771036553
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=jgOkQ11m;
 spf=pass (domain: konsulko.com, ip: 209.85.216.48, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-36627a0ea23so496489a91.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203571; x=1778808371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H9NJtCAEJvuu08gLcRGkO7F1iIExljVavKS4xNeQ7io=;
        b=jgOkQ11mqYe5TjAGethMekhoRk5BRqqYw6hSClea/Oys2o6lEzxSJwAp6NBtLWIiYE
         5YW6NVkmj0rvhZElXltPc5KPZXCYacOhq8Zs26m6FMkOV41/hzYthLIOAhHXGdrnExr4
         dD71mswb4KNYlI4haFhgBWEbo3s3tv6qXmD/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203571; x=1778808371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H9NJtCAEJvuu08gLcRGkO7F1iIExljVavKS4xNeQ7io=;
        b=oqPyyCU3U1F3MBRIOyrjSK5v4oFstxK7LeL8SamGiphrjtxbI5t/Yr13Fz9gKmHk19
         EGx5N2tUUHsDOumvXBZHU7GJ4acejRXUolQDUJBRP2gxQiFJPeiIJHjbgdx4awjjsTiv
         5Vmm9iZ6XEcdjgHSBb+BgCHrk+TI9N/sM2wAE4w6SQmeX3Fedw3HFgbFG/vc8IvIDyZT
         2rzo9T9JhBq3cGuZZDTEFxdhHv1BzQjlBLIlqPnmIDxIvQ/SaBmQ43ZDdkFOnneRu22/
         rkye2udw6SEOwizr0CEe32M27jZW3uOx1c1VdE6vV/XbmNteJ6667iWFbI7e/73Xz1qi
         VAkw==
X-Forwarded-Encrypted: i=1; AFNElJ8dLyTmmnKIOrES54bCduBWpKx8LJ9f/e44P0MIwsZAlwnVnYs0UhxtcZPfmOe+nyQKoaqq8A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwYEs+dkglh7ZEupYI+JKkfkF3AL+cltTCbUpv1z1EHwXWNdgGG
	JOky+qzj6XtDnrM3M6sw4vLGFPm6PW+KgAxLKCe0yv90fofz96qXlQ77HlnnAS2fdWM6pRV36Bj
	imxd3
X-Gm-Gg: Acq92OFVGShxhYzKrv8OZlTPS2Gp9wljidi/2lXQL4NtDv6TzoBXUG6S2AvAl+YjoXp
	UG22ejjtI4pMYNB5Car//Q72kc02uwPV6afjMRrD6JXEAzRY8qFmjdzqmr6+393zAQZNJ7fWsFv
	sdQ+bBXWhJf5oq/P++9ozJILztv7p6BG6fY0VGWatv3TEX9zKdrgZxEQTcDkZQBmtTt4w/1WTn0
	UgVF475f8TdgEj+xlv/NEePDgSQ1hcOxVNOIaeDUkv4t3NpT4qs32gHzK2rpPtUzx7lkNOYAcBy
	osLBXtjXK6E5nmkUMxYQNZRWJkeiagHI/VluALNVMy3DsH6Ft5d5vtYJsKdj/U3eZ0V6gnZxqow
	flx6xfK6fIxclBSt8UmqVHxLstcaFmVjCHgmICbNBNnaZHE4UdF9FZ1Cb/OkCVs172HzPDE6VQE
	CmfZfkGOaruhyolnJ5GLiQSOXCKkuoM5NKuMsn1eqAI94TVz2F/oUUHj1BG3Dfn43nzqAo4L9LM
	Q==
X-Received: by 2002:a17:90b:2884:b0:366:159a:c1ba with SMTP id 98e67ed59e1d1-3664c8db9acmr758759a91.3.1778203571173;
        Thu, 07 May 2026 18:26:11 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3664db067d5sm145304a91.10.2026.05.07.18.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:10 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 07/11] config.json: add 'containers-' build jobs
Date: Thu,  7 May 2026 18:25:36 -0700
Message-ID: <1c444ecb2272a384e77a786f7ca32767f791ce34.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66508

From: Tim Orling <tim.orling@konsulko.com>

Add 'containers-' build jobs that build container images on top
of the vcontainer-tarball SDK:

  * containers-meta-virt: the original app-container-* images that
    ship in meta-virtualization itself (e.g. app-container-curl).
  * containers-library: a layer for additional images modelled
    after docker.io/library/*, sourced from meta-yocto-containers-demo

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.json | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/config.json b/config.json
index 9e6898d..86c1ffb 100644
--- a/config.json
+++ b/config.json
@@ -1895,6 +1895,49 @@
                     "install -d ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest && install -m 0755 ${BUILDDIR}/tmp/deploy/sdk/vcontainer-standalone.sh ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh.new && mv -f ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh.new ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh"
                 ]
             }
+        },
+        "containers-meta-virt": {
+            "NEEDREPOS" : ["bitbake", "meta-openembedded", "meta-virtualization"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                "${BUILDDIR}/../meta-virtualization"
+            ],
+            "step1" : {
+                "shortname" : "Build 'base' container",
+                "BBTARGETS" : "container-base",
+                "extravars" : [
+                    "DISTRO_FEATURES:append = ' virtualization vcontainer'"
+                ]
+            },
+            "step2" : {
+                "shortname" : "Build 'curl' container",
+                "BBTARGETS" : "app-container-curl",
+                "extravars" : [
+                    "DISTRO_FEATURES:append = ' virtualization vcontainer'"
+                ]
+            }
+        },
+        "containers-library": {
+            "NEEDREPOS" : ["bitbake", "meta-openembedded", "meta-virtualization", "meta-yocto-containers-demo"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                "${BUILDDIR}/../meta-openembedded/meta-webserver",
+                "${BUILDDIR}/../meta-virtualization",
+                "${BUILDDIR}/../meta-yocto-containers-demo"
+            ],
+            "extravars" : [
+                "DISTRO_FEATURES:append = ' virtualization vcontainer'"
+            ],
+            "step1" : {
+                "shortname" : "Build 'python' container",
+                "BBTARGETS" : "app-container-python"
+            }
         }
     },
     "repo-defaults" : {
@@ -2018,6 +2061,12 @@
             "revision" : "HEAD",
             "no-layer-add" : true
         },
+        "meta-yocto-containers-demo" : {
+            "url" : "https://github.com/moto-timo/meta-yocto-containers-demo.git",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
         "auto-upgrade-helper" : {
             "url" : "git://git.yoctoproject.org/auto-upgrade-helper",
             "branch" : "master",
-- 
2.43.0


