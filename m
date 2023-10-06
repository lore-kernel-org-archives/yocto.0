Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51633E9410B
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:28 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web11.4016.1696622365590777904
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KQy+BuNz;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3af5b26d599so1762107b6e.2
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622364; x=1697227164; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=QXwXLitO6q9mJd6PUtc8bn4BLgsJEuflpoqoNYQE7VA=;
        b=KQy+BuNzzysijB0IOrl6+/9KO7gZJDTyKYUu1TC0vXDq3YcY0WNvnYqP5EQHZ5LcDD
         DgtVHAZS93qcFuiYvKuvAMkOxSH73+RNYkwNOO/5bKXYXB3kS/Jhsu0NeYwHKsP24Ize
         KPBi+Qc3hyoQTbyv4/PaBfNoGZz7qwpyA8KcdBLS/107by/LcawECgLTbDw7ueIbDEty
         hy24hBjKJDa9pWxT4zIPn2HFVYN4wrLszkZPqjvTm/DP2QgAoKTvsU+CslTijMfaHBTe
         asAK82r5ifRLptTXsIIwvPhlLPn8qTaArviwAaRlJ1G3LmbUk42+ehZ5tPcActZncQQe
         5LeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622364; x=1697227164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QXwXLitO6q9mJd6PUtc8bn4BLgsJEuflpoqoNYQE7VA=;
        b=h1rJoOQn8cCbrozqb4IYYiDkhdkefxNooSYX5xgYt8DuSZfOLm+Hun07KQw/cPOQ+C
         1X5BHup+98tDS7y9FRk6pRTYDg5ETGvhk2xL0FoKj6X3Iplg64nNnZrsfE9pwCxzop4w
         KCzAGe+HtzHFt/mkHfWSVuEfh48EJfR43S2KR4GQZi5bnrlWufpSnmK2pAZwOjYIgiD8
         4x5Vw56yqkNJ5vdPCmhZX9SIWYpmyWlsmUd7Y+XxO02qAyRYP2v6pd+LoF5O+cPkRNaK
         aGxYRhSbtltH5OEK7b9ViGKW/xk/eW+zh9Y48ez2UMNbKGN90+HxM9xue2aUxMWifboG
         Cu3A==
X-Gm-Message-State: AOJu0YyV8R33IJE8EvXSrJ2bTKGOfi4jYsW2Y/sUP2TiphktmXr1FrJj
	aGBJgRuPfEAzgJvpyFTgsXF8lwNTJGA=
X-Google-Smtp-Source: AGHT+IF+ZjKWM+OoZhH6QiD5vfTgdm0aZh3Z6fmTZJGTRN3sOxx4s0SDEMpKWfePCE4f6aeM7GtyuA==
X-Received: by 2002:a05:6358:e49e:b0:15c:e2c9:d1ca with SMTP id by30-20020a056358e49e00b0015ce2c9d1camr11191792rwb.1.1696622364435;
        Fri, 06 Oct 2023 12:59:24 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:24 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 00/10] Django 4.2 LTS Upgrade
Date: Fri,  6 Oct 2023 12:59:03 -0700
Message-Id: <cover.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61264

This series upgrades to the current LTS for Django, 4.2.

The two most obvious changes are:
* django.utils.translation.ugettext() -> gettext
* django.conf.urls.url() -> re_path()

See:
https://docs.djangoproject.com/en/4.2/releases/4.0/#features-removed-in-4-0
https://docs.djangoproject.com/en/4.2/internals/deprecation/#deprecation-removed-in-4-0

While we are at it, upgrade all components in requirements.txt and
update to reflect missing dependencies.

One casualty of this upgrade is django-bootstrap-pagination which
is no longer maintained and incompatible with Django 4.2.

One additional requirement for settings.py is setting CSRF_TRUSTED_ORIGINS to
allow POST requests (ALLOWED_HOSTS is no longer sufficient).

Tim Orling (10):
  requirements.txt: upgrade Django 3.2 -> 4.2
  docker-compose.yml: bump mariadb from 10.3 to 10.4
  Drop django-bootstrap-pagination: incompatible
  bootstrap_pagination: disable via comment
  Refactor usage of django.conf.urls
  Dockerfile: drop python3-pil
  requirements.txt: upgrade all to latest
  requirements.txt: update dependencies
  password_validation.py: fix deprecated ugettext
  docker/settings.py: add CSRF_TRUSTED_ORIGINS

 Dockerfile                                 |   1 -
 docker-compose.yml                         |   2 +-
 docker/settings.py                         |   2 +-
 layerindex/urls.py                         | 108 ++++++++++-----------
 layerindex/urls_branch.py                  |  25 +++--
 password_validation.py                     |   2 +-
 requirements.txt                           |  47 +++++----
 rrs/urls.py                                |  16 +--
 settings.py                                |   1 -
 templates/layerindex/bulkchangesearch.html |   2 +
 templates/layerindex/classes.html          |   2 +
 templates/layerindex/classicrecipes.html   |   2 +
 templates/layerindex/distros.html          |   2 +
 templates/layerindex/history.html          |   2 +
 templates/layerindex/layers.html           |   2 +
 templates/layerindex/machines.html         |   2 +
 templates/layerindex/recipes.html          |   2 +
 templates/layerindex/reviewlist.html       |   2 +
 templates/layerindex/updatelist.html       |   2 +
 urls.py                                    |  31 +++---
 20 files changed, 140 insertions(+), 115 deletions(-)

-- 
2.34.1


