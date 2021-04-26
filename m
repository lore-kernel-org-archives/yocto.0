Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.8085.1619449145973516830
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 07:59:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=bflNntM/;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8A39038C11E5
	for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 14:59:05 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id a22-20020a05600c2256b0290142870824e9so832160wmm.0
        for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 07:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lh+TvrzzmHWQUgCqkBkbJuFGXGu5yTsrNB7ikz9Ks7Y=;
        b=bflNntM/13hsXjJ8Xj5JD6jcIZssEj6h1N0ozIfcKG/ZkUiyLv92ARPtpQwx5Uu8MB
         NZTtzKh6paBjLAS9M4wZEo+z2G/aLdiMD6k3XyLCitrh5Txa7ayVa1Z6Nj2aupFX5hlO
         rZwJLwqJ7Rtj++J2+w6KTFR4jPeKFCBWNGyscaA++fTRjRZZcW+Y5PIGa/3mryySF7z1
         NWC4HsALt1f0XQ29WdwXxQxgnohIKefGRr8Jze4ot7MLa7hDFCRYUTRO6n3iZUC8WJJH
         xurjWqOncAIVFCmoI6ImIVTk9fMWdXT01FI3fSrAgbHRUGDUsWzOXT4Esn+9DaF7l3gP
         5wzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lh+TvrzzmHWQUgCqkBkbJuFGXGu5yTsrNB7ikz9Ks7Y=;
        b=JCYyRB5EnjsqFb5QTPus5XKOnuAjd9xV0cUVFU2KxuNJk4pKynCM33tGDIS1jD77LN
         hXmkribVcjxmX7XmOIvGik1kWGn25kTGNIsyg9IkR0w1Nuc0lkKzXvVEp4+/6B0uUADA
         frsIAyeDc5HsZ0TSMrdM0dMvt5XKDv5KSYJYwLHm9n1GVd9iHj4FDNtnaVxqVaZDz+Vo
         F2W6//1OmKDOUu9FdMZjLDFOQ5oZUjV+tkSHVTO6KDaSPsGpvuJHJnBu/4daKWKr2qTD
         VfENRNTl4rzKE6gpheYMyGrb488zf/n49wyCXWDuA+xwoyk8OiRbqYy3hAzu1C7I1TJZ
         OFkg==
X-Gm-Message-State: AOAM530c7xO81bvoGvPwMToF/cSr3NaafzHVdXBxM6KcFPnLUQl4dwUP
	1ulUPtb35Qz0lBTBfnqxkN4oDqKPy7g1ZA==
X-Google-Smtp-Source: ABdhPJw4D9nToE0L6H8RpMBKAfCzeeobvKUNvIDub1QGt4eU71m41vFJEpFc3pDd/tbV5YtXajKr7A==
X-Received: by 2002:a05:600c:4ecd:: with SMTP id g13mr1650491wmq.173.1619449144270;
        Mon, 26 Apr 2021 07:59:04 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id a142sm21115484wmd.7.2021.04.26.07.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 07:59:03 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v4 1/3] NanoPi-M4: let all variants use the same KMACHINE type
Date: Mon, 26 Apr 2021 16:58:08 +0200
Message-Id: <20210426145810.718821-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210426145810.718821-1-yann@blade-group.com>
References: <20210426145810.718821-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This will allow us to define a single set of kernel BSP for all
variants of the board (which only need to differ in u-boot dts).

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 conf/machine/include/nanopi-m4.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index 74cdae8..603160f 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,6 +3,7 @@
=20
 require rk3399.inc
=20
+KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
=20
 RK_BOOT_DEVICE =3D "mmcblk1"
--=20
2.30.2

