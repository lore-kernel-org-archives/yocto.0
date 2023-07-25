Return-Path: <lukegb@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6530DC41513
	for <webhook@archiver.kernel.org>; Tue, 25 Jul 2023 14:17:34 +0000 (UTC)
Received: from mail-oo1-f74.google.com (mail-oo1-f74.google.com [209.85.161.74])
 by mx.groups.io with SMTP id smtpd.web10.21448.1690294644620718827
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jul 2023 07:17:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20221208 header.b=nM9UDdfR;
 spf=pass (domain: flex--lukegb.bounces.google.com, ip: 209.85.161.74, mailfrom: 3c9m_zaykbvi5e4y0v08805y.w86i8wd852cdc.i8wd89b83ywd.8b0@flex--lukegb.bounces.google.com)
Received: by mail-oo1-f74.google.com with SMTP id 006d021491bc7-560c7abdbdcso8954886eaf.0
        for <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 07:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1690294644; x=1690899444;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JPbcNB6rfmJQrv4y7f/Gscc7DSpjhFLCjHl7J5xwolw=;
        b=nM9UDdfRdAYZoz5GNZqGhZktraYpNT0KnEdotSohmDMisW0AF+ugbOk0cEZpcK0iid
         8FNVM0CbNYo/ovx2wGCG8F6bJJwrY0ci9BZ2ks+S+suqj94zGIt7r1LAJK+ngMeo9EPI
         mcacDvS9BT6z1S9F2HKh+Qw5oWNMYgFY81sCiQTL3s3//5o6JqatSQc/HWB9FhiLlDGM
         HjDSpxh8Ddptn02xmw7x67ZgtVISaLT6q/9UaAt53v8fbF6Zn3DCa8poTI7KCKgtSMVS
         DhxLEmHCIZDt0XNSg+TbyTH5Lz/a3lSt/HqRpc3kzEuzc12Iy2eKba44AqaJcYmRW7MP
         m8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690294644; x=1690899444;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JPbcNB6rfmJQrv4y7f/Gscc7DSpjhFLCjHl7J5xwolw=;
        b=Wltgebi4eNQu4ttQ5wNO8P28AApk4Ti1/3y1ViNDun6BCIhyOk9YU2UNsMjQYvGaMt
         cwKfDWFgpGJDrJ9uUQ7fWfWXShzWTX65c5SB+d114uLOhXebs0YV/+yGjdL188oIF2R8
         +cOCzqBv8aNFjdcMZ5T4eLAIKP1beevcTw4mgTyVctO4SnSjfU/5c0ynKakFKh7Bhao+
         00tygYDY4XYf4JWpwzbH5M4bA9dPDzn43K9DtUeCVyARIqQzUdLQSUdgqpEu7anQxDaP
         gGuc1nOjuwSpS/HOJoE2crA7BGifGr9xuj56e7ukeCdTMYhDvqE+VW/v2bRojmpR5t3n
         FT4w==
X-Gm-Message-State: ABy/qLaYASP5LgXXsoz7kcnCTLXTlop+XmMv6LwAi25DW84Q58ffp6yy
	TvfuxJehzGTbGf3u1N2LSdcwf55J53jB/Uyyaa2QktCTvxpmzvuuCDlT3LAp7loDFk0BPJ3mbhn
	v95SJjgP/NbPzsbS/Uc53ipBLcICqxqHj8zDjmVRKQp8ih9Z5NLYmUWauhWRR45ctEe+G8g==
X-Google-Smtp-Source: APBJJlE12JKqMNG1lTohDY7zpj/gNXnmhQMD/VrPBUslaMDZ1DnxddRSum9MZmEcI/bFgGI2W51XST1dY+Y=
X-Received: from mehve.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:28c8])
 (user=lukegb job=sendgmr) by 2002:a05:6808:2189:b0:39e:b6a2:98c7 with SMTP id
 be9-20020a056808218900b0039eb6a298c7mr24414579oib.8.1690294643843; Tue, 25
 Jul 2023 07:17:23 -0700 (PDT)
Date: Tue, 25 Jul 2023 14:13:13 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0
Message-ID: <20230725141313.1446500-1-lukegb@google.com>
Subject: [meta-security][PATCH] glome: update to tip
From: Luke Granger-Brown <lukegb@google.com>
To: yocto@lists.yoctoproject.org
Cc: GLOME Team <glome-team+yocto@google.com>, John Edward Broadbent <jebr@google.com>, 
	Brandon Kim <brandonkim@google.com>, Luke Granger-Brown <lukegb@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 14:17:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60648

Testing?
.

