Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9212C433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 14:16:14 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web08.12017.1656512173832544980
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 07:16:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=wRCzZaY2;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.169,
 mailfrom: steve@sakoman.com)
Received: by mail-pl1-f169.google.com with SMTP id c4so14241426plc.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 07:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6i/kVz9+CKd3xvNSfsGZoWw1c51lqbuLsORJM/ktV2k=;
        b=wRCzZaY2KwU+fGAdQdWrz9UuI3wBY8mCt2tBRcOQtacLrkUAV/sysk83EDVYwp0C+I
         wigo0XNbk7/6csqqf8K7EMeixPyiNbzdaOnmw9uN9AvGIHxljPWqDVoDuVId5YLWlW+h
         dd1xqa0fA4U4lZsOuAaEgROvvxqXVc3RUUv3TiNDin+TmaeXG+k2SHzf2Kou3FmiHyTS
         TuFpZUUakOy82brWp39PyHt1XD72eNtHKvsI5hMjG7vXunC1l1nmtNCI7rjrcFML9Gwx
         ib5s2KObcvz0UQELt3aY3Dgo8lBfg0mFrq1C9q+rVsMTUsmmhcuxxiDA9SmUV3zgtxwS
         8YdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6i/kVz9+CKd3xvNSfsGZoWw1c51lqbuLsORJM/ktV2k=;
        b=NXEHZIM3q+bRWHeDciqwRVh13/XUq1CEMkOrRXI6K9Ky+8IwFR1DSX09v3Sra66CyI
         c/ZhNPEr7W6SitDKKaNUsbjBULZIesFZ1wiu3RqwLUv3Yg463UuXaRgfMQBYI87oqWB9
         8dkowZq5SjISYrOTwHSCetFYbzndPl/NBy27vrAs61EjctZW56QK2d68Wo5UpZFN6tpZ
         QMVkK62/MQ66qtF+s1X8R5BX7WIiwUjUPHxQ2FLladuJWVFUhdCeu+UsjY/cReQ+dLw0
         d2H2R6w+qrwe55YW06osHOjccAvYfnhh7LbgAvWzBrnBgltpJ23cF5gWY5mw/sq2/Ch6
         bV0g==
X-Gm-Message-State: AJIora9xDL+IaB2Op69UGvMQ9lRn4/X0foye2MdqSGf55AZfRhgfKS6g
	27tMs1QwGKiI4Q7v5yU7VW0QCVlzXUQ4JjVC
X-Google-Smtp-Source: 
 AGRyM1uwvnY9FaiPl+VGNZxsF7W3H9QOkBt0kJtOR8NOvubpUUf14rjETppwWVTIXgfKRZ/+iQiZUw==
X-Received: by 2002:a17:902:e881:b0:16a:39e4:c5ef with SMTP id
 w1-20020a170902e88100b0016a39e4c5efmr9531832plg.114.1656512172443;
        Wed, 29 Jun 2022 07:16:12 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 b7-20020a62cf07000000b0051835ccc008sm11627522pfg.115.2022.06.29.07.16.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 07:16:11 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] config.py: define workers for kirkstone
Date: Wed, 29 Jun 2022 04:15:57 -1000
Message-Id: 
 <6cbe638cd01ada2bd638338e2ccfe131626684f0.1656512072.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1656512072.git.steve@sakoman.com>
References: <cover.1656512072.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 14:16:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57424

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index c3c21f1..00f7e70 100644
--- a/config.py
+++ b/config.py
@@ -152,6 +152,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
+    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.25.1


