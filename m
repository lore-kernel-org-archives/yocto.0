Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web08.1512.1616688171353437536
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:02:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=T4GNzGcQ;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.46, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f46.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so2899300pjb.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OjKyAv9Asnnmt2ksxBbwfQGLA45QGwFmeljTu+2ZucU=;
        b=T4GNzGcQT9hN2vNi7jKRii3pL48+k7T96YzXDbh3Rm/avLYdkU5LvNyVAJSqFg4FWK
         lZDQkI/o22CjCwChNIn02dFbh8NSFczILvQix6GjAwJZjdJ8FvWUWz+iGEXM+Gg8E+C9
         Ue8NUuqyxbrtgsgyZD4jkLIa18VhcQapzYk8Bt+TWNql1LPbsjaHKDjJ9Th3+OdBlQKe
         +wWF/8qoC3BKna3+dIeu+Cj3JrgIZXH68YXio/GEF75M/kP1lXxkaMpl/f+DEUb51+YG
         n3ufiXNOJ9rGSrSWDhvuyZwG/3CPTnr5QY4dFWv+RUfMNYyhXJy4KB+0Xc9AtNjuhO6R
         EQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OjKyAv9Asnnmt2ksxBbwfQGLA45QGwFmeljTu+2ZucU=;
        b=mNSqAuVw6innBjvniYlqieV6Pz5+E2EpIlJ8fkO5Jm6trM82LUuNSfYBdv6VbM8Lhz
         DsX2QxpmkhYDTXXWU51hg/9USDbwhOkDySzo4jjjrivb6lyj4de/K4ubliIi2fOb6RDJ
         IEW4sqOaDBcJ9MZW2VKobVo/vf5d4RlUOuNnZDtNdQncxqWRQ938zSJHcPYeiO7RsD7Z
         K4Kn+g25waXSkXfirnJJsl5jB78rCtN0YYMxrPOehwUF6G71obOCFof1APeMRLgO1B4H
         TEacWA68TWjQf4DuEk9E4KHvm+n5Qy2+oF5iwRfEveWIp6SWwfB42eEjVEoNZ6N3HRxY
         28ag==
X-Gm-Message-State: AOAM531hakcVdia8mfkAg+TeMImHQkekMI8PJo/0Ky0McksepQOBY26/
	wSG2w/NPMT3LL1xCuOC9wAbVgnrv+LMzO6U/
X-Google-Smtp-Source: ABdhPJxDXTkruSdNwrYTgfAb8SXAVxeiI2pNGq1m37tKzSGP0BPn/HcR9iVF+1ykG/r68FGv49cOxw==
X-Received: by 2002:a17:90a:7061:: with SMTP id f88mr9600904pjk.56.1616688170303;
        Thu, 25 Mar 2021 09:02:50 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.02.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:02:49 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 00/15] Patch review V2
Date: Thu, 25 Mar 2021 06:02:06 -1000
Message-Id: <cover.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this next set of patches for dunfell.

V2 removes:

  scripts: Add runqemu-renice.c for renicing runqemu
  scripts/generate-testresult-index: Update after 'posttrigger' renaming
    broke the index generation
  scripts/generate-testresult-index: Ensure backwards compatibility with
    older layout
  scripts/generate-testresult-index.py: Ensure we're not always
    rerunning resulttool
  scripts/generate-testresult-index: Improve index to list test reports,
    ptest and buildperf separately
  scripts/generate-testresult-index: Reorder buildhistory to improve
    display
  scripts/generate-testresult-index.py: Use bulma css to improve the
    look of the index
  config.json: Use buildtools tarball on debian9
  
The following changes since commit ef52b284e8cbe90c18fdab6a0d6fa8095a2c4ed9:

  send-qa-email: Save the QA email in case it doesn't reach the mailing lists. (2021-02-23 10:24:14 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (14):
  scripts/run-config: Don't execute steps that don't exist!
  scripts/run-config: Ensure stepnum has a value when there are no steps
  scripts/run-config: If target is present default to 1 step
  run-config: Adapt to two pass execution
  scripts/run-config: Improve logfile naming
  scripts/run-config: Ensure logging to both logfile and stdout
  config.json/run-config: Add human readable descriptions of steps
  scripts/run-config: Remove redundant boilerplate json
  scripts/shared-repo-unpack: Add flush call to update the output more
    regularly before buildtools
  config.json/run-config: Add support for shortnames and descriptions
  config.json: Unbreak qa-extras locked sigs test
  config.json: Add further descriptions
  scripts/run-config: Disable output buffering
  config.json: Split reproduciblity tests into their own target

Ross Burton (1):
  config: build and test SDKs when using package_deb

 config.json                | 101 +++++++++++++---
 scripts/run-config         | 235 ++++++++++++++++++++++++++-----------
 scripts/shared-repo-unpack |   1 +
 scripts/utils.py           |   5 +-
 4 files changed, 259 insertions(+), 83 deletions(-)

-- 
2.25.1

