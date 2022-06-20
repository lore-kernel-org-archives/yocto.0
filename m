Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95922C433EF
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 04:23:10 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.26244.1655698987064324513
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 21:23:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jDp+QEsg;
 spf=pass (domain: gmail.com, ip: 209.85.214.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id i15so8662946plr.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 21:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VRk8CEC4CELDONqGz2JeqQeFASNy5p6zqaqB59Ks42M=;
        b=jDp+QEsgh2DPzpAQFxYcBHzIvuS1MlhLRixdpLyALjnI1itqBizeg6o5CM5ELds1hq
         GEiOIoAcQ3CCb7SORcoX9Y/i9NHcJxaIxo6pnV5qw+Y8qWwOi2TwQ2VRqJUEqYIZxebq
         WWHOlV9LTIpE0OwjNf89JNW7KTmKX/W4MlF3oX5fJv1Wh+ZuvOkQC0ZhUdrplIbupnBe
         bSJRwqxdTX51vw9qTu1W0h1dDArnN5WpmpSoDLDj0LZC5SxVn8XI+j3JNUS+bEUqgakX
         oB9GhSGlg8C1hYq0j417Yubgm/+gXi4GcEUDjwq0hkX94w1e6UiSRW/irMmn0QK9rdxh
         zZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VRk8CEC4CELDONqGz2JeqQeFASNy5p6zqaqB59Ks42M=;
        b=7yNBWuTz7Qgwhhzr54Al9G39xnEwDVOvm16XGiSYph5waqH0F3h4YlHvBoKJK/IPnf
         Go1VrchPpIGMykF2NWDiEvF+/B5go7uZTRQyNM5/tJbLnLuI5BTW94zCe3Cm5MT1ipHe
         rfpTcjw78c37l6BOUQ+ba03AH7Jj8839465k3nMsv28dA+WsvPlncLzWTWw189tF0l2G
         i/OyOJZWWCSc0BV8X8yhxdnfaAhDUbYaYptUblXRDzHQh8XuJZ2FxoX9Nk3qLQgAbUIg
         Hxe4obKT9o4ZJuVM1cbripreDuDXyyQtGk56CKtIKhVoBKKeZxbahMP+5fWgymV2Hlg9
         3J4g==
X-Gm-Message-State: AJIora/4THjuA1cuQmEpsrWC+UjXirMMBZvloIWsLmg4t8maMm7Ax3V6
	mxs6UdkVbzAjpMa0Y1mYPLnDHFkzlt0=
X-Google-Smtp-Source: 
 AGRyM1seRBNQVp5tIB2P2gfGCFwu+yPIpq7ApiGnVkzegBPnZ4qjk38quPRSlEJXPFs98a8nS4+RJA==
X-Received: by 2002:a17:902:6b45:b0:168:d421:f7a8 with SMTP id
 g5-20020a1709026b4500b00168d421f7a8mr22133568plt.36.1655698986023;
        Sun, 19 Jun 2022 21:23:06 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 ix6-20020a170902f80600b001615f64aaabsm7464773plb.244.2022.06.19.21.23.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 21:23:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] ccs-tools: update to 1.8.9
Date: Sun, 19 Jun 2022 21:21:03 -0700
Message-Id: <20220620042103.1000026-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 04:23:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57359

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ccs-tools/{ccs-tools_1.8.4.bb => ccs-tools_1.8.9.bb}     | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)
 rename recipes-mac/ccs-tools/{ccs-tools_1.8.4.bb => ccs-tools_1.8.9.bb} (88%)

diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
similarity index 88%
rename from recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
rename to recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
index 8d148bb..ff800ce 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
@@ -7,11 +7,10 @@ LIC_FILES_CHKSUM = "file://COPYING.ccs;md5=751419260aa954499f7abaabaa882bbe"
 
 DEPENDS = "ncurses"
 
-DS = "20150505"
+DS = "20210910"
 SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
 
-SRC_URI[md5sum] = "eeee8eb96a7680bfa9c8f6de55502c44"
-SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f16746324b4"
+SRC_URI[sha256sum] = "7900126cf2dd8706c42c2c1ef7a37fd8b50f1505abd7d9c3d653dc390fb4d620"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.25.1


