Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEBF0C433EF
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 16:33:04 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web08.52.1648657983814546362
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 09:33:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=miPmqdK4;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.176,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f176.google.com with SMTP id f3so17979017pfe.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 09:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ycYhtgv6/1Bf8W6J2GtAswShu/CsOm5OWfMTgblgK3w=;
        b=miPmqdK4jEJswT+dO5gnZ6vVX46EMPdzbgZYR+q1APyS2Uyu4KqG4vnN1Y68kutWcS
         EYAJeFscOFlTOut4pqN8opN9qz2ScpwDWE4LKZqQBoBfSguHyFQtroEQWIO8uJ/qHuaM
         U8bx8/hY3Q6xlHZppMZwdfPbaxq3bPGG5K/UGF9nGk8JCIzVaJWDL6sAAOqAaIXYFQ8U
         /rn/H6svBP0w7ze7FCM7tMAYZjPru18WtXiNoKn6d7YLZmWvwYfe4OdQNd4yJMivCI9/
         dD7ya5dm2W5iHhQznCEPMgLfGdafOvybYq4YsxmqMmpEo78cb4Vd+tn+tLhpuoyOy8ha
         Uq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ycYhtgv6/1Bf8W6J2GtAswShu/CsOm5OWfMTgblgK3w=;
        b=N7tOBLcNa2t9pXW0ToS8WrPeHcjdv1+PiX5rDoNT+smNfahK2I1VQThRX9d5fWX5d9
         jabxStZ0JAFhk6u9u8YvOt/u/kVvF+t+s15598sWG/+ANW52Bs3Kc9F2n/XF2s0SfjTj
         8uipQ0KFbQKUO1rzp7OXQVkuQ+/tlG/mGz31dHrrJN8j9qjQMsNNq6Hyv5QC571jaNn0
         pFca3jxbkGdkLzZqaf88xMqty9bHSXFN3/s4AOfJNAayEnSmLIEtihEWlevAWfcT1gyw
         PkKoul/ppNDBor1fxPWQURKJaGv0HsrpUmDCyWJS3rgp1GcJJ1XAkzgCJHkWkXFoJbox
         Nf2A==
X-Gm-Message-State: AOAM532YlZHpeQbLlj1qLtDqNOQ6w8k+2g4TsyNR0J6KTIwDi4GgUB9F
	aVtt1ORQrJsR7j5HOlqcl/iFco4MW3yXzx300EU=
X-Google-Smtp-Source: 
 ABdhPJxDX+Sh2auSC5WEwB65mdSQjcCWgXybnf8xNEXuvDhQyntHUrrZoB9PZ3uqznkWK3duMH1W9A==
X-Received: by 2002:a63:185c:0:b0:381:10:2843 with SMTP id
 28-20020a63185c000000b0038100102843mr6812347pgy.433.1648657982768;
        Wed, 30 Mar 2022 09:33:02 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 oc10-20020a17090b1c0a00b001c7510ed0c8sm7382484pjb.49.2022.03.30.09.33.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 09:33:01 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/2] Patch review
Date: Wed, 30 Mar 2022 06:32:51 -1000
Message-Id: <cover.1648657669.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 16:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56603

This series updates to a more recent version of buildtools

Tested over the past serveral weeks on autobuilder, most recently:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3445

The following changes since commit bdbc5f2e4eb45e29c8a957963c8431cdc86c12ce:

  shared-repos: Use tar instead of rsync for speed (2022-02-22 15:26:49 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (2):
  config.json: Switch to 3.4 M2 buildtools
  config.json: Update to 3.4 buildtools tarball

 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.25.1


