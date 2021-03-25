Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.1381.1616632793568539620
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:39:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=W+QSUWxV;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.171, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f171.google.com with SMTP id 32so113723pgm.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A5eMLbXe2lm3+dfoTeN2IXmnCHLuwvUlwlM3XV4mmoE=;
        b=W+QSUWxVBxtcGuWG/8uFNn4mkQBLP3KqxqX9HaJJ3RKR1oY5NMVRS/lBNiGindIje1
         rL6tBWNV4RxOBRl4V67c7D/0BqEAP5AygVG81ZnTA2vnY5rPdegQrCthM8n++qa9f8hm
         8GQ2YEycdoE32zj0JeT0xTACI4RtvBQLKyot/OqT+Ye4AVktWjiM0OuxJHgpnmmsrKCP
         ZeTB35tkBgBRINhWlFwBWL8Sr/nvE9fNJhu8S5RlxMrRGBFoq0vQrji3oVu5sNfLdcer
         cjexs7bMt1Rnd6nhEX6o+JO7yCRpTvrSoqt40fJk6QK9arO1G+AUcs2qcntSWzzoS0T1
         L54A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A5eMLbXe2lm3+dfoTeN2IXmnCHLuwvUlwlM3XV4mmoE=;
        b=WMMjrYj7UB0ctINGK81iN17XHay6B6/pQtNbYY6XINw/QWFXKUtsjEfQ0jx2nXACT3
         OLxd0kErx+8/n8oIqpDuhUy8DgxEObInwmiRpHVjMD3z2zP3xFd5Zy0SSMecVI3eH2oH
         ir19L0XMzzCX3vM3OKJXF6yVDrhUPtxu90OEbk7Np+NmY1eg1VyRD9wyldi6ljH8tVNs
         LwmItLpFmJYEJroUIXVum4uwfDAoSD77DRY77ByDlbb/fJlQYrTakQmAGqijlatY8EmX
         p8AOtvs6VEgN0biBY9WuzCVqIbDJUN6OsGOrhMcX7AyazZd0edQpebWfaAsX0mVlXoD9
         cODA==
X-Gm-Message-State: AOAM5308z3pfbMAPzuJGCtv3Q8h3rp8K1CxmAex2zBdIf6qTcHDJJ6BG
	JAuMe+g/ki6hKOB6UyXvK9lSRjrybmvbrp11
X-Google-Smtp-Source: ABdhPJx9IdzV8N6kpzMWu2dcJTnAJb2zKnb+Y/+eBke67+bqvVB/kuRSqMNnEPg87HpWmscN0HT2iw==
X-Received: by 2002:a65:56cc:: with SMTP id w12mr5216701pgs.354.1616632792326;
        Wed, 24 Mar 2021 17:39:52 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.39.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:39:51 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 00/23] Patch review
Date: Wed, 24 Mar 2021 14:39:09 -1000
Message-Id: <cover.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review the following patches for dunfell and have comments back by end of day Friday.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/1998

with the exception of an autobuilder intermittent issue for qemuppc, which passed on
subsequent retest:

https://autobuilder.yoctoproject.org/typhoon/#/builders/63/builds/3217

The following changes since commit ef52b284e8cbe90c18fdab6a0d6fa8095a2c4ed9:

  send-qa-email: Save the QA email in case it doesn't reach the mailing lists. (2021-02-23 10:24:14 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman

Richard Purdie (22):
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
  config.json: Use buildtools tarball on debian9
  scripts/run-config: Disable output buffering
  config.json: Split reproduciblity tests into their own target

Ross Burton (1):
  config: build and test SDKs when using package_deb

 config.json                          | 102 ++++++++++--
 scripts/generate-testresult-index.py |  83 +++++++---
 scripts/run-config                   | 235 +++++++++++++++++++--------
 scripts/runqemu-renice.c             |  44 +++++
 scripts/shared-repo-unpack           |   1 +
 scripts/utils.py                     |   5 +-
 6 files changed, 367 insertions(+), 103 deletions(-)
 create mode 100644 scripts/runqemu-renice.c

-- 
2.25.1

