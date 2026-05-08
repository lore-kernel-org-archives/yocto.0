Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D656CD37AD
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:13 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3992.1778203563971640460
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=OZL7xOcF;
 spf=pass (domain: konsulko.com, ip: 209.85.214.176, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ad9f316d68so7269205ad.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203563; x=1778808363; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dGpJGGdx2pP961hlODhNEoWrZCG6FZrq0blRiEQh8qQ=;
        b=OZL7xOcFm7X8uKQG+mmrA4vhNH35h2jHUQso/9cKHFpYHaKYOiCw+IK7IaRHen/hqT
         Zfg3dE//vyVH7wSaw7Y9Lx/lPaJSP0HCJK3s/BT/C/PkZPsBAvw+Ur3vukOt4LPI0SE7
         YfMNyqS8RF/7itS6mp0lTKb/288cUDXd0opM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203563; x=1778808363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dGpJGGdx2pP961hlODhNEoWrZCG6FZrq0blRiEQh8qQ=;
        b=RCnN+9twY3c9hJa6lq3ja6io0Ol5ug5AZuZUeQ6eXiiYe9ZlTyf4UvHcTikVwDG2cZ
         YLubxhpW6h9hdMD0QttysOfiYCL191hh+SYmyqZp/2a74HnOqFed/EcXVkZcU3P6Qzxm
         vU2yEnWvUJCT4ehRdsNXjhuP/eyDm6EUnO1FuxHAz3ZgVhOD/FGVoo3rVOBgHrdLEjut
         HWSqzeJ5SK531kdVBpJ7qvK/QaAkq/FCwFgSb0G8h2B1jhMoBBPf0nrZ3aUpqCPYBqan
         UnKG4gPPsURR/1mlsu89aP+G1be4AZX3YDAC2OC+w8XVcwxCWS7ny+Gk3vsHo+cED4L/
         GIQw==
X-Forwarded-Encrypted: i=1; AFNElJ+SRuTnlKf5CkGyMny9gvQmXMQJS6jJmXJyf91/7eExojeoeazP1/hMJBPzqPRbgcYjBXtrEg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwxZo4TwtZzQzZPVefODM1kO9+8s1Roj0LygAPPKqckjRMWDjmV
	6jsl2iToGp4VOdQ6aRvg7BmH3lV0VAZtrTUkwsCk46jmS/4VMvzXCaAAmjuyxDh4R/o=
X-Gm-Gg: Acq92OHNNK8aK3Irj28FnHZczkooPVAQBD5yljA915y0MMoAF31A+khMJeMEOf8f/pC
	G1Mx5A61+PbB3AD4NsAxXmrZ3qfhhifQhasHb3Zb8aTvvm2GvmRocebnol5fYyGKG/1Dqqoyb1j
	dK7/nX/FYTnwDCzqWhMYtlAJ7YVfRQ9RkfXo0T07wpRtAGqf8+OokS++BjbxkmLoo9hbnnBbuNK
	LPxQxFiP6kjvytLYrmT13jlL4x2P+4j1Poi/wWJFJnRRJn+VE3uXscfvZQA0vfiTF81wv7LgLc7
	p8HR0VHJnv4kRUabQiHY2pOtk9qcTcpvWppzPIQsAsj4RiwTBI4gh5mlwnijtb7xgVDaEy6zdFF
	28JkZLvSwa6jscCOdaf/qszCOVECFYy/nR9T9njkLvi1Jo+n71wtlrhwpOIKDbPGkj9rlwtg1gY
	TRfkCOzE8AS8GSLkehj1ga8bSmksJLwrBa+E3Ua4e0bJ9cA22xhS8S8YtJZPNrzfM=
X-Received: by 2002:a17:903:1b50:b0:2b0:59c4:e9dc with SMTP id d9443c01a7336-2ba793aef26mr105362495ad.22.1778203563329;
        Thu, 07 May 2026 18:26:03 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d271b7sm1309205ad.14.2026.05.07.18.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:03 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 03/11] config.json: add sha256sum for BUILDTOOLS URLs
Date: Thu,  7 May 2026 18:25:32 -0700
Message-ID: <2ca072fcdf500ca956d45749f302518e17f7d3b8.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66504

From: Tim Orling <tim.orling@konsulko.com>

setup_tools_tarball() now checks the sha256sum of cached tools tarballs
to determine if an update is available and needs to be re-downloaded.

To prevent unnecessary downloads, add ;sha256= to the BUILDTOOLS URLs.

extratools/EXTRATOOLS_URL uses the same utils.setup_tools_tarball(), so
it also needs the ;sha256=.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.json | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/config.json b/config.json
index f0e220e..8d42bbe 100644
--- a/config.json
+++ b/config.json
@@ -7,10 +7,10 @@
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
     "BUILD_HISTORY_FORKPUSH" : {"openembedded-core-contrib:ross/mut" : "openembedded-core:master", "openembedded-core-contrib:abelloni/master-next": "openembedded-core:master", "openembedded-core:master-next" : "openembedded-core:master"},
 
-    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-5.1.sh",
-    "BUILDTOOLS_ARM_URL" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2/buildtools/aarch64-buildtools-extended-nativesdk-standalone-5.1.sh",
-    "BUILDTOOLS_MAKE_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.4/buildtools/x86_64-buildtools-make-nativesdk-standalone-5.0.4.sh",
-    "EXTRATOOLS_URL" : "https://downloads.yoctoproject.org/tools/buildtools/x86_64-buildtools-imagemagick-nativesdk-standalone-4.3+snapshot-5f2ba20f203114db9a3b11264467f8c23a05041d.sh",
+    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-5.1.sh;sha256=5af9d92898af17fcc2fca4d07607a59f41b1c39a0a4ff058f64d834b98ec7fd5",
+    "BUILDTOOLS_ARM_URL" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2/buildtools/aarch64-buildtools-extended-nativesdk-standalone-5.1.sh;sha256=8074d582a60a5135fd5606b8326e749185d26f51aca27570447831310bcac187",
+    "BUILDTOOLS_MAKE_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.4/buildtools/x86_64-buildtools-make-nativesdk-standalone-5.0.4.sh;sha256=2eb7a6c013113f4fdb87e800167606dc13af1bd8bbc1c9e2443b7be37fefd124",
+    "EXTRATOOLS_URL" : "https://downloads.yoctoproject.org/tools/buildtools/x86_64-buildtools-imagemagick-nativesdk-standalone-4.3+snapshot-5f2ba20f203114db9a3b11264467f8c23a05041d.sh;sha256=9cbff3a7cf524bdfa7779dce8afaf3453114d8017918d2927f723ea38a36ebdc",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.43.0


