Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7820.1603205567519266172
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 07:52:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=B0uEw0Du;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5E51538C11C9
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2020 07:52:47 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id j7so2394093oie.12
        for <yocto@yoctoproject.org>; Tue, 20 Oct 2020 07:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k697xtd7lRC0yaixJBxBeuSDQFWl/Fl7SQB4r8W9JJw=;
        b=B0uEw0DujuWoM5VKfbGtBBgFbbjIpSR+aG6BaHUf/3SXWd8PgidcYEXT0jlZAH31lH
         cbLguxo2vHgkIEFxW2Q0GIQuVyMcUxb9Av94YN80nWXLoRVxzjcRjoVKobykmY7KU7/G
         eZuPbPEavFbc6PiMoija+ohp452DQiUZroVCiiSr5rkCsu86xaZiPOQG74wpW4TUWCHF
         w6lPGbwkAACsbQWDLlU66cRjq44cK1NiT536/rcNObHObChfpKx31aswIIObfz67CrsI
         r9m0htpEXg21jkmcNC48TWrTfw1e5R+8NYQ0SkRHmvVGC5rxT/g6tvmecVATiEyY/hSE
         KHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k697xtd7lRC0yaixJBxBeuSDQFWl/Fl7SQB4r8W9JJw=;
        b=Y5bIMyz76r+N81QxAlWaqPaxxfuYq0uyJxRE+b0intPuX7smT0y4sJj1uVOK8CMVKk
         y2bfRBL3IFaQkZieBo6gegeGvtn5kIftxFVAuf19ThaItnRg9um19tqkRrB37LCkJ9W5
         Zv/pQXW+2jbQY3KMq6Y4vZHre2ZKmB3oHQLE+QU6kor0Z2fFVu7BDmYjB47shOqM4SV/
         d5a88Ig5LG0SqcXVU6Tckpfk1HBhkW0eyJzLejXUyqxpt+JLxtHzvNGJdqTHQyf0BBFu
         MShd2KGSBSvO6XYPH04ldKILx7VamUFU18Tq9jHWf3nBVDdVh0nIH5s9l8CsVZgEgv6F
         rutg==
X-Gm-Message-State: AOAM531+vHev0NnsI60x2ZijvGZVh2oaMnxwYmIL2uK3bFnwqz5MeWXb
	N80LOZKUq1nYlfn+StnjreLBM8A7BHmGEg==
X-Google-Smtp-Source: ABdhPJw5hT4yppOTayi515Khc30UmkJAKbg8hEVTWRcAsBZOWHmOOsFgoT0iLVXgmIgIs6Dj+G7q4Q==
X-Received: by 2002:a05:6808:b14:: with SMTP id s20mr2188192oij.103.1603205566419;
        Tue, 20 Oct 2020 07:52:46 -0700 (PDT)
Received: from blackbox.rga.ip ([2806:109f:4:954c:908a:c7ff:fe6a:e9f5])
        by smtp.gmail.com with ESMTPSA id i14sm479569ota.59.2020.10.20.07.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:52:45 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: joe_macdonald@mentor.com,
	flihp@twobit.us,
	nicolas.dechesne@linaro.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [meta-selinux][PATCH] conf/layer.conf: Bump to gatesgarth
Date: Tue, 20 Oct 2020 09:52:42 -0500
Message-Id: <20201020145242.4569-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index da24359..669e066 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux =3D "1"
=20
-LAYERSERIES_COMPAT_selinux =3D "dunfell"
+LAYERSERIES_COMPAT_selinux =3D "gatesgarth"
=20
 LAYERDEPENDS_selinux =3D " \
     core \
--=20
2.28.0

