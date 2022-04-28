Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC434C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 13:53:47 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web09.10628.1651154018781961721
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:53:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=S/ZsqLG3;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.53,
 mailfrom: steve@sakoman.com)
Received: by mail-pj1-f53.google.com with SMTP id r9so4369856pjo.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tZiv6QYTF+7yTKG8rcF8efWtuS3M8xsPODxJKCM7eu8=;
        b=S/ZsqLG3eNX2vtbkG9rK+qT//12rT6oV9ApAONgeJ5XUHqx0pwwor/oodW+9pURp7R
         TqkO6Ut91doCcao+IdAGJz7SeskLLn86Zb9SxaJbjEt5tYHHi4lBPKkc0yMj9ddfosMQ
         m/XBopfPlerEZAO2N5tDM/5dMJb8ytlL+0qvLBgJdkRh/VOq/P3Hx5n2mpC7o9EL/UC4
         v66Ree8s/zy6caCDA/pwZ9+jFPYeyUqqLDThja0J7ZvvqWILKq1kMnkE7gzwL4639Zmg
         MlQ9X/Gi3uolBW2n3/Vpx77IxVt/PJ3Cei5dubvsP1hW2xNo3IPIL++xgBPJHEZCPITQ
         ME7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tZiv6QYTF+7yTKG8rcF8efWtuS3M8xsPODxJKCM7eu8=;
        b=osEnQD/yHtHOrNPRMKXLASc0nwWaw5zhpGK+3sP5n5dzhMu7CCwP6JqhMqCa7QdSHD
         Afouo/m0j7uQYJGWUOSjk3CubvhWxfltpkfmdaN/dWvGGN8T+1zGILZO66QyI+A9PVFt
         y+saADF3xNP2r25vrI7pLu/5iwZ0dsiIyH2giWptvxxXL8rafqn6VaX8HopUNKUdLCtI
         7s7mIFuDRdDQ4W1nM2ENvwxjkk94NZfVmGxSTMk1nUvRZvTXTGkHzLHYRBSTfrQ17YBn
         W+EcJS/nNZigvClOSFEcdsR5MoQBnJSKL06+gCH7awHttMiqxRWa+bQ2W376TWB633eG
         ojMA==
X-Gm-Message-State: AOAM530b5savz1NDcR8se0XLFHTnS8+bjymC6hlS4ioR52Zy1e5KSl3F
	N1M5RRKgiVtZnEBwZKytkp89wr5ZMzZHuEVIbcY=
X-Google-Smtp-Source: 
 ABdhPJxsqOi5B2Qq5E5C8Au7JA9+BvZop87TT/4CHXnMvVy3LpE9RLAC0nyTVDjLJ3XvJJmR8r21aQ==
X-Received: by 2002:a17:903:1249:b0:154:c472:de6b with SMTP id
 u9-20020a170903124900b00154c472de6bmr34286805plh.38.1651154017223;
        Thu, 28 Apr 2022 06:53:37 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 m1-20020a17090ade0100b001cb3feaddfcsm5256615pjv.2.2022.04.28.06.53.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 06:53:36 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/2] Patch review
Date: Thu, 28 Apr 2022 03:53:18 -1000
Message-Id: <cover.1651153719.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 13:53:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56940

These two patches are required to fix performance builds on the autobuilder.

There will also be a couple of related patches in an upcoming dunfell
oe-core patchset.

The following changes since commit 76cb7aefd0724d59b6c1bbd9fc483e766624cee2:

  config.json: Update perf worker target names (2022-04-25 21:53:48 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (2):
  scripts/build-perf-test-wrapper: Update to only send text based emails
  oe-build-perf-report-email: Drop phantomjs email generation support

 scripts/build-perf-test-wrapper       |  14 +--
 scripts/oe-build-perf-report-email.py | 158 +-------------------------
 2 files changed, 7 insertions(+), 165 deletions(-)

-- 
2.25.1


