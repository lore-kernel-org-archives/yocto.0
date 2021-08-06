Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.7519.1628269008021973905
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 09:56:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T7sk6QXL;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id js7so5239723qvb.4
        for <yocto@lists.yoctoproject.org>; Fri, 06 Aug 2021 09:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ScSxnsJqAeUWj4g9nsilvzU7rNbjYzmyGMfyqI8lnfk=;
        b=T7sk6QXLro9UoLN6xj90PZSlUcUgwmVbDajqgPJOWgaGKENzwBTgdWCbT6un8Ik/Pd
         AcQEgIzLP0pyP2pKYcr+uVEImP0KoPX5DYOQgYmo/qwz4EhHFrVWuSp1ufKg4bjg9TiH
         P05x45T/upXDMXIZQc5tpIsuWwBKvBBmqjyfr9JCE/HlvS9FbIy4rod6GPcOpD1+8pnm
         xGR+CyoDPOh5aFahIbJp8/0G6LIAWYHPWWYOvNes+0SydHcbE2fcnFNSeyEVWU0ibOOX
         sjqmD9DwIPaYntaRBDp1QPR3d3gdO4OE+mvMvayYLUAoYi//u6fToFXOgGecIBr//KOi
         vyXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ScSxnsJqAeUWj4g9nsilvzU7rNbjYzmyGMfyqI8lnfk=;
        b=nnJZuBfIS5pSwF6J/1PStFGeOPZF4CiNdvwGHaD/X0At3iAdLzltdjRvP9Hi3aEWww
         a+xhFmCRXauUl7Pc6Mepg5+PW2ArFnuMjw+2v/B8qtOPeqjQ6Ut2KHsBSpik1oTmui0u
         QeHxmfTkYKajYdlu1Wdl8xXE1Bp0l/SddzqJ+4gb30WNMrjx4T0LMIJkvVGRuS0Mzv1I
         bbkLeDCNIOly9y+Y3SfyIQJ7XUYj78WRoLzAu+6R01N49J2eaKTNunZ1EogDYfMrY/zf
         Df2sLiK9ZNCcWqUDOwFgbRSX5OqHal6ToLbEHQo18WluQJRMac384KmJs66o5f4Abshb
         tXkg==
X-Gm-Message-State: AOAM532soqQvi26ucQNwUV0lCM1zQtqxmzhg+2UNm3hxLRweKjAQcriP
	xWt1FdrZTJXNJijjwdxUMhBozG5Raww=
X-Google-Smtp-Source: ABdhPJzgxV8oiz/Bw7J5+mFQxy3AXeBc9xSEds9a6uYw2AJsBsS25L+PuVNMkxU6ouCG49yMl9VFJA==
X-Received: by 2002:a05:6214:301d:: with SMTP id ke29mr916950qvb.30.1628269006902;
        Fri, 06 Aug 2021 09:56:46 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z6sm1056038qkl.72.2021.08.06.09.56.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Aug 2021 09:56:46 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rockchip-gpt-img: fix for new override syntax
Date: Fri,  6 Aug 2021 12:56:44 -0400
Message-Id: <20210806165644.2393-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It looks like I missed a case for the new bitbake override syntax. My tests
weren't done from a fresh build so either a preexisting image was still
available, or the unfixed syntax caused a race.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 classes/rockchip-gpt-img.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
index 434c100..b698db0 100644
--- a/classes/rockchip-gpt-img.bbclass
+++ b/classes/rockchip-gpt-img.bbclass
@@ -9,7 +9,7 @@ IMG_ROOTFS_TYPE = "ext4"
 IMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.${IMG_ROOTFS_TYPE}"
 
 # This image depends on the rootfs image
-IMAGE_TYPEDEP_rockchip-gpt-img = "${IMG_ROOTFS_TYPE}"
+IMAGE_TYPEDEP:rockchip-gpt-img = "${IMG_ROOTFS_TYPE}"
 
 GPTIMG         = "${IMAGE_NAME}-gpt.img"
 GPTIMG_SYMLK   = "${IMAGE_BASENAME}-${MACHINE}-gpt.img"
-- 
2.30.0.rc0

