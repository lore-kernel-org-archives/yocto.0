Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5312.1616048143985353508
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 23:15:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=KCph/WHH;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2756D38C06E8
	for <yocto@yoctoproject.org>; Thu, 18 Mar 2021 06:15:41 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so2574197pjb.2
        for <yocto@yoctoproject.org>; Wed, 17 Mar 2021 23:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F1lKDOAikagtZdt2N0hP+92X34P4PODLf9ozPk5/Pm0=;
        b=KCph/WHHa5jH49uoURmKJqM6Ja7gipnpWViObOGaI8/rjD/TW1httmR6H53w0KYZIi
         yR+1Qh8yqvSxJyY04wIgmMkoJz3nQhEcBNpiLpgMePLS1oMAiWdpaYKJ6/1bUlB0abEw
         aQt9j61X35MeCj89UEJLjoXUMKjCmVVY5hKOlhKlICW8spjNTBrEossmY2O8RMXasu3f
         eJXChjSpIPMsM2JuKl0NgN2zMOxtrFfuzjfTh2cboc6LBZiwHGCU35J1u84K7082kG+m
         KT9R8ilVYW87D0a+Z2arhdofH0Pj/uguKkSD6EwBHkSkA435+JJpJZNIwJi1qqyjVq5f
         g6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F1lKDOAikagtZdt2N0hP+92X34P4PODLf9ozPk5/Pm0=;
        b=QFkjBZPiCzHsjMtMRJ2r2HZL2XB4ib0wpDkF052mj7KnD8kRsQJTMbPM3v1Y21f1z1
         EVdn+foo7GPYXkhvXzb/L17yt1T4th0elR5HDf3BvArYv7hM3S7mEZc0Icxxg9IdSteg
         X7EDxx2FOHgvv+WCU0sjmVVh7ovRVMGjn4kmR36bzYJPcTbh2tMXg9d6Wy1B7S0RN3a1
         i5wscFlPoVghHLPierKrJl0ympJIOLiAxSuAei4tBNROcmQAy2L5NfQoKLsPVLbIt+M7
         sEYyUBKhJ613iFcKL+2pyJ3Fz8XtQq93yFV6lQOyFAVcyVbMmdHg2z/Vm9BdQmcjtfB5
         qRfg==
X-Gm-Message-State: AOAM530Ttmxf/CYn27277LW4e9CXS0r0yplxs2kgo+iysucxSdomhNUt
	CZ0WQZHNSNitRR7XZWrWMbr+lveKVH7RHQ==
X-Google-Smtp-Source: ABdhPJxi6rm6suBraU1Dr69+aoqZ/FOCjTDYj5ey841Gg97HnWvKOquG/ciK1qoB8hxSmOJ5fNAm3w==
X-Received: by 2002:a17:90b:228e:: with SMTP id kx14mr2644413pjb.71.1616048139821;
        Wed, 17 Mar 2021 23:15:39 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::c2dd])
        by smtp.gmail.com with ESMTPSA id e11sm1043752pfm.24.2021.03.17.23.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 23:15:39 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] layer.conf: Add hardknott to compatible release branches
Date: Wed, 17 Mar 2021 23:15:36 -0700
Message-Id: <20210318061536.1556104-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 8eecdc5..db9961c 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,5 +14,5 @@ BBFILE_PRIORITY_rockchip =3D "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip =3D "1"
-LAYERSERIES_COMPAT_rockchip =3D "gatesgarth"
+LAYERSERIES_COMPAT_rockchip =3D "gatesgarth hardknott"
 LAYERDEPENDS_rockchip =3D "core meta-arm"
--=20
2.31.0

