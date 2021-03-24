Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.423.1616601425008699126
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 08:57:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=mWkG4NbN;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BEBD238C0962
	for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 15:57:04 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id m21-20020a9d7ad50000b02901b83efc84a0so23439701otn.10
        for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LSvAREKvmi6tg+e+E2qv5l1zU+DmXuqlwYIi0obu9+A=;
        b=mWkG4NbNp6KVYAzBKy3WWhtje2wCsw3u3NUfsbnxgyMKoCJ1iLZxt84kIqytyqKOWE
         FG/dXIA1Ea0fUNqo4JoWVbUrAHpMZIQyTS2QYipIo2z0vqBvqIK63RksuqLENeXQ1SB/
         eYIdxdBp9Tu1aKgRSk/BCu/7BtTGjfEJRTbfdfVoDhPjys17ymvqLlZioDltJ8QnNzOF
         5f8wr7wLt/QBIxhqbVbKcDblMZRd4FcIGIRGzNr5YyijRPPbkLaOXqHBRxcfZCnBp/l6
         RxVfQyDrLQgETnXTk8MHVb9b8DA6Zk0DJTNSjSkWst/F5jrhCnCNCM+PWdRHO/XUOMLy
         w7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LSvAREKvmi6tg+e+E2qv5l1zU+DmXuqlwYIi0obu9+A=;
        b=OwevSkGh8jxClQvDntkAUJjq6Jrp28vxzdvCCOXfinRT0Z1okyy0LswlkB9UP304Uo
         VOd91CPMP7GDSeCKLzLmLcWZgy3YPBNcgXEzjybocoFaVwZ/sJ6DTN8iGEbsxYhM8VHd
         60E8TCFH798a1CUeC9jQTTHwEpVfyWA2phxYRQqMDa/5QXmBPGh3NXP18Od3gtFQHTnH
         r8znUZqIHAaOl/8iiJCxqCBfCVRdHsMJ8l++ESHxrz3/Zado5bBSDHkyJeJT9IXDHAna
         gLopn2o0wa5JS9dWj8mO44RB+AVLfUH8X+lugZ70MePwPgbh+nmzBcFOq4NOCRq4IuDa
         MXcg==
X-Gm-Message-State: AOAM530LYb5Mz++KBOmyINzpjZDX3pFvO+4A42piKSa5ObjxOSpRcxIz
	Tb01Nb19BgcMh1svFWBurm1OU0pAQAvwDyqE
X-Google-Smtp-Source: ABdhPJyP0iGFQaX/QvIH632WbVM4arzuLF10DeuWvqC3mhUtd3tJiyC0fEuBERG7wSekNDRXgF+pIQ==
X-Received: by 2002:a9d:6ad9:: with SMTP id m25mr3820385otq.267.1616601423699;
        Wed, 24 Mar 2021 08:57:03 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id n1sm475846oig.47.2021.03.24.08.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 08:57:03 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: joe_macdonald@mentor.com,
	flihp@twobit.us,
	yi.zhao@windriver.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [meta-selinux][PATCH] conf/layer.conf: Add hardknott support
Date: Wed, 24 Mar 2021 09:57:00 -0600
Message-Id: <20210324155700.234716-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 178ce1b..ff009ef 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux =3D "1"
=20
-LAYERSERIES_COMPAT_selinux =3D "dunfell gatesgarth"
+LAYERSERIES_COMPAT_selinux =3D "dunfell gatesgarth hardknott"
=20
 LAYERDEPENDS_selinux =3D " \
     core \
--=20
2.31.0

