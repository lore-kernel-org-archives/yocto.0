Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.3582.1593716078631395590
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=l1wNFnUU;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.44, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f44.google.com with SMTP id gc9so6323216pjb.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=gCG+wAA7B3zSZALG4Qnu7kQpBOBSy5V7O522hP2E81Y=;
        b=l1wNFnUUJAqEPbtmMQFXnwp30zFGDzahtmsCsautrWMiDLUue5+zUA4Pf8LADML1MM
         OtX72uR4npvDX8i1/lxI6nJAW4Oqb6LdaORzfw9qLyC4AehXyjnHuXIVbobAiz91Qhjh
         BztVn3FDHp0hgxssC0lvH/JPJGwlDumySUXINe8QuHmvILWMnoOVDLVT9597a80xLbHo
         8vXjV1xEb4VU5iuhFgALA2SlYvEo26+5/KncksDwNp+LGodkP+S9hk5YXUylGaGNZcBX
         NTmIKAalkl06ySWBKiEiQcPLVB2RMHXM0Vbj+POvo7jlU6T7j/U9oHyeNwQJmYl7aMHw
         74Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=gCG+wAA7B3zSZALG4Qnu7kQpBOBSy5V7O522hP2E81Y=;
        b=Y1Cx54vnmIW9T8xl0VX2/5L8prInrzFzp2UP5e9E3MdW4bSGLnQ+0TEtU7cvckYxDK
         c02sNl6wH2qocY75xnWC/+Tog4VEptrXDnigM0pHFeZEIIFO0dXqToThLz/n+YxKh1fp
         c03dlqUatuae8FZjph0pypXnCQSJSi0XjO9FXKRJonOM3sHqBmy6sGZZcITouv2p8VVx
         UTLi8p3lEKaan2BmR1I0E30/YQBXaUWXEO8B3sRZSiZnNr1+7GAbb6u2FnTYXi3sKcMr
         FHi6rqJLcxrRjUSEnKgpuAhm+O1rUR3GwwNKPhrhnpQpjrJN0ASCsvi/7Lj1ZSYZkN1r
         7VbA==
X-Gm-Message-State: AOAM532gJw7vExMELxPXaDWVAdCuB+x2NgI8Psr3YuIzTxBvZGThbHKt
	WGI4x2HQXEd1jCAl9SaB5lD/V+ezTyOVQw==
X-Google-Smtp-Source: ABdhPJzB2PNwV/XZQpaxRW/8JkdQnN/vMNO1jSulCev92iYa1z7D0WFH4YumtTFGbOa/Xi4aW8Jbbw==
X-Received: by 2002:a17:902:b48b:: with SMTP id y11mr28171690plr.43.1593716077530;
        Thu, 02 Jul 2020 11:54:37 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:36 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 0/6] Patch review
Date: Thu,  2 Jul 2020 08:53:56 -1000
Message-Id: <cover.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

Please review this set of patches for dunfell and have comments back
by end of day Monday.
 
The following changes since commit 2e8b103c4fb3b6aa07c271e716d057d71b7fa543:

  config.json: add steve@sakoman.com to QA email list (2020-06-10 18:23:06 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (3):
  config.json: Ensure trigger-build and trigger-build-posttrigger match
    layer setup
  config.json: Use buildtools from 3.2 M1 to fix bugs in openssl
    reporting
  scripts/publish-artefacts: Convert md5sum to sha256sum

Ross Burton (1):
  config.json: generate the buildtools tarballs for aarch64

Tummalapalli, Vineela (1):
  publish-artefacts: Improve sha256 checksum handling

Vineela (1):
  scripts/utils.py: Convert md5sum to sha256sum for layer tarballs

 config.json               |  5 ++-
 scripts/publish-artefacts | 94 ++++++++++++++++++++-------------------
 scripts/utils.py          |  2 +-
 3 files changed, 53 insertions(+), 48 deletions(-)

-- 
2.17.1

