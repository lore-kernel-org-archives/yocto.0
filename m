Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4844C3DA79
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:32 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.89454.1705341803406347075
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kvEwwj04;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6d9b1589a75so4221248b3a.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341802; x=1705946602; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bL2H7reoMcPi3uBP4KeHH3g8bOfzdA82F3sl1uK93S4=;
        b=kvEwwj04U5ACux+vRYd9/VdQuLQoBcGHqwWLMlgRCi+0TWCpzypmxe64c48+6Xn/0G
         dd3tBV554hPApCpQxchZa2aofuowhXDpUsy1p4VAMOKn2KqtY9VStwTr4drVbwN0Rhlq
         9rhWGiFP/juh5QLiewy0CtZp/Lbs8cF7HaOIpQ2sb3YdU1Z0o7FC2OnxeaJCZVeTIdgx
         gP/sU1RbCPJjwaL67bKxcOcTuY7FXHqCMMp6XxmSmcr/6lsuL/P1LEnddVgXqI/EFRWA
         tGClBIognizH0f3Gu3dMar5AXGKa0mQ+0Sj9ZOGBmOEYOxvXEl3E3ljyQZsKSKA+5m5z
         oDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341802; x=1705946602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bL2H7reoMcPi3uBP4KeHH3g8bOfzdA82F3sl1uK93S4=;
        b=KyTOUoa7WG8S8SNIiVuNYzE2Qhq/AAPqg2UJCzkYfQ4w1VQdxI0Iq3jpz1ca9Dnpxa
         hA8UZdfOS9P1MkcrHk83iMNsjFsWm1AIfBj+xigeN4x2bmrOS5hiMAZf9FgLp6FQhxmx
         JDiaeUWJj3A3jgJfpmyPcv8GU+7uy5wWrHMEstZTa/011sr9mvG9ablM/oGLUTqQuMOH
         963c+ac/rwMw3Nb5y59Ud5qQmm1nJHI0kgHfyVBbc7r35qrqHVw6/aTkHaoRrDL8ub7D
         YcjKDnR513yQDkXzQ1QWklLIous0mebrG3W2D4MH+ci/Vpiw4IS7Pz0rnh7sx5h6pGSn
         i5NQ==
X-Gm-Message-State: AOJu0YzfjWXd9YWFMyaOOH2bpqxkLwHKk6faFpxTLndRsuNum6flkLH5
	hiy0B1g6RnYvcUABBqDQ70a2JZEKWzE=
X-Google-Smtp-Source: AGHT+IGEbAk7GfJertXM7AaVqud/mS6+OSvwNlHbrQvOLEY/YQZzKsVWuUf5uwNVVRGeOj8Eu90jEg==
X-Received: by 2002:a62:c106:0:b0:6d9:b385:26f9 with SMTP id i6-20020a62c106000000b006d9b38526f9mr2744610pfg.2.1705341802483;
        Mon, 15 Jan 2024 10:03:22 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:22 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 0/6] Recipe Reporting System fixes
Date: Mon, 15 Jan 2024 10:03:11 -0800
Message-Id: <cover.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62153

This series fixes some syntax changes and other issues which have made
the Recipe Reporting System non-functional synce May 2020.

For now, the rrs/tools/rrs_distros.py script is commented out of the
rrs/tools/daily_run.sh since it requires changes in oe-core that may need
some discussion.

The other scripts which are part of rrs/tools/rrs_distros.py are now all
functional and have been live tested on layers.openembedded.org:
* rrs_maintainer_history.py
* rrs_upgrade_history.py
* rrs_upstream_history.py

The results can now be seen at https://layers.openembedded.org/rrs/

This series is applied on top of the previous "docker-fixes" series.

The following changes since commit 662ca9a4be52a21ed03e7421b51e5c1e1ef9afb1:

  docker-compose.yml: drop version '3' (2024-01-12 14:16:22 -0800)

are available in the Git repository at:

  https://github.com/moto-timo/layerindex-web rrs-fixes
  https://github.com/moto-timo/layerindex-web/tree/rrs-fixes

Tim Orling (6):
  rrs_maintainer_history: new override syntax
  rrs_maintainer_history: fix syntax
  rrs_upgrade_history: remap new srcrev fetcher API
  rrs_upstream_history: allow skip update_data
  rrs_upstream_history: fix get_recipe_pv_without_srcpv
  rrs_upstream_history: fix get_upstream_info

 rrs/tools/rrs_maintainer_history.py |  6 +++---
 rrs/tools/rrs_upgrade_history.py    |  1 +
 rrs/tools/rrs_upstream_history.py   | 30 ++++++++++++++++++++---------
 3 files changed, 25 insertions(+), 12 deletions(-)

-- 
2.34.1


