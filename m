Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4E71CD3445
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:25:32 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3977.1778203526106112488
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:25:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=iMh11ICf;
 spf=pass (domain: konsulko.com, ip: 209.85.210.169, mailfrom: tim.orling@konsulko.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-835386ff122so1207039b3a.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203525; x=1778808325; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3mGQy1xFaFpNM7L42NkDqhikuDsQ9WFEZzYZmm7tPs0=;
        b=iMh11ICf5tAosQNKqgzCCkinqXTKsZY16wWUYkYr3wTFF9CHfBay//iAF7Xd9NfDnE
         hOvYCujzMjcwV1pRsuDNVGMD+gayxrAyJPeqkr9nuhctaHrUv4XaqaihVFm8k7Bh3sLy
         naypzxieWj83emIbZPvhMAOXGgfUhVW4BvGzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203525; x=1778808325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3mGQy1xFaFpNM7L42NkDqhikuDsQ9WFEZzYZmm7tPs0=;
        b=DhAcr4llAwuLtPqqaXVHW2VUdteeQ1wD38x14EOZQ8QB4HefPKSDSX/NQChbceUfGD
         GfoMzVUeJ8Ma9I0uj0hn6rtwEwxDwuStlhvFbJVMoIDTcdDeWEWI1r2vPdP2TcAgH1Jq
         aOG0NB4STBjfpjo7yBXU65AisbHgzvZEKOF/ipLfR9D/eGZs0J9q7uzjCqYJdFFWbWld
         573PFtO9K1sxgBKCTCMpkokqmpDqnJFwtWuBrwIM93Y0QehgGr0Poc4q4ieN9wR2a5U8
         f4B+iUDHz9naDQn1S+JOLQEIMXt8ADHKaY37ikVj1xtGH6t9GLQ6KsHz7htwUFKh7yM6
         wNew==
X-Forwarded-Encrypted: i=1; AFNElJ8HeS2vdaIA6c3K6CjDL+BSuwGrifwLjq49DL12f0+3xHAvbHGzNjkprkgI1rSb9Vtmf5eyTg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxNpxRVprtAjkmC0Pw3tlzstW27TVxB5aKNNtovmp9TQ9FnLOcg
	AMYOJd8JWHpQ4qtEEgHOf/0zJNvj/WB7fRl85aKcpiBc7pZIn26m2SR5sdlyRRGeDxI=
X-Gm-Gg: AeBDietBSu3tbBb6Am1XiMRCfahYiD0GwMsucwiQLJ4aTWaHXjLjWYhRpFpIseFOU+j
	db6aB7Kl3i7NQnxUts+l37dB6x204RoDPegZMLyGMIqRlyxQdmzKNYjxGhZCGVHtjY8v0c7Wmj3
	VCNr0XaUu8vnOdh0B1O88c3CqHQQp8xBhXNWZ4n3VpAvi/6RiLud59XWARyGWPXhzrwFbgovuID
	yEAQ41xRdckNm3Ji4E+pfWrMaOt5iwKb5HIC6Qj7Dy3YXn0JM9p/XGUPzX3qqQP98vDNv/NwJvO
	IcAD3jVsOtfCHT8u+9l0Qcli8eXxmxalBLCKVKxrwySQ7oa+BT6k6wS+43Il05FiUnGA5PraZx7
	wk3JYdo+6y+H/qlcxwfjV5ZYNeIO1nKIQkEiYsYDjtROK6grrYLzIkcYuslNOfe2Hf+/XB0ODmz
	Chsuzeo63kziWdsFzfb+gFm30IjkB7YMY4aXQ+pEtybf7vNay7s7inY6cXjn/jD5w/3Y3/ttYhu
	g==
X-Received: by 2002:a05:6a00:4503:b0:82f:8b20:9165 with SMTP id d2e1a72fcca58-83a5ea3ffafmr10303854b3a.44.1778203525498;
        Thu, 07 May 2026 18:25:25 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83967dbf0cesm12905933b3a.46.2026.05.07.18.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:25 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 3/4] config.py: add vcontainer-tests, vdkr-tests, vpdmn-tests builders
Date: Thu,  7 May 2026 18:25:11 -0700
Message-ID: <1842b2bb8bd1b7cc9b3bac7c5c8b3c40250281dd.1778202070.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202070.git.tim.orling@konsulko.com>
References: <cover.1778202070.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66499

From: Tim Orling <tim.orling@konsulko.com>

Register three builders that run the meta-virtualization pytest
suites against the SDK produced by vcontainer-tarball, so the test
coverage is exercised by the autobuilder without rebuilding
vcontainer-tarball for every run.

The -tests jobs need the same repo set as vcontainer-tarball
(baserepos plus meta-openembedded and meta-virtualization) so the
layer checkout on the worker matches what the SDK was built against,
and are tagged 'containers' for filtering alongside the other
container-related jobs.

AI-Generated: Claude Cowork Opus 4.7
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.py | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/config.py b/config.py
index e7f9619..4bd5819 100644
--- a/config.py
+++ b/config.py
@@ -37,6 +37,9 @@ buildertorepos = {
     "vcontainer-tarball": baserepos + ["meta-openembedded", "meta-virtualization"],
     "containers-meta-virt": baserepos + ["meta-openembedded", "meta-virtualization"],
     "containers-library": baserepos + ["meta-openembedded", "meta-virtualization", "meta-yocto-containers-demo"],
+    "vcontainer-tests": baserepos + ["meta-openembedded", "meta-virtualization"],
+    "vdkr-tests": baserepos + ["meta-openembedded", "meta-virtualization"],
+    "vpdmn-tests": baserepos + ["meta-openembedded", "meta-virtualization"],
     "default": baserepos
 }
 
@@ -168,6 +171,9 @@ builders_others = [
     "vcontainer-tarball",
     "containers-meta-virt",
     "containers-library",
+    "vcontainer-tests",
+    "vdkr-tests",
+    "vpdmn-tests",
 ] + old_arch_full
 
 subbuilders = list(set(trigger_builders_wait_quick + trigger_builders_wait_full + trigger_builders_wait_perf + builders_others))
@@ -337,4 +343,7 @@ builder_tags = {
     "vcontainer-tarball": ["containers"],
     "containers-meta-virt": ["containers"],
     "containers-library": ["containers"],
+    "vcontainer-tests": ["containers"],
+    "vdkr-tests": ["containers"],
+    "vpdmn-tests": ["containers"],
 }
-- 
2.43.0


