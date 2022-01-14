Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D0B8C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:06 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web08.3878.1642139704973654769
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XmjWQ3Vb;
 spf=pass (domain: gmail.com, ip: 209.85.210.172,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id p37so1869485pfh.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aolrqiYCSlnHOdYlDvIUYjXIf2Gd09tGnEjDcgdBGk4=;
        b=XmjWQ3VbzpDsei17g5DuuQ4Ml/xMnkTMcD1pkHYa/XrNpQbR//x5rc9V3UPOOeOWt1
         jBYiTg6O980m8y9Vi8oNuaQ5kRsJd7Y3wpDSwCE4pLSj6Dl649Cq6RebAGsme2gr5pwI
         aA9GQ8wLtCz8bBaWhwXbfEMBQVEX/yaE+e8qTRaTST6EDtnPgUwy2l2EgELj2bM3lMFC
         tLEvstDJM86J0WSSIAmFWich5ZVg6+KzxQA9KSyxd3RYbYPB9eWBwwvFHKfNjWCiZ3bZ
         fsFA+MD/qTEKQuQ4rgWbXfA1jHLHaxoJcfGEti+i5Qj65fdjCavnDCA0gbpBvPnF8cYy
         wfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aolrqiYCSlnHOdYlDvIUYjXIf2Gd09tGnEjDcgdBGk4=;
        b=m90W8uPSdz8pm4NZc/EHeAZFV4UNNW2krxRDlgaeU5LOIKqSp1VPpJl7IvQWAZcVI+
         2g41jEloTRy59uBfuG8+EdOdFRMXp/I6YMhWmOQOJ0F5wOB1tLT3kvfIGbWAddgDO4pr
         /AfIaEqmXiEh5t1IcIbYTIMsok83eyCnjgLOrcIUgrxt4TZRK1wgeB8gHbJ2eYkLeYkQ
         x4vhu09GkjczU4oIooQok9FBD0eooCGkZW6jBv1gs3hX4RyMrzEyPeYRGBG/GnjZJ9mu
         Aar+ELeCWLNLuFoqYXQg+SGsFrmeRasYxnPvH683vDgyriIMZyRIZjwZZ8F9vsINxIXX
         azRw==
X-Gm-Message-State: AOAM53243juL0tNWJFJYg5AYVq2HdRaUIf6d80PWk+HAzSg/bLBJxwHW
	M5EV/mliyFvg3tPSewYgfKZXzee5U+9ysw==
X-Google-Smtp-Source: 
 ABdhPJzgm8JshQnacU3pPiKFTiUN4IdBMDZhkRx3Inv0IOyBdW/r7A+Tt/pGvBAB7N0mAJx+WuafqQ==
X-Received: by 2002:aa7:8592:0:b0:4be:2691:bb88 with SMTP id
 w18-20020aa78592000000b004be2691bb88mr7679514pfn.20.1642139703536;
        Thu, 13 Jan 2022 21:55:03 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:03 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 00/18] Upgrade to Django 3.2 LTS and Celery 5
Date: Thu, 13 Jan 2022 21:54:23 -0800
Message-Id: <cover.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55851

The current code base uses Django 2.2.x which will go out of extended
support in April 2022, but also holds us back from updating a number of
dependencies and is currently failing to update layers.

Update to the current Django 3.2.11 LTS and also the latest Celery 5.2.3.
Celery 4 has not had any commits since 2020 and is unlikely to be
getting much more attention from the developers.

While we are at it, upgrade all of our dependencies to the latest
versions.

This series re-introduces python2 to the Dockerfile as we still have
layers depending upon it and this is causing layer updates to fail.

This series includes fixes to the Recipe Reporting System (rrs app) and
the layerindex app itself for newer components and latest Django 3.2.11

Each of these commits was tested sequentially over a period of time, so
they should be considered a group of snapshots.

Changes in v2:
  - update email address
  - add fixes for rrs
  - re-introduce python2
  - update all requirements.txt

The following changes since commit ccc1fa775b0b5aa2f4760509c7696d3ea712a94d:

  Report charset for text & CSV views (2021-10-20 11:07:46 +1300)

are available in the Git repository at:

  git://github.com/moto-timo/layerindex-web timo/django-3.2.11
  https://github.com/moto-timo/layerindex-web/tree/timo/django-3.2.11

Tim Orling (18):
  dockersetup.py: fix EMAIL_USE_SSL/TLS
  Dockerfile: cleanup, install python3-wheel
  dockersetup.py: letsencrypt 2048 bit rsa
  layerindex/*: make all shebangs python3
  requirements.txt: bump to Django 3.0
  Updates for Django 3.0
  requirements.txt: bump to Django 3.1
  docker-compose: bump mariadb to 10.3
  requirements.txt: update all to latest
  requirements.txt: bump to Django 3.2 LTS
  settings: set DEFAULT_AUTO_FIELD
  docker-compose: fix celery
  README.devel: update versions
  rrs/admin.py: drop curry import
  Dockerfile: fix warnings
  rrs: add 0030_alter_recipeupgrade_maintainer.py miagration
  Dockerfile: add back python2 dependencies
  requirements.txt: bump all to latest

 Dockerfile                                    | 12 +++--
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
 rrs/admin.py                                  |  2 -
 .../0030_alter_recipeupgrade_maintainer.py    | 20 ++++++++
 settings.py                                   |  6 ++-
 templates/base.html                           |  2 +-
 18 files changed, 97 insertions(+), 48 deletions(-)
 create mode 100644 layerindex/migrations/0045_layerbranch_classicrecipe.py
 create mode 100644 rrs/migrations/0030_alter_recipeupgrade_maintainer.py

-- 
2.30.2


