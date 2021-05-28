Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web08.12974.1622229415122338076
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 12:16:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FCJ1gKGh;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: joel.winarske@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id b12so6626568ljp.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 12:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OV0h4nyQi6nSydWSPt70TgDZT9HSztOVbfGa02S8qas=;
        b=FCJ1gKGhUdoU1+XlssSpt2X51unUiw//PJXRrGUPklN3aH5HQ975npWJaHSf7TQTSI
         QO4DzbXY+rsHu3QiBY4zbJzN+OnHlMExdoD8QCS+P/wdm7vOmRMn13veB7qkryVWK4FX
         D+pGBqgP0qm1wV1oZnA32wstvuY6Bl+9YlW6qYb6tWMQjXXC13N+F1aQEWbqFFS+7NgS
         A3Zy3bqwGxvUha1jXwHIaxww6xoYwdyhk8jtItYeOM3/QWCk20+XGNKxyKPNkKeitTWb
         7JlHxmFcPvvGFS5I9I5jWkR1Hcn5ArsgnrBJg/v1YSD+WPJYTZffqXlmBYK5KCnlCdqh
         bF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OV0h4nyQi6nSydWSPt70TgDZT9HSztOVbfGa02S8qas=;
        b=Nqlto5+DnIhIQvE8jODFSZ3NcuuinRCCWabYt/rTbUZcZT/EU+PBmhYYh9oo+Qhluh
         tBMvDSIWYJ+QqlaPr0cP9Z8ajCcryZ10Gj9vPerh0VuFeDMEy1oggxUwyFr6ZQnVkQ57
         tn6BtrYVo0DW8BzER1K0NQQ4Zwoc4TKQWh2U+yaV++ZOWEOAWgqaESJu4UhzYVrTP5BA
         J5HhlsxgtOR1gi3eLGWzTlGBuMZBlq/J+FERXik1oz+aFLVAzN7ZVky+aBtiz38tcmj7
         4OC0di9US4+IXBgcU0wy5RckLL62qA739yuTDi7BY/GqB2fT2M+kuTQ4waoPj7Z9GN/X
         0sKw==
X-Gm-Message-State: AOAM531BdT958EpTSnKvL7dH4FGg+e6Gk+gI3hWQAO0UvPKtaLq1pbia
	jVDf/vEuuUUHx8l5K2LfiJvmopqweYC8zbpofP7ypOlRcoGbeg==
X-Google-Smtp-Source: ABdhPJxD80rs3n5Aou0hTRMfWNRLvBaU2wdZfjFJal1uWRsRubKHkYHITW3G8kPs4Mhl8GyamS596xVQ8ndGcOZqoZU=
X-Received: by 2002:a2e:a58d:: with SMTP id m13mr7599659ljp.252.1622229412891;
 Fri, 28 May 2021 12:16:52 -0700 (PDT)
MIME-Version: 1.0
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Fri, 28 May 2021 12:16:40 -0700
Message-ID: <CABKMkPLP2Yf-2tqugYsxzHyMizP_hTK9CbzNg0iKD3qMTURxvA@mail.gmail.com>
Subject: [yocto][poky][master][PATCH} VirGL: depends on virtual/gbm
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e64f8605c368b7f5"

--000000000000e64f8605c368b7f5
Content-Type: text/plain; charset="UTF-8"

This addresses cases where the platform doesn't depend on Mesa.  Tegra is
one example.

From 427d6248379bf37f5522d4bb1013b8c0b7a26b5b Mon Sep 17 00:00:00 2001
From: Joel Winarske <joel.winarske@gmail.com>
Date: Fri, 28 May 2021 12:10:46 -0700
Subject: [PATCH] VirGL depends on gbm.h

Signed-off-by: Joel Winarske <joel.winarske@gmail.com>
---
 meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
b/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
index 3991895823..65bd1af942 100644
--- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
+++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
@@ -8,7 +8,7 @@ HOMEPAGE = "https://virgil3d.github.io/"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c81c08eeefd9418fca8f88309a76db10"

-DEPENDS = "libdrm virtual/libgl libepoxy"
+DEPENDS = "libdrm virtual/libgl virtual/libgbm libepoxy"
 SRCREV = "363915595e05fb252e70d6514be2f0c0b5ca312b"
 SRC_URI = "git://anongit.freedesktop.org/virglrenderer;branch=branch-0.9.1
\
            file://0001-meson.build-use-python3-directly-for-python.patch \
-- 
2.30.2

--000000000000e64f8605c368b7f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>This addresses cases where the platform doesn&#39=
;t depend on Mesa.=C2=A0 Tegra is one example.</div><br>From 427d6248379bf3=
7f5522d4bb1013b8c0b7a26b5b Mon Sep 17 00:00:00 2001<br>From: Joel Winarske =
&lt;<a href=3D"mailto:joel.winarske@gmail.com">joel.winarske@gmail.com</a>&=
gt;<br>Date: Fri, 28 May 2021 12:10:46 -0700<br>Subject: [PATCH] VirGL depe=
nds on gbm.h<br><br>Signed-off-by: Joel Winarske &lt;<a href=3D"mailto:joel=
.winarske@gmail.com">joel.winarske@gmail.com</a>&gt;<br>---<br>=C2=A0meta/r=
ecipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_0.9.1.bb">vir=
glrenderer_0.9.1.bb</a> | 2 +-<br>=C2=A01 file changed, 1 insertion(+), 1 d=
eletion(-)<br><br>diff --git a/meta/recipes-graphics/virglrenderer/<a href=
=3D"http://virglrenderer_0.9.1.bb">virglrenderer_0.9.1.bb</a> b/meta/recipe=
s-graphics/virglrenderer/<a href=3D"http://virglrenderer_0.9.1.bb">virglren=
derer_0.9.1.bb</a><br>index 3991895823..65bd1af942 100644<br>--- a/meta/rec=
ipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_0.9.1.bb">virgl=
renderer_0.9.1.bb</a><br>+++ b/meta/recipes-graphics/virglrenderer/<a href=
=3D"http://virglrenderer_0.9.1.bb">virglrenderer_0.9.1.bb</a><br>@@ -8,7 +8=
,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://virgil3d.github.io/">https://vi=
rgil3d.github.io/</a>&quot;<br>=C2=A0LICENSE =3D &quot;MIT&quot;<br>=C2=A0L=
IC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dc81c08eeefd9418fca8f88309a76=
db10&quot;<br>=C2=A0<br>-DEPENDS =3D &quot;libdrm virtual/libgl libepoxy&qu=
ot;<br>+DEPENDS =3D &quot;libdrm virtual/libgl virtual/libgbm libepoxy&quot=
;<br>=C2=A0SRCREV =3D &quot;363915595e05fb252e70d6514be2f0c0b5ca312b&quot;<=
br>=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://anongit.freedesktop.org/=
virglrenderer;branch=3Dbranch-0.9.1">anongit.freedesktop.org/virglrenderer;=
branch=3Dbranch-0.9.1</a> \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi=
le://0001-meson.build-use-python3-directly-for-python.patch \<br>-- <br>2.3=
0.2<br><br><br></div>

--000000000000e64f8605c368b7f5--
