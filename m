Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75FBAC001DF
	for <webhook@archiver.kernel.org>; Mon, 31 Jul 2023 10:28:46 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web10.4272.1690799319377421520
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jul 2023 03:28:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=SnoSG5ch;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5841be7d15eso51115157b3.2
        for <yocto@lists.yoctoproject.org>; Mon, 31 Jul 2023 03:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690799318; x=1691404118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=WfX7B9ybn1v2zY/enWNYKjO1rNwdPYQtkI+UrN6Cw5E=;
        b=SnoSG5chOjfq8A5JG0rGGwC7Prka4Ao1LGKewmh5rMDLmL7Jttg/f5dmmomZ6BDnEZ
         BK3EMfDz0E0BeHlZoKprZAkkR0WVyzwBKPhjF6HZtUSSP80ynGJV/Rv65K4VvL1vxhPX
         BIZDT6o4y22lPgss1Y+Nk9dG0JnWHUVhw+ZgubDJJH0DZFROvBr5tTWpkv3VYg+zTmed
         j4QoInsSN5CrCDiNXcZvtPTS3XGd7JMrd8Tc5sZlA42yzNKEDI/LWI8sy4HrwvBVq76I
         4WIOqBWDK+fVshBpbspVUArD1u98Z+2J8FEGVbHngd/jR/oUrChJeFsbPa69orjX2rzc
         mnYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799318; x=1691404118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WfX7B9ybn1v2zY/enWNYKjO1rNwdPYQtkI+UrN6Cw5E=;
        b=MKHVM2vfgYJKnROAZiV3ZW7bw0meWM++oDF1JtPnw7hgg8R53zYDyUsetEAbMf9TXQ
         NCYPElro3dKT3GkyG1kHFA3FiI880OEgV+h/s38SubVFykENGd+EvvKldcrOHBobBtS4
         1n637EyDY8zv2/UpOPweqday1EOrUFAuhrsPL9QhHSMjrLtshi+lYxxBsMJ6/PPkuZ3O
         4QyG/TqCDT8EXyUtWhijANdSa3shncLkQ62u6VOhmxE3hb0HCqzNYTU0qw0R9SJh9Mf0
         lQVhuJMjHXbkrXGywFkjumzHh8YsLP2s2U2aWN7RrdjG5yvxQZzQkmYTiqfqH2sejLwM
         hL/A==
X-Gm-Message-State: ABy/qLYO2ii2pcQU1/o+E/x50eVtTPoB39NXE1KIxuHo+RD7yY7mnG1l
	N2SXV4V8qiwnAxm/GbfNUMi/d4qcvsQ=
X-Google-Smtp-Source: APBJJlGakDr4SlmeKgBONTqau/fd1biBqKjXllAJVOzI+Y9OGxcVZjUfcbj1qGhm+3wDMq3DYFwO+Q==
X-Received: by 2002:a81:844b:0:b0:576:98e0:32a6 with SMTP id u72-20020a81844b000000b0057698e032a6mr10628709ywf.14.1690799318107;
        Mon, 31 Jul 2023 03:28:38 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:4bc3:732:c84f:6e7])
        by smtp.gmail.com with ESMTPSA id b185-20020a0dd9c2000000b005837fe8dbe8sm2940577ywe.8.2023.07.31.03.28.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:28:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] sshguard: Update to 2.4.3
Date: Mon, 31 Jul 2023 06:28:36 -0400
Message-Id: <20230731102836.122208-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jul 2023 10:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60689

Changelog: https://bitbucket.org/sshguard/sshguard/src/master/CHANGELOG.rst

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../sshguard/{sshguard_2.4.2.bb => sshguard_2.4.3.bb}           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/sshguard/{sshguard_2.4.2.bb => sshguard_2.4.3.bb} (79%)

diff --git a/recipes-security/sshguard/sshguard_2.4.2.bb b/recipes-security/sshguard/sshguard_2.4.3.bb
similarity index 79%
rename from recipes-security/sshguard/sshguard_2.4.2.bb
rename to recipes-security/sshguard/sshguard_2.4.3.bb
index bd7f979..37b414e 100644
--- a/recipes-security/sshguard/sshguard_2.4.2.bb
+++ b/recipes-security/sshguard/sshguard_2.4.3.bb
@@ -6,6 +6,6 @@ LICENSE = "BSD-1-Clause"
 
 SRC_URI="https://sourceforge.net/projects/sshguard/files/sshguard/${PV}/sshguard-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "2770b776e5ea70a9bedfec4fd84d57400afa927f0f7522870d2dcbbe1ace37e8"
+SRC_URI[sha256sum] = "64029deff6de90fdeefb1f497d414f0e4045076693a91da1a70eb7595e97efeb"
 
 inherit autotools-brokensep
-- 
2.34.1


