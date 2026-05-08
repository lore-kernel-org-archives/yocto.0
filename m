Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 245DFCD3445
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:03 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3989.1778203562011724851
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Ju+Ek9eG;
 spf=pass (domain: konsulko.com, ip: 209.85.216.41, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-36505450d0dso1564297a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203561; x=1778808361; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nh4bcp7Dv4HSkseIi709lWKX5+tSq1zA9PLL4tWYeAM=;
        b=Ju+Ek9eGOnIkyz++6ppsCpm64GBuCNpZqjqkaHvxU8vR0ViF5HUjvIRsyufNr7UX+i
         m4Suvx5Yx1ytWguxnrT4zUVkNdAv0E7alNwj6zil1j21eCvEK6EMElEK03XP9eXVum7y
         jeIEetYiqSSdBuYc4DQiVg7owENSkV4a9zFqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203561; x=1778808361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nh4bcp7Dv4HSkseIi709lWKX5+tSq1zA9PLL4tWYeAM=;
        b=IQfsdqy9SYI3F90FoNYdPMAfZbCXpYClcTKYReD3lkYApmkvLtCgr2oei0Z6VV51f2
         lAjKVm718YRTEjjQSlkeioQXTtqFXNMnxHwvfuPpeaPYL/edjBxcrTKpNeOiu3A8jNxH
         FQPiIl5pcsEcKcDWUPpz/v0j2e3VotKpdTlm/fl/8VO3mGg1CpLyYfwjYLPUdu45/vf1
         Xp7qZSp9opNKKdQaJIFdvqJihs2+o96/3Xfpu6v/cSf21LEuJkXXn0NjhVeb27ZILty6
         u8NJ7GI8WHdWGhxKT0sMe+421DEaUy9J0kPydNTx1DaCDDhsdFTcesoPPj2TGDuVNdqP
         PISg==
X-Forwarded-Encrypted: i=1; AFNElJ+G9z6bdfhsvtY/xnEpJQY0mqeQ7MGH4lLIQb7t3oUM3ubjXxdkIwSUe2b1FW6q34d+uD7Czw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxgeWVVcf69aoo6R20qUFQSv9Q9xVJCC0gxKsl/7rSeSqXr9zyC
	X82MjK/yrRL0bmV8zOb4jt+3hGQIfhhsW50xjdIxLlO+W5pyiISEdbhlK/iKhAXHV2YGZFGOo12
	1+6ic
X-Gm-Gg: Acq92OGTTYRwuexpfJ0V5+/QfrsO2jvXZhb1PAGBZovMOrq3wy4/KUTgduKJtyq/4wA
	OQrdo7nDYF5w4s9YgCVKhcgb4zfT7T5836umzpMRKMa+nJc3zDqTZb80eZejW1hGmH+rvPS5jCT
	waYlr44/o57DMV1zoAzjAURnay4JTj2gyRqRJGEQZ+7ZC19WELF/lTkQuiMtaSvkj1761zOtuEw
	FHLY8PdJin9uilvEvH+lEIEA5yxYscbFFPaSpDeLxd+rDOQeaDm+z0nlVffiNS8NeTnuH6iCMmW
	amVNTwmuTBKSTTz5Ej9uweAuHdy7R0D6gpvLBk64OyXFuLrdjKuPnJvFpu60mBhfUFBZyNKLHtC
	xe28o6sp0k2mWamIMQmE4HOauFHZAWRGlIvbVhTCpopENrFsMGd7w29YH7kLcJbRoO1ptmp23Ja
	uBAaXMfeD2qye53akDzrYExu1+txMMDG3hZxM1+gjvX0AjPlBkVgzVVqe7nrJfR6E=
X-Received: by 2002:a17:90b:2703:b0:35d:a861:36de with SMTP id 98e67ed59e1d1-365ac769f1cmr10931551a91.24.1778203561445;
        Thu, 07 May 2026 18:26:01 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d405adsm1316635ad.28.2026.05.07.18.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:01 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 02/11] scripts/utils: warn and force re-download for HTTPS sources without SHA256
Date: Thu,  7 May 2026 18:25:31 -0700
Message-ID: <cb29a66ef6906c4bf576afbaf6cc42b41815d535.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66503

From: Tim Orling <tim.orling@konsulko.com>

Without a SHA256 checksum there is no way to verify that a cached HTTPS
download is still current. Rather than silently reusing a potentially
stale copy, delete the cached file and force a re-download each run,
and emit a clear WARNING telling the operator how to avoid the overhead
(by appending ;sha256=<hash> to the URL in their config).

AI-Generated: Claude Cowork Sonnet 4.6
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 scripts/utils.py | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 87acad6..ea905d9 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -505,6 +505,14 @@ def setup_tools_tarball(ourconfig, btdir, bttarball, name="buildtools"):
                         # that a freshly-published tarball is always picked up.
                         if os.path.getmtime(bttarball) > os.path.getmtime(btdlpath):
                             os.unlink(btdlpath)
+                    elif not bttarball.startswith("/") and os.path.exists(btdlpath):
+                        # HTTPS/FTP source with no SHA256: there is no way to
+                        # verify the cached copy is current, so force a
+                        # re-download every run.  Add a sha256=<hash> suffix to
+                        # the URL in your config to avoid this.
+                        print("WARNING: no SHA256 provided for %s source %s; "
+                              "forcing re-download to avoid using a stale cached copy"
+                              % (name, bttarball))
                         os.unlink(btdlpath)
                     if not os.path.exists(btdlpath):
                         if bttarball.startswith("/"):
-- 
2.43.0


