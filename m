Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.4081.1603745775181829853
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Oct 2020 13:56:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=HYi3H9EW;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 198.145.29.25, mailfrom: jdmason@kudzu.us)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 25D3C38C069F
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2020 13:56:14 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id h12so7830344qtu.1
        for <yocto@yoctoproject.org>; Mon, 26 Oct 2020 13:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rPNWtUq9uktlEAKokwEVcQnE49fA8VS99e49obOXHWU=;
        b=HYi3H9EWYNBZr4dweR1Wkle6EZuF031TV4oxyN00xcEODp1plTKBdTKOa99cj6O3kH
         87sz/4Op0KG8s0wms0veIRiFb3rQhbGlFoP8vDmVKwZB2J0QMEZ1utQzOeZKfSh9ScSo
         t7tMfJQpF+H97DWzoxe69dAszL0lYJI7ReSLRCa5QIkJ9oirCDMS6z59X0g/6pgZcKCp
         VWKrw6IbQ08J7qr+VALZ/m4IKhPafMs+Q/IXigTJ3VriF4aq9I72gyTO2hnTA27r+3lQ
         3iq0uR/Butn1UzHzf82LmGjs+GkrVNC7L0u4gWAxfCiLeaxuv3myILaD7j62ULqRDbn3
         C5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rPNWtUq9uktlEAKokwEVcQnE49fA8VS99e49obOXHWU=;
        b=NqxiLd91gxwovRj4D+4iwNRdfzuMraQOrC0UXKrFKeXHINIfSYFJbFhAOlUWf/AAqT
         ZgB9swEShZQBwd2MG7AX7IsNUuYNMhxfj9TqSzR2Thw7dz8vZ6ykQ+6ttXlCBPfv7/AJ
         U9S3VnZPCFMx17ORFo7kzAEU4ge2qI6f5DLav2l7mDD4rwlDPfx5vuVVqzeg3BoKqv7y
         1r0ETcDvkBq664k3cfsUrk0xieISSeZvb9Yl5YCM/Arjt6CAEvmodosnRgh9GcB8p0KG
         oFkLAfkPjGC9JNrGNOgrgxMcmuvjeeDUGWvv2OlNK+vTjKMcje6zxQ+TYUYBrYODEEYQ
         3Jog==
X-Gm-Message-State: AOAM532bnRVyeWAx5+pvZKiXoZmxOh6gchjTBjN3NDYw3ul25fAZDr01
	LlzhFUoVZhWduOMmqpqXhs+wCIRuRIFxk9Vg
X-Google-Smtp-Source: ABdhPJx2qClyCQg4X1NeReqzcKe5cOgKww0MjgNLZrzW0Rrj+SjxVqlmrTOBuczBS+LS4PHGnhPKOg==
X-Received: by 2002:ac8:7b33:: with SMTP id l19mr11101859qtu.304.1603745772522;
        Mon, 26 Oct 2020 13:56:12 -0700 (PDT)
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id n63sm7406057qka.45.2020.10.26.13.56.11
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 13:56:11 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
To: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH] layer.conf: add gatesgarth compatibility
Date: Mon, 26 Oct 2020 16:56:08 -0400
Message-Id: <20201026205608.5994-1-jdmason@kudzu.us>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Jon Mason <jdmason@kudzu.us>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index da24359b7484..178ce1b734d3 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux =3D "1"
=20
-LAYERSERIES_COMPAT_selinux =3D "dunfell"
+LAYERSERIES_COMPAT_selinux =3D "dunfell gatesgarth"
=20
 LAYERDEPENDS_selinux =3D " \
     core \
--=20
2.20.1

