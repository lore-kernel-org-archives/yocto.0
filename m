Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D355EC64E70
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:00 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.34358.1650239506831768661
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 16:51:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F3lpVhXu;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 u5-20020a17090a6a8500b001d0b95031ebso5688451pjj.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 16:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ONf6JIytGI2hmJfbWif/z8B89o5NqCGxaS2wQqCevTI=;
        b=F3lpVhXuDr+9NFfPzv8bYxHBU4dK0Jks73w4MYzrRNsVPkuZ2XFZkQCy0E2c3meHNP
         pAvk1w0Imn2rLq0wlCKM/lIJwZhVO2HR5DtPRkcSr9Z7vrFFLM/s8YL0oLmSjbJUBONz
         vTwooOT1HTMKrJTXLXmJ8XtB/yHWvgaDDGrZmKuBnThV9GsgEseXZ3yB4i77jTFLkon3
         vs9yEYKTpfQvBV7SFSjFsBJyAGFgq1NeyyzbTgi019dPplLeSaZt5D0kljyT14n0hzR9
         kXBZtwNHSqSLvK++sXFZf+v/+4CJpo/fFLJ5ttbqvwgChz8AByI4jzbORgAc24bpYL/y
         jnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ONf6JIytGI2hmJfbWif/z8B89o5NqCGxaS2wQqCevTI=;
        b=hO9Q/Hj4V2WwNS9M1vcWKhHZCwl4fEg18HGihRpuFtSYPrQVyKtNln62z3HXaFx1pK
         6HjAsGBkslkEFDf02fMuWpGkvk4EH2muyUvWX+CvKvPRKvNRezIw9KkkDLFmdbusgwbY
         cTz6RhW9YCfzMzx24o2Ty1T1tZWWoDFvEv84m9f3ZffXjbCRxHIJNL8PNKHkHfNwh0Ie
         qWWH9S1jsInHYDtj8UsjGv1XAdecJHBGE7dxpsED/UIdT1zL1IkBEM51K3nQfNqeWvM4
         eRy3DLv17eGOPRurMghiIukW0yxaWO6/V2iRyLugwOUOZ0btXzHXujfw4yswGz+HDU53
         s3ew==
X-Gm-Message-State: AOAM533AaoKgnoYYO0aLYuNuqZV51LykecUSmELmL6ZW0/DSIJh7hPQ0
	fhVSZ2jzl2erJqi9uxbzC/XFwvA48Zk=
X-Google-Smtp-Source: 
 ABdhPJxRdgpndeRteG79tE0yCKlX9TnXxlDfK5D739VEMYzSFz8OHd9oh1rO6m6gX79sBvStKStpRQ==
X-Received: by 2002:a17:902:d2d2:b0:159:118:e10e with SMTP id
 n18-20020a170902d2d200b001590118e10emr1931506plc.102.1650239505793;
        Sun, 17 Apr 2022 16:51:45 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:2941:56cd:748e:4135])
        by smtp.gmail.com with ESMTPSA id
 y13-20020a17090a390d00b001c995e0a481sm11197767pjb.30.2022.04.17.16.51.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 16:51:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH] chkrootkit: update SRC_URI
Date: Sun, 17 Apr 2022 16:51:43 -0700
Message-Id: <20220417235143.4081706-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56796

0.53 no longer hosted from main source. Use Ubuntu archive

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/rootkits/chkrootkit_0.53.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/rootkits/chkrootkit_0.53.bb b/recipes-scanners/rootkits/chkrootkit_0.53.bb
index 4536be3..8d4b3b5 100644
--- a/recipes-scanners/rootkits/chkrootkit_0.53.bb
+++ b/recipes-scanners/rootkits/chkrootkit_0.53.bb
@@ -5,7 +5,7 @@ SECTION = "security"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=fdbe53788f7081c63387d8087273f5ff"
 
-SRC_URI = "ftp://ftp.pangeia.com.br/pub/seg/pac/${BPN}.tar.gz"
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/c/${BPN}/${BPN}_${PV}.orig.tar.gz"
 SRC_URI[sha256sum] = "7262dae33b338976828b5d156b70d159e0043c0db43ada8dee66c97387cf45b5"
 
 
-- 
2.25.1


