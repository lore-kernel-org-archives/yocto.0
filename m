Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25331CD343F
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:25:23 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3972.1778203519936924623
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:25:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=aqbzONuv;
 spf=pass (domain: konsulko.com, ip: 209.85.216.50, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-36643b96b99so408455a91.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203519; x=1778808319; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jbmfj10r2FcEmyyBMaXxvJEJFQsVeTvDHQIU9+bPbzY=;
        b=aqbzONuvuJODav1JD5P6DclhFLOXdjRIOFRA+lbQLB7gTpkyqzcIuJPnMBpuhIUOei
         odocPQ08cAjzTs5ftFeIdlUIBHEKG13D7A1cIaog46G1K+gIL2Cei1uETh6w78eRgzA+
         m20XgGEff8tOxfZcT/8V6kUw02YSrLNy0Emqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203519; x=1778808319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jbmfj10r2FcEmyyBMaXxvJEJFQsVeTvDHQIU9+bPbzY=;
        b=UtlwY7rx+z7LzgWLTGt3aBAyWBmnqdZ1+xTo28UMWBsEoXMXCXcjppgk90EeG7B2uR
         /p2UJqzUYmZnr3wbmJtcUGjG/PexELdsEMfKTpAAgH3iGCczc3SHDZuTWXP4bnlCQSmP
         eKFutoPvumxCAFjU0sMNaPUTvNLujUz/FmMEEiex896feQ9RUcS5DfC0/aiqLOcTN5LM
         XSj7mEYSSoKgpyYlxp89Sxu+7Y/hR0odaHs70y4arpRP0ZLYeHdPeNUKCTWeGy4N5tim
         Zz9hNxWMyyZsulX5yFLUFAX8DnkOAINe/q7h1btg9fPvmbOEWuQCmVZe+i1su79ybwkk
         ohCw==
X-Forwarded-Encrypted: i=1; AFNElJ8HY3FcUdAw8Ex/Gn9PGJwA24jAqhyZhwZ8KwOW8PKqxSlMnQ7HYdOq0HF3cNXZAXFEbtJwgg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxekBQdJi4tuxSHzCiWFuNJ1qdy/OpXJMzD3muJ3VsjzqE9JXa0
	6zcKkzNRe3bp/Vtx3G3lGaakhwkPNae6swvw6JRPEiA8LOEXPrNNggbGWw9hMW66SmyTLGnh2bx
	wpoJ8
X-Gm-Gg: Acq92OG9VglQQGCslRMMy4hdOoUw2cZ+KFrUy7VoLiztv6wAllK7YCAa1NeScHuv//P
	ZQlz/Naxzet+KRsNtK58fPJm4lEmfOjkBs8fPYjgmdLLL4lrNG4kfJPU20GWPi+kXWowqn7jm9M
	bXbXS6Zp+RGzhwAF/n2yFtrnWhEKaKCVgbGT905JBCOBtVZVtuu+o4gCqH2HXkq7gBvAt67lxiO
	KWo0v/6t9ii3GW/e92r6IXIa1usmUVWfXORpqZDDhUybkvohRTtrrCr2DHBHxdhb/gGbcQY3zzs
	qD0KcPltcbM2tU9/BuXuAgF1y5MUs/v2oxe1CY+DuzVRk0FUF3A0bk9NECOohcnsus7J4Y/IqAm
	2KFq+tfKezgJuIGP0zHmqTkL8A8NN874j3NGD5yd63rkd2Hwcv0+j9ZH6ky1U2pwnNG66SJ2LKO
	NwWjnrCRb+AixyQGb30QaoyHeIYVt98NlOzaclKhMQ0j3o1gV1LKVtbPk1pgY0O+s=
X-Received: by 2002:a17:90b:578d:b0:35f:b5df:450 with SMTP id 98e67ed59e1d1-365ac2807f0mr10156509a91.19.1778203519173;
        Thu, 07 May 2026 18:25:19 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3664db1cd21sm136057a91.14.2026.05.07.18.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:18 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 0/4] Implement 'containers' jobs
Date: Thu,  7 May 2026 18:25:08 -0700
Message-ID: <cover.1778202070.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:25:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66496

From: Tim Orling <tim.orling@konsulko.com>

This series contains the 'yocto-autobuilder2' patches to enable:

* building the 'vcontainer-tarball'
* building and pushing containers from:
  - meta-virtualization
  - meta-yocto-containers-demo
* testing the 'vcontainer-tarball'
  - vcontainer-tests
  - vdkr-tests
  - vpdmn-tests
* gating pushing of containers with push_containers property,
  similar to the "Do you want to deploy artefacts?" boolean.

The jobs are associated with a 'containers' tag, so they will be
grouped in the Yocto console view.

The following changes since commit 80ce858b499f7c91cd7a2a0990f6e28e879f0fca:

  schedulers: Add wrynose scheduled jobs (2026-04-23 22:44:34 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/yocto-autobuilder2 contrib/timo/containers-upstream
  https://git.yoctoproject.org/yocto-autobuilder2/log/?h=contrib/timo/containers-upstream

for you to fetch changes up to 9ed602f7dfbc72d96966167a1114dd23aa8b3ca6:

  schedulers,builders: add push_containers property (2026-05-07 17:22:40 -0700)

----------------------------------------------------------------

Tim Orling (4):
  config.py: add vcontainers-tarball; containers tag
  config.py: add containers-meta-virt;-library jobs
  config.py: add vcontainer-tests, vdkr-tests, vpdmn-tests builders
  schedulers,builders: add push_containers property

 builders.py   |  2 ++
 config.py     | 23 ++++++++++++++++++++++-
 schedulers.py |  9 +++++++++
 3 files changed, 33 insertions(+), 1 deletion(-)

-- 
2.43.0


