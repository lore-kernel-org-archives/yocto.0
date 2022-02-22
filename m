Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6FB5C433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 15:20:26 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web12.13826.1645543225874753440
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=MfgL3xsE;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.178,
 mailfrom: steve@sakoman.com)
Received: by mail-pl1-f178.google.com with SMTP id m11so12328958pls.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4N8AeUFkcogqIg0cvxLzlPP19VKpa6YJ3X96GrOuYPo=;
        b=MfgL3xsENAHRAhvzazB4zn4KNI5PyLVQGuqmCaETvWy8z5Z07okbor8nh0XYk1VCjW
         C6vlc3qap1pdt9kZnJtBy6Df6okqOWU8rCNcYmv3F3ygOsxANFSizJF+dCpk4gSExpgK
         t4Hou4FsvjBEabfNRFDi64YiLzkoygYKnTEyO4X1/cr6ddbNd73cKla7e0AizfOvI41F
         hVOYxapmpFoyiAkyg6M0wkmdnfC+wRIc9+403JFdAYKKPBTibV4R9v/WzcjEzq7Hnya2
         4Po1Aj4AusUXtpql4DGceyzoXRH2ZVhZ9og7DuddQsTV91bezGZKDI3ZcKx2CnN5/4Yf
         CMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4N8AeUFkcogqIg0cvxLzlPP19VKpa6YJ3X96GrOuYPo=;
        b=JWsfUfeTGa+7exiqceZ1FcAVrK6cy9APvDAW0o6hO44GmoTU2BJ+zb0THgfTYzxVcn
         lApF5jj47LonsmaTywEieb/WsnOoZ2wmjSl/ZlKPVn7Nl/ZT9gmeGTihihgJI2ZZBUwv
         ccMyO2AqqW/PKRt5mSOVhgMijUSS7zJNnQeuZqE1qCaaLXhm3I2J+6G0wgfdkIhGMi0u
         bL685jJpeV3YAsGddR1CMOpORlRN9P9SdmLLMTUspsR+fXqNUM5dZ1SPiloSzkSdpF0C
         CvDZlMS2jz8gDL2I8z/8FjXC/adZgg2Uic03FvDVheGS8VU1gb4fUBKEGgipHRrpF+Sp
         PCaQ==
X-Gm-Message-State: AOAM5334ueCqpWd4WNn8HDMEM8Y0MA1xyZhy/mD44Sql3cnRH6e4NKrO
	h2vskcOkbAD6MJ+2MYPazab6K3CLlXJVgeXu
X-Google-Smtp-Source: 
 ABdhPJztQlxdD99diXx+a2MbKRM3ZKyqYOy9dbE3MH/J3pv976Cx2YssXwMmauLanw/oSVFMC+osLQ==
X-Received: by 2002:a17:90b:3693:b0:1bc:89f0:e38f with SMTP id
 mj19-20020a17090b369300b001bc89f0e38fmr905546pjb.171.1645543224456;
        Tue, 22 Feb 2022 07:20:24 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 i9sm3118160pjd.11.2022.02.22.07.20.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 07:20:23 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/3] Patch review
Date: Tue, 22 Feb 2022 05:20:11 -1000
Message-Id: <cover.1645543004.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 15:20:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56241

I'm seeing intermittent timeout errors when starting an a-full build:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3267

This set of patches from master seems to fix the issue.

The following changes since commit fe26983bb39a6a51eea3c0fe87dbc6a016abd85d:

  config.json: Add other repo defaults to fix check-layer-nightly for meta-aws (2022-01-07 15:32:16 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (3):
  scripts/prepare-shared-repos: Use tmpfs for speed
  prepare-shared-repos: Make it clear when rsync starts in logs
  shared-repos: Use tar instead of rsync for speed

 scripts/prepare-shared-repos | 5 +++--
 scripts/send-qa-email        | 6 ++++--
 scripts/shared-repo-unpack   | 9 ++++++---
 3 files changed, 13 insertions(+), 7 deletions(-)

-- 
2.25.1


