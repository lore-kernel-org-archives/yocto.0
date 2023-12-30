Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41453C46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 04:59:23 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web10.179005.1703912359340613290
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 20:59:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hiM3Pm//;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6d9a795cffbso3172363b3a.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 20:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912358; x=1704517158; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8J4lqJAbKk/PXthUrASnSIqobya1Tzf6R2VuaLAn8JM=;
        b=hiM3Pm//CFK2gPS8pdj0Mx7+O78a/Txg0nWUGsqo0YXvl+mGtEeCdAgZ40bNEig5IH
         pFAv2iYTJyxSS/48CnO/JxB8Aet2HWvqqQyEksGa2K5MB+hHP5Oultt0HQ6uL+qZIjhS
         a0/SocRKsFwjOiyoiy06p0+tR8HIftDcl67kK2Lc3s/rEYzpDT/Tle3JFyFgDQASIxZb
         n8BHLil4NHWoFanyDLMGciIepQr7kbqk5nmmLdk98MqE8y7R+IrOsOVjy09E+bOOvnW6
         1IY+X+Gd6E/k3PIDmrXSW89Dxl+e+msa6cfe/O/407EcH3D+tOj1U+EsbLPNB4o4Rc8T
         G3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912358; x=1704517158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8J4lqJAbKk/PXthUrASnSIqobya1Tzf6R2VuaLAn8JM=;
        b=bRd9Lq0jijWReobrOqbfq+O+M+7bFcnrYmK5qd5rXWFpt3LzGzcI8QX/xouCNQfjFJ
         VZn5+zLGX+Yt6R2kqMBKYUmyPy+3spwwLz+g/btFPau398c/Snh/NZMy2AOtazpjxLqy
         lI+Gj2Uai9Ey6M6vOuUwYNfRCssgxn5WFsrRKGTUf4kzTNUnC0gQLrGH1S+iguXVMWJG
         zpMPI1cQldKrGycphebM+Le0n4idTwpDETgGZpw5Gdth/vBVDhIEEV4Zb4NonneIhqvs
         dCy13lh/w/VTVqR5jaWSAYnFwwf04twj8RwIgZ0gx2xwokg8VNewA25m24dO+BZqudZq
         S8tA==
X-Gm-Message-State: AOJu0Yy/hgC8DuZ7NHScyFzZjv+a6f4Qnnz+biQTRq5bFtVKTYUGr6Dg
	NZ8thbUWT8KVlMuDC+10phxHvKcO67g=
X-Google-Smtp-Source: AGHT+IEZV7CJh/ktvXybmtF1QSH7Bw4TJi60EZo7V2a5ChVn5DdMsLfZfxnexUVl9Op7YORUKRJ5bQ==
X-Received: by 2002:a05:6a00:80ee:b0:6d9:af1f:dd44 with SMTP id ei46-20020a056a0080ee00b006d9af1fdd44mr9774641pfb.9.1703912358188;
        Fri, 29 Dec 2023 20:59:18 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.20.59.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 20:59:17 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 0/7] Fixes; add Update Layer button; expose branch mapping
Date: Fri, 29 Dec 2023 20:57:07 -0800
Message-Id: <cover.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 04:59:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62051

This series is the combination of several changes that are best done as
a group because that is how they were developed and more importantly tested.

* Update requirements.txt to the "latest" versions
* Fix an annoyance in the docker/settings.py which caused the RABBIT_BROKER
  variable to be unparseable, since no default values where set and the
  environment variables do not always exist in the running container context
  (such as running updates)
* Enable production (trusted by browser) cert creation by dockersetup.py via
  Let's Encrypt. This should help publicly facing instances avoid unnecessary
  churn of the staging certs.
* Fix a typo that broke Branch Comparison
  [YOCTO #15332]
* Expose the "actual_branch" branch mapping in the web UI (previously
  only available in the admin interface.
  [YOCTO #8008]
* Add the ability to trigger a layer update from the web UI (is_staff users
  only).
  [YOCTO #12484]
* Improve the handling of actual_branch by the update.py script (and friends)
  to allow scripted creation/updates of stable branches with actual_branch set.
  This should enable better utilization of LAYERSERIES_COMPAT in the future.

The following changes since commit 4712f00df73f86ab557cf499b6b20aac3f738535:

  utils.py: fix unclosed ( (2023-11-22 11:06:10 -0800)

are available in the Git repository at:

  https://github.com/moto-timo/layerindex-web timo/update-button-actual-branch
  https://github.com/moto-timo/layerindex-web/tree/timo/update-button-actual-branch

Tim Orling (7):
  requirements.txt: bump all to latest
  layerindex/views.py: fix parse_view typo
  docker/settings.py: fix RABBIT_BROKER TypeError
  dockersetup.py: enable production Let's Encrypt
  layerindex: Add actual_branch to forms and views
  layerindex: add Update Layer UI feature
  layerindex: improve updates for actual_branch

 docker/settings.py                     |   2 +-
 dockersetup.py                         |   9 +-
 layerindex/forms.py                    |  15 ++++
 layerindex/update.py                   |  39 +++++---
 layerindex/update_layer.py             |   8 ++
 layerindex/urls.py                     |   2 +-
 layerindex/urls_branch.py              |   3 +-
 layerindex/utils.py                    |   7 +-
 layerindex/views.py                    |  42 ++++++++-
 requirements.txt                       |  40 ++++-----
 templates/layerindex/detail.html       |   3 +
 templates/layerindex/reviewdetail.html |   3 +
 templates/layerindex/updatelayer.html  | 119 +++++++++++++++++++++++++
 13 files changed, 252 insertions(+), 40 deletions(-)
 create mode 100644 templates/layerindex/updatelayer.html

-- 
2.34.1


