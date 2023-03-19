Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43385C7619A
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 00:40:58 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.9188.1679186448891114536
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 17:40:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XOoxlHTA;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id t13so5744353qvn.2
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 17:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679186449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wi1vEFFnYFsgbr9JlW4XKgl9zdKWnIOiI9RN30jZgvA=;
        b=XOoxlHTArlc4q9U6keGeTIQv32pG1ISCNQqEA4RB0lfaXGR2ltv5A+0dURBGetR94a
         Dr3VCnYaxCKD+o7cXRF6Fu8P5AAuYZ5NFPITzp4m8r68CS+N7tAD38mdy/qwhrxnSN7H
         DAx65UONOnXD3rYoY5Z8JGEYNQfZQQd9q0TdbxpAawGAdjg6z/992KNB1FBfu4k/6Q+A
         d3LwsCXQ8loa96g10TYlFx0/Q4EGrRHKy8JA63sL97qxcu3mLTjyJeRB2Ogxv5ddePVi
         hpkG5Zi7hZPFx5P1gWmCCZ8AzKImarr+iCGrY+pR9TtNNaSfgJ1iHqbsMOTGz5YerMsv
         W+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679186449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wi1vEFFnYFsgbr9JlW4XKgl9zdKWnIOiI9RN30jZgvA=;
        b=ypucaSRinsNJ726+ZCkD3FYCsSugheyGwUlxVK6h2GlK4fck8ZdBB5oNcTpMedB7bF
         xwA0MHW6EdYtBgC3sCBdASgFS1CImnaAwppHPjHFN9Pd/Xn910xjLhkZQQgvjIBZGElO
         yql0zBxdjzO9hnmQCQlTKoGryjZSdm47jOAmsRDkj4WreHOOPwDRNJr+he82mppdSEFO
         eC2cmFfNXeRjWHr3Cq/tsD65OF8N143ZzWFQoQOb4OwYpyUEL3P8A21Ia90hHUxVbIj1
         +BrScGUd1atEZQd+mgtHs2muivps0IoAItS2Vr/NJhVk2dkYNnUsA3WmGcvWA6E7nJV6
         cRvg==
X-Gm-Message-State: AO0yUKU5KdiKHGGqTW1oyKt+akbXxUwLQsvnNE708zC8K34NYy7a1xRe
	DoizBfgveEjy9QrFoQYW14JWGF8evsc=
X-Google-Smtp-Source: AK7set83AcGNJXV2SiNNLP89c+DHofepvce5uATvWA+hi7CeAKPXtLkacbzJDIPFMzczi5enQSaELg==
X-Received: by 2002:ad4:5bc4:0:b0:5be:9011:4145 with SMTP id t4-20020ad45bc4000000b005be90114145mr9401408qvt.37.1679186448865;
        Sat, 18 Mar 2023 17:40:48 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id s10-20020a05620a16aa00b0074341cb30d0sm4454600qkj.62.2023.03.18.17.40.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 17:40:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] cryptmout: update to 6.2.0
Date: Sat, 18 Mar 2023 20:40:46 -0400
Message-Id: <20230319004046.620053-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230319004046.620053-1-akuster808@gmail.com>
References: <20230319004046.620053-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 00:40:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59465

Change LIC_FILES_CHKSUM to use COPYING

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptmount/{cryptmount_6.0.bb => cryptmount_6.2.0.bb} | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)
 rename recipes-security/cryptmount/{cryptmount_6.0.bb => cryptmount_6.2.0.bb} (83%)

diff --git a/recipes-security/cryptmount/cryptmount_6.0.bb b/recipes-security/cryptmount/cryptmount_6.2.0.bb
similarity index 83%
rename from recipes-security/cryptmount/cryptmount_6.0.bb
rename to recipes-security/cryptmount/cryptmount_6.2.0.bb
index d712a61..d815e1d 100644
--- a/recipes-security/cryptmount/cryptmount_6.0.bb
+++ b/recipes-security/cryptmount/cryptmount_6.2.0.bb
@@ -1,12 +1,10 @@
 SUMMARY = "Linux encrypted filesystem management tool"
 HOMEPAGE = "http://cryptmount.sourceforge.net/"
-LIC_FILES_CHKSUM = "file://README;beginline=3;endline=4;md5=dae0772f0ff46fd927e7fdb08af51b71"
+LIC_FILES_CHKSUM = "file://COPYING;beginline=1;endline=4;md5=6e69c425bf32ecf9b1e11d29d146d03d"
 LICENSE = "GPL-2.0-only"
+SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-6.2/${BPN}-${PV}.tar.gz"
 
-SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-${PV}/${BPN}-${PV}.tar.gz \
-           "
-
-SRC_URI[sha256sum] = "86528a9175e1eb53f60613e3c3ea6ae6d69dbfe5ac2b53b2f58ba0f768371e7e"
+SRC_URI[sha256sum] = "90cc49fd598d636929c70479b1305f12b011edadf4a54578ace6c0fca8cb5ed2"
 
 inherit autotools-brokensep gettext pkgconfig systemd
 
-- 
2.25.1


