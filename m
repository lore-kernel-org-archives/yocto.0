Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.20534.1626649647313243655
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpiSdriu;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id o3-20020a17090a6783b0290173ce472b8aso12966275pjj.2
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=743mwMP4ZpiPESgRFG20N+X5W1w5eT3tK2xkSEF4els=;
        b=UpiSdriuJ6jcmrrf1ZAb8ax/H0cDLByIejIC1tA4LJmnsjo2QfgaD0QwJOLbJjMRFj
         jky2MY1R22NKo5+n547McFtSdLieou9GJcibTeUe462L7s2I7DX5JC5yerTQzKyKqV3T
         n92hxkZByJZ1nZJoul37bb9csmQZCbbebn2ZOyvTrZ51tuPf/VQ/UE0vxpOUUl8XfETs
         LbjOyMOu3IBM8WlH+9DlP+wmVZMCgnAYpBiL6cB4geSB4JYF1P8BXT29tNXQiFUIK3j6
         W+EY+IB/UsPJYaX0OZfTHdWELnE+vrYbSfPdcSerYNMU1zyNeIww3P31ahsU/M95fMNL
         02fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=743mwMP4ZpiPESgRFG20N+X5W1w5eT3tK2xkSEF4els=;
        b=BJrY0QsQs/SHObO4pqeBHVgMASbPJtanlgciw/Ejn/GYSz+z3WzH1OGhsakctnZbWh
         OBdNImCclwwZjeKGq4w2Rf9sUhwz8JQ7uxdx3lir+PzTLERbC5Cf/we4SmOhBwdi6zvl
         dFIiozmomye0+RYezbNhjnlqm8FFKIik4M7YKPN88v2xeqSYsbwlMNgaTdEcucTw87Hl
         7unmWgrXRkwv83AUSM8J2F5ZwnxlhSWOEYjOjp0ZUabDDEmdbx+TaCI5xK8zN/WW6CL/
         7byc9CZmj7KNGk7rU9IcJBOkZgzkF945UwChklsxO8vkhXky8ukMEGqQmFaidaevvWBB
         awnQ==
X-Gm-Message-State: AOAM531UxH9+e5wt7Xdgkmd1L5CP8Zoc8QUcroSqpwAxhBfr5q6Dc9Ip
	Pzkn/nqt4s+e5aYZy3VQ6SacHabk6FQG8Q==
X-Google-Smtp-Source: ABdhPJwD/XMfzjAvCl5rcu7SaNPl0UuotvvYrLsQ2nba30kC665zSYpVXyj+3VRbfHC/JKNrrK/QcQ==
X-Received: by 2002:a17:903:31d3:b029:ee:bccd:e686 with SMTP id v19-20020a17090331d3b02900eebccde686mr17269937ple.1.1626649646369;
        Sun, 18 Jul 2021 16:07:26 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:26 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 00/15] Upgrade to Django 3.2.5 LTS and Celery 5
Date: Sun, 18 Jul 2021 16:07:05 -0700
Message-Id: <cover.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current code base uses Django 2.2.x which will go out of extended
support in April 2022, but also holds us back from updating a number of
dependencies.

Update to the current Django 3.2.5 LTS and also the latest Celery 5.1.2.
Celery 4 has not had any commits since 2020 and is unlikely to be
getting much more attention from the developers.

While we are at it, upgrade all of our dependencies to the latest
versions.

The following changes since commit 2314fb2811bc3753d9dd4459747d8d30369321ad:

  Add SPDX license headers to layerindex-web source files (2021-04-21 08:22:51 +1200)

are available in the Git repository at:

  git://github.com/moto-timo/layerindex-web timo/django-3.2.5
  https://github.com/moto-timo/layerindex-web/tree/timo/django-3.2.5

Tim Orling (15):
  dockersetup.py: fix EMAIL_USE_SSL/TLS
  requirements.txt: fix range check
  Dockerfile: cleanup, install python3-wheel
  dockersetup.py: letsencrypt 2048 bit rsa
  layerindex/*: make all shebangs python3
  requirements.txt: bump to Django 3.0
  Updates for Django 3.0
  requirements.txt: bump to Django 3.1
  docker-compose: bump mariadb to 10.3
  requirements.txt: update all to latest
  about.html: update contributors
  requirements.txt: bump to Django 3.2 LTS
  settings: set DEFAULT_AUTO_FIELD
  docker-compose: fix celery
  README.devel: update versions

 Dockerfile                                    |  4 +-
 README.devel                                  |  6 +--
 docker-compose.yml                            |  4 +-
 docker/settings.py                            |  6 ++-
 dockersetup.py                                |  6 +--
 layerindex/bulkchange.py                      |  2 +-
 .../0045_layerbranch_classicrecipe.py         | 19 ++++++++
 layerindex/recipedesc.py                      |  2 +-
 layerindex/tools/import_classic_wiki.py       |  2 +-
 layerindex/tools/import_wiki_layers.py        |  2 +-
 layerindex/tools/site_name.py                 |  2 +-
 layerindex/tools/update_classic_status.py     |  2 +-
 layerindex/update_layer.py                    |  2 +-
 requirements.txt                              | 48 +++++++++----------
 settings.py                                   |  6 ++-
 templates/base.html                           |  2 +-
 templates/layerindex/about.html               |  2 +
 17 files changed, 72 insertions(+), 45 deletions(-)
 create mode 100644 layerindex/migrations/0045_layerbranch_classicrecipe.py

-- 
2.32.0

