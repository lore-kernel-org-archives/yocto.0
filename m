Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1543EC433EF
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 13:12:38 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.9154.1651842754200442352
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 06:12:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TCU4zqcy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.41,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f41.google.com with SMTP id w19so12513451lfu.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 06:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=9xFpp5I0eC2wz+MdmkFecAZYmmYNaGVQ641tD9Xji4c=;
        b=TCU4zqcykV77K9udh8RIPhHrdyHqEF8Q4FzPh3sMJNHM9TON1UkyY+uEuPJbwYGZ8b
         xe6sIgDeamC3j+3YFNWzlLAu7wQzX6GzGRGOFJO1W1BH4Y0EkszJbdKJDi5R2CzbR8vK
         Y6EM2G7KwTPHUlNRuqm+msirl8kHCZEWPz60k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=9xFpp5I0eC2wz+MdmkFecAZYmmYNaGVQ641tD9Xji4c=;
        b=P6SSWBH0WzVoiz/6sOSmFZp8//eo7hqTBWfxMpLMR0MT9w9g0umg1ykum9RpitlbSU
         oUpRGePy6PMYkxk3kr/6obc232+rC8cXohpDZC2WLeVRVzDlPNrkhP4hFdzfUUCvhIyM
         5IOSPaJfB/kIPX0JTbqpFKnexKY8qZ5iwdKLqUveCxPUDYgo0XvN76OaKvbVjPNmsKBE
         ocWAAsUxkM1Am/Yyx80ausBlLR/5Ayq+INzQcgCDiTpN/nn3+1tBBshZ8kXhtOdNT0dy
         BWHwHzdtJAzISkJV+fuyuoXpf4E3g8KHno+8hs3aP+EOAIZFDW9xYmccEWljF6pyX5iE
         0bPQ==
X-Gm-Message-State: AOAM532P57kNW5S5l39wJFGgoVA3e4IZEVBww9yPOAhabWpSxSqURzyU
	rQj+rnDOTYTd2s6wG8FF8y+M+c097613zxJKyCDWPZMbJFMtjg==
X-Google-Smtp-Source: 
 ABdhPJxUjJekyYhgJvd7f83FCcqgykQLb4GGj714S1yDU/I12Nm1gbKZH23V5fMLEUOo7qnaXrL4UEsEOtVZQTlhuck=
X-Received: by 2002:a05:6512:3f1f:b0:44a:a85d:a0e0 with SMTP id
 y31-20020a0565123f1f00b0044aa85da0e0mr2410867lfa.170.1651842751716; Fri, 06
 May 2022 06:12:31 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 6 May 2022 06:12:20 -0700
Message-ID: 
 <CADfgfoZWmkPv180gvHPC-fLqhdhdQ0dwjM3+EQ96DGuOo8r+7A@mail.gmail.com>
Subject: [layerindex-web][PATCH] Dockerfile: add captcha dependancies
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Tim Orling <ticotimo@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000071007405de579c97"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 13:12:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57011

--00000000000071007405de579c97
Content-Type: text/plain; charset="UTF-8"

The current version of django-simple-captcha requires libz and freetype
development libraries.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 Dockerfile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Dockerfile b/Dockerfile
index a45952f..41deb0c 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -32,6 +32,8 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  python3-dev \
  python3-pil \
         python3-wheel \
+ libz-dev \
+ libfreetype6-dev \
  libjpeg-dev \
  libmariadbclient-dev \
  locales \
-- 
2.17.1

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--00000000000071007405de579c97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The current version of=C2=A0django-simple-captcha req=
uires libz and freetype development libraries.</div><div><br></div>Signed-o=
ff-by: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org=
">mhalstead@linuxfoundation.org</a>&gt;<br>---<br>=C2=A0Dockerfile | 2 ++<b=
r>=C2=A01 file changed, 2 insertions(+)<br><br>diff --git a/Dockerfile b/Do=
ckerfile<br>index a45952f..41deb0c 100644<br>--- a/Dockerfile<br>+++ b/Dock=
erfile<br>@@ -32,6 +32,8 @@ RUN DEBIAN_FRONTEND=3Dnoninteractive apt-get up=
date \<br>=C2=A0	python3-dev \<br>=C2=A0	python3-pil \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0python3-wheel \<br>+	libz-dev \<br>+	libfreetype6-dev \<br=
>=C2=A0	libjpeg-dev \<br>=C2=A0	libmariadbclient-dev \<br>=C2=A0	locales \<=
br>-- <br>2.17.1<br><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Michael Halst=
ead<div>Linux Foundation / Yocto Project</div><div>Systems Operations Engin=
eer</div></div></div></div>

--00000000000071007405de579c97--

