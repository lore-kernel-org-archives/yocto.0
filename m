Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59350C3527E
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.20993.1649617733789181700
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:08:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aGKC/bML;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 2so13212268pjw.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zOuHq8U82z45l6oi2jh1bbRVCV+sx5729argcy2RiOQ=;
        b=aGKC/bMLk0AVVN7okjwN8Ltf8mkZreO0NecUvCclw032hR8Pxs2vIhhgdpdFQ1g9U2
         3e8W/FxDm5KUvlTVfI6GTPyiVSoWYUI2xZ1cMhdJKyYGm8QCS0dh0LI8FU1BHZ8w7J3L
         Hnegt3SyXn5UjDh+yFJEx19rFBqoUvsAUnuPt2qTo0drDi/tUtBtb+Xif3WWRggawObx
         NTh4Y5Q7yHmcvwGMMkX0ktSn+UiKHT3zuI8uakzVhAZJJSJEFNEvbmZm65UtW+3EbrXz
         MIHIDG/7i2pG789ZNH63cNKh7SqSfz1q4T9F50+GoVShiPMPq6bMADTuzYdZQnsvTNO4
         M+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zOuHq8U82z45l6oi2jh1bbRVCV+sx5729argcy2RiOQ=;
        b=igq18ifNXDPCJfVMWLKed34akaIt91Xq5f/OhjtJ60wH6WFQUM8pUXwB6hVerCwpYD
         a8oWqUluT9Z1WeDa1Jwbe5wNsX4ApLJc0M5PYA1xV0Z9myoEwRxNOA1BgS5/xPv6H6U6
         pTf71uaBmyCdsx5xgD/KH1iHl8G4fRMI/g8QMZQxEGJ3MN6Ja0djb9pJW2l3sm+FzcEo
         J0N1TnCT5Bl9YAmbzIEmWrX5oiT8LLKPDcnUGJqd/hNSYmL7q0oHarK6rvhgFboQBeZ8
         9GLcPp+sE7ehIEl2YJc6p8FLVSJz2GLE55+/wRtjzw75IaHEy9W3cB+urGQpg/6wJ0JG
         lqwA==
X-Gm-Message-State: AOAM533g9Qes0iUKk2GO5bJA0gTNxPAECfgs+cPjPnWYvWqWrQq13Pa2
	9HNOOYJpzeHCe4vWfwEhx6l6zI5un1Y=
X-Google-Smtp-Source: 
 ABdhPJw+fAEu8RD/LOyAVwAF2vBeGYnaDvmJn+4uLO+FlAcmG3K/cVWNvtnQvhGoK74ejiwMfXu6qg==
X-Received: by 2002:a17:902:ce0a:b0:156:72e2:f191 with SMTP id
 k10-20020a170902ce0a00b0015672e2f191mr28326000plg.76.1649617732809;
        Sun, 10 Apr 2022 12:08:52 -0700 (PDT)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:48cd:8d9b:66c9:7179])
        by smtp.gmail.com with ESMTPSA id
 f16-20020a056a00239000b004fa7103e13csm34001213pfc.41.2022.04.10.12.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 12:08:52 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex][PATCH 0/4] Various fixes
Date: Sun, 10 Apr 2022 12:08:38 -0700
Message-Id: <cover.1649617288.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56710

Various fixes to address errors and warnings when running update.py

The following changes since commit 796d2455bb862ed4c71eadfa9fcf4c002752c2f3:

  templates/*: staticfiles -> static (2022-01-13 23:36:22 -0800)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web timo/fixes
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=timo/fixes

Tim Orling (4):
  layerindex/urls.py: fix about url pattern
  layerindex/models.py: add Inactive-Upstream
  recipe{desc,parse}.py: BB_ENV_PASSTHROUGH_ADDITIONS
  layerindex/utils.py: ignore 'core' in BBFILES_COLLECTIONS

 .../migrations/0046_alter_patch_status.py      | 18 ++++++++++++++++++
 layerindex/models.py                           |  1 +
 layerindex/recipedesc.py                       |  2 +-
 layerindex/recipeparse.py                      |  2 +-
 layerindex/urls.py                             |  2 +-
 layerindex/utils.py                            |  7 ++++++-
 6 files changed, 28 insertions(+), 4 deletions(-)
 create mode 100644 layerindex/migrations/0046_alter_patch_status.py

-- 
2.30.2


