Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10585.1619187475725241509
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 07:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=bUCvjA63;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 86DE538C0892
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 14:17:55 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id s7so48503318wru.6
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F/SBqFd23Xh5XmOR24CgWZg2E62o57tunZUOj/cEy/A=;
        b=bUCvjA63CQykwz4/Daw91jaivtuSSntO7HWqlTVUIAB80Mr7omJQ3RbWymfDZ6OT9w
         8AFXvGxz1Wx7JhN7bKSES0tMHMYdKsxU38RSJWzJAZcppL4MHyU72tQKAWCAlGPLUlWx
         O3McjXhYv9Yt8+Z1QdeHFVjQamJfBCGp3LsTRXwj+xKkl91xKYFD6l4xn3aiNzGLAr49
         CAIEf8U+B1CVK5qCYjI1KjSRWwwXbrmzg66dh4bPpxzvRvT4idt0VwvJcUyTzKwS1V7m
         RiDJLb+aQ3tWsdA+FNU9HiCDiphByn4Jn8pdeWMwDhUm5TP3A/MwZOD/fgQDTiYv5bri
         RNkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F/SBqFd23Xh5XmOR24CgWZg2E62o57tunZUOj/cEy/A=;
        b=iJJBTzpwpXBppOCB50HuTFXkV6g24vPeHj8yVy7zYUNWwJw81XcTl1wNFU7DihWGsO
         dgbxjJVl9IKF/iP5R4zhzMGgZJ5o6jF15Z+mMeghvd/4I9lCYI+GLxdnxhDoCEdq/4Kq
         TUgwh6CjxXobbXd5rVrVGYx9k/z6DE+O2YnggU43Cq8DCUzIjma/KJFM9nFODe2yaeCS
         dKyz6KvVUQoidz0DpD2OmeBGC0+LARo5O0+NOl7LzaQ7LXkwkvM2sn15ZMFMv0KsyEz8
         kX9I0j9gJqATzjfFYMqhs9HUJEh3KoKntvpJVq9ZNiXMaeE0LStVnUXLWRil9VXNXwLg
         ei+w==
X-Gm-Message-State: AOAM530dczjwOREnogyx/LKkP8VpT6GoPEnOt4WUBKPgCIXr4T9HnElo
	2W5W1LW1IAuprIixjjjiRarQ/UeZwr+otQ==
X-Google-Smtp-Source: ABdhPJx/0uWgKJhVF/cPtCLwgCcND/JfWAGo538WQRDkRX/wTUiF7MHmOSebCDWOW2YPGVmOB5Lfkw==
X-Received: by 2002:a5d:43c1:: with SMTP id v1mr5070065wrr.419.1619187474319;
        Fri, 23 Apr 2021 07:17:54 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id t14sm9432928wrz.55.2021.04.23.07.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 07:17:53 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 2/3] NanoPi-M4: declare "usbhost" in MACHINE_FEATURES
Date: Fri, 23 Apr 2021 16:17:12 +0200
Message-Id: <20210423141713.1970329-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423141713.1970329-1-yann@blade-group.com>
References: <20210423141713.1970329-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Lets USB tools be installed if the distro activates the feature.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 conf/machine/include/nanopi-m4.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index 603160f..1a16eae 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,6 +3,8 @@
=20
 require rk3399.inc
=20
+MACHINE_FEATURES +=3D "usbhost"
+
 KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
=20
--=20
2.30.2

