Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.218.1619197136843184212
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=YPKMyVkq;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AD71A38C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:56 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id e7so40064332wrs.11
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oA9zmYihLwlVqDZAuCWSfoTvjIW2iL8GQFxeOYfebIQ=;
        b=YPKMyVkqsrRfoLXcBScdMeF/dTwyucEDu6iOBAom6znDiczKR0k5VA94h+v/tK5phH
         ikXJUulXDpXvCMy0MwwrYdfGMkwL7r760gODIF92Ow6uCTVybJnGhm/MP9FgAo3YWHCB
         pSabMah1qtrY5645sBrdJbRk24zyuOY53ipvKRfZgfggLNh4wtYIuTqYswdWlKemnPYo
         0r7Lv/dY373qUXhZLavUIGEqFH6rvuTFtzQk7GyqL+8Eo7LPoqzXzC7XHzz0L7dcXBgo
         fr06Yk8pDrrA4AjD+fUzkdMZe7Cgd5N435Gi/jyPnSZ312nx1STGhTcjIW5R/YU+Ehlw
         IY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oA9zmYihLwlVqDZAuCWSfoTvjIW2iL8GQFxeOYfebIQ=;
        b=ANnDxRAG/PIHVBbVpvuRg7IhktGHDEWN46RtF4vEO6IigsdrvT1HiA0HFDKc4R8mjn
         lAQko86hdyaTQBNdtGOazcIJD10RKJV40v+92z8PUsTLTumkylimF2j1P1TNIddFF8qd
         3wthyE7YMdT4ajiDkjPzdx9v85cFUWTlPFROBTp+3M2jrdketzmQup0uj0TRWKrMFTXo
         fEqSzoaVW5RCziIg2e87EEBYwuMfc1AX5+hBDqpyBNAQOTxkzB6AN6YA7pYiE96+HrXo
         p4kyYPDiNRmq3WpFQQ0QMP28UX8sgA5It1bQPB73UbZZBAV0VVt6+FimpAZIQsj7PIWd
         Q/Xw==
X-Gm-Message-State: AOAM533twZn6TysXNio40MYw0GW9VfTh6AiVy0kHA3P84DvXAogtF22Y
	+7h836y1K7NLNVHrGW5JFZk3TJXezh09Hg==
X-Google-Smtp-Source: ABdhPJxqHmdm/Jtn+ISTzcCcMyQaytTDm5zCYwGeNEBU4kVMOgKfXiX8/UwyI4tfbbevNiEakzv/lw==
X-Received: by 2002:a5d:5407:: with SMTP id g7mr5989252wrv.149.1619197134934;
        Fri, 23 Apr 2021 09:58:54 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:54 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 5/7] RFC: optee: only enable the recipes when "optee" is included in DISTRO_FEATURES
Date: Fri, 23 Apr 2021 18:58:24 +0200
Message-Id: <20210423165826.2229787-6-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This is meant as a safeguard against having optee-os included without the
required support in u-boot and trusted-firmware-a.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 recipes-security/optee/optee%.bbappend | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/optee/optee%.bbappend b/recipes-security/op=
tee/optee%.bbappend
index 9a156bb..ec11863 100644
--- a/recipes-security/optee/optee%.bbappend
+++ b/recipes-security/optee/optee%.bbappend
@@ -1 +1,4 @@
 COMPATIBLE_MACHINE_rk3399 ?=3D "rk3399"
+
+inherit features_check
+REQUIRED_DISTRO_FEATURES =3D "optee"
--=20
2.30.2

