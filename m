Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8034.1619449147707623503
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 07:59:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=RnqBfaHY;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 858FA38C0853
	for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 14:59:07 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id r7so44232188wrm.1
        for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 07:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+lTV1kwgRf7YoKEiQ0/jz3XEDdIupem6EQdUROMwa8M=;
        b=RnqBfaHYfaUmefsbBYmmRipYQb1aoVgY7j14v2k+U/IQbXvRfewduoRIsFEX/8xkpx
         rPQk2Vyb7u/LrJtqqbwvMflZ63s91wqGqX/Ww8pIAs0z6NjjA2AUiNx6+r+0PMXKzy6p
         B6CvSjtIBwWgIgglz01I8Yegm9D35rCszMkTXhbdWAshAWHQhv4bnbhuZ/4mdRr23JxC
         JrBbcA9CBDky3+qaD1S7z4ihVhvEp0LQ+fLB1vOI6HumJ9KNFH8M/4y1MdAQ6FzeelVy
         gnTkSTSDV3T/SSgsuwcSEekDZhQaRuKD/KiiTYEZn+HsTJSuKY4SiUFsEO10GVPf1WDA
         XrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+lTV1kwgRf7YoKEiQ0/jz3XEDdIupem6EQdUROMwa8M=;
        b=uPGjkIS10hlu9O+Ly54APFW3qDo7Wtoeov51g0b1fJio4h/ENqH+0Y2MA+zy1EB6M7
         BD6zCFMfV0eiQ0ERqXloysnefN/u3GkiBX4LNQfsFSRFpVRnLlzW+o+av4fydBbWoP+j
         m5KM9BzxZqJuA7CScj12NdYzflpWoJjavcUJLz1ppHdtHJ21efiitoVx3W/R3a61XO1M
         G2NnSvrHq4AoZMO+BS9dfrlyzbHYjYklQanLLwJtnaFCa8dNkObmdUxOJQRV4MmIe+6/
         TyOCG7EuERZFZdb6Qaxv9VFW7oKC4cyCEx5Tz9IvqdH043qrUuUOcui70310Rc48QTch
         ovqw==
X-Gm-Message-State: AOAM530C3jVnRHC6i82BbyL3dvSQ86ygQ3xFSOyfPSAurVCM99AmsKD5
	I6nEKm3sSD9g9LBGxsw9KcGdDnpvLqhNhQ==
X-Google-Smtp-Source: ABdhPJwMurynOpXLhWZZERKNzKhXunEIzoCjCI9X7Jt968hBrN1ivDTRmbM9QTas2zi8QSSSw2NODA==
X-Received: by 2002:a5d:590b:: with SMTP id v11mr14506143wrd.415.1619449145979;
        Mon, 26 Apr 2021 07:59:05 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id a142sm21115484wmd.7.2021.04.26.07.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 07:59:04 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v4 2/3] NanoPi-M4: declare "usbhost" and "serial" in MACHINE_FEATURES
Date: Mon, 26 Apr 2021 16:58:09 +0200
Message-Id: <20210426145810.718821-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210426145810.718821-1-yann@blade-group.com>
References: <20210426145810.718821-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 conf/machine/include/nanopi-m4.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index 603160f..a14b705 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,6 +3,8 @@
=20
 require rk3399.inc
=20
+MACHINE_FEATURES +=3D "usbhost serial"
+
 KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
=20
--=20
2.30.2

