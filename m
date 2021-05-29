Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web12.16139.1622248993981494946
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 17:43:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGNUIBQK;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: joel.winarske@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id i9so7744410lfe.13
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 17:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TWJ6fc1xGN2rRS5oFHqglAmqaFkHae5FLl89c7yPvtQ=;
        b=KGNUIBQKHRkc4RlRfqMlDncjrlspzVJ2VlCZy6gzjtDHEfmD7mGCs6iHrZ0mCYkHxG
         I9FSVEZLAFFH9WI3v+rIVP/LyQdQah8zykL3Q8ic1XXJ13vse8VJKHNxA8A96Ew4ndjh
         Crf507mTPg5eSJ1qElxoJN4lqXo1rH5liN9UuOp6fV1h1w1D/Tp7GpHLkVtVTRFXJjwz
         JPzqyuGLGsTKhBKQZFqHRrbgButpWprNvAY5Un+NNsbXM15f2zSGRmxzBcUhj4owirWC
         FCRFKXNtI4dKGT/pNNJDAQXGdESBgUGZbSw5+Mb6WPjjjk09hjYIQcturNIGqLePevCC
         YnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TWJ6fc1xGN2rRS5oFHqglAmqaFkHae5FLl89c7yPvtQ=;
        b=d9MnBYULP8/lf/W56dERCtMl/XDvGCeClMqejNNqvv17QdzdFVjL1tIIPWtkqLAx58
         fGAG5uWx/z8gCgYGlDxA2k68SscatZGbVYMdu0ISyTelf8wrBRvVfffcSY9Vxkf/d4d2
         IuBotLmA4rWr2zUuHYJJScBPKQY2YmtusMM7OK/WnldDJ/hTpyGF9iX+iWyV9yiyx9Cy
         Siwxi/zT7vx/Yac8Kb/TXP/trHrdenHaYYiy08HQdPNDxPSaZ5OTT27tFyhYQa37vEos
         Yy/1iNxScuOMSlxzumuhjrG/BWu9JJu7Yi+NkprxUf0BGt1dH3qQmnljdYtHM33q6RKI
         Ekxw==
X-Gm-Message-State: AOAM533Qn2PCIoq1iy5GKvbI5LPnEghRTehWbfcDDk1pfdCplvg5+RT+
	hYG9vrRVci+BBIjkh0EJ/SsFYvzVWuMZE4liZNg=
X-Google-Smtp-Source: ABdhPJyzcyOfCegXYBfqf5jzv+XmHM7mjfrmsA5xhVhghgX5Qlthti/+frKPv8u5KsWZsOxK2BnoymF2I7CIDbs1pBc=
X-Received: by 2002:a19:644a:: with SMTP id b10mr3544347lfj.658.1622248992157;
 Fri, 28 May 2021 17:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPLP2Yf-2tqugYsxzHyMizP_hTK9CbzNg0iKD3qMTURxvA@mail.gmail.com>
 <CANNYZj8SyM9i5+iBk3G2ngojp4pjmrFU6VqEvL5EoZtAEMbVMQ@mail.gmail.com>
In-Reply-To: <CANNYZj8SyM9i5+iBk3G2ngojp4pjmrFU6VqEvL5EoZtAEMbVMQ@mail.gmail.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Fri, 28 May 2021 17:43:01 -0700
Message-ID: <CABKMkPJZPBFeu+c4Hy3zV23A0kKVkyQF7B4HBkb7_8dH7ze_qQ@mail.gmail.com>
Subject: Re: [yocto][poky][master][PATCH} VirGL: depends on virtual/gbm
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ea32fe05c36d4698"

--000000000000ea32fe05c36d4698
Content-Type: text/plain; charset="UTF-8"

It looks like a Mesa dependency is looming for NVIDIA:
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/9902

Thanks

On Fri, May 28, 2021 at 1:30 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Thanks, it took me a moment to understand that this still does not mean
> that nvidia supports gbm somehow, somewhere, but rather that virgl needs to
> be explicit about needing gbm.
>
> The patch should be going to the oe-core list.
>
> Alex
>
> On Fri, 28 May 2021 at 21:16, Joel Winarske <joel.winarske@gmail.com>
> wrote:
>
>>
>> This addresses cases where the platform doesn't depend on Mesa.  Tegra is
>> one example.
>>
>> From 427d6248379bf37f5522d4bb1013b8c0b7a26b5b Mon Sep 17 00:00:00 2001
>> From: Joel Winarske <joel.winarske@gmail.com>
>> Date: Fri, 28 May 2021 12:10:46 -0700
>> Subject: [PATCH] VirGL depends on gbm.h
>>
>> Signed-off-by: Joel Winarske <joel.winarske@gmail.com>
>> ---
>>  meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
>> b/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
>> index 3991895823..65bd1af942 100644
>> --- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
>> +++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
>> @@ -8,7 +8,7 @@ HOMEPAGE = "https://virgil3d.github.io/"
>>  LICENSE = "MIT"
>>  LIC_FILES_CHKSUM = "file://COPYING;md5=c81c08eeefd9418fca8f88309a76db10"
>>
>> -DEPENDS = "libdrm virtual/libgl libepoxy"
>> +DEPENDS = "libdrm virtual/libgl virtual/libgbm libepoxy"
>>  SRCREV = "363915595e05fb252e70d6514be2f0c0b5ca312b"
>>  SRC_URI = "git://
>> anongit.freedesktop.org/virglrenderer;branch=branch-0.9.1 \
>>             file://0001-meson.build-use-python3-directly-for-python.patch
>> \
>> --
>> 2.30.2
>>
>>
>>
>> 
>>
>>

--000000000000ea32fe05c36d4698
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">It looks like a Mesa dependency is loomin=
g for NVIDIA:=C2=A0 <a href=3D"https://gitlab.freedesktop.org/mesa/mesa/-/m=
erge_requests/9902">https://gitlab.freedesktop.org/mesa/mesa/-/merge_reques=
ts/9902</a></div><div dir=3D"ltr"><br></div><div>Thanks<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 28, =
2021 at 1:30 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks, it took me a momen=
t to understand that this still does not mean that nvidia supports gbm some=
how, somewhere, but rather that virgl needs to be explicit about needing gb=
m.<br></div><div><br></div><div>The patch should be going to the oe-core li=
st.<br></div><div></div><div><br></div><div>Alex<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 28 May 20=
21 at 21:16, Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gmail.com" t=
arget=3D"_blank">joel.winarske@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div>This addr=
esses cases where the platform doesn&#39;t depend on Mesa.=C2=A0 Tegra is o=
ne example.</div><br>From 427d6248379bf37f5522d4bb1013b8c0b7a26b5b Mon Sep =
17 00:00:00 2001<br>From: Joel Winarske &lt;<a href=3D"mailto:joel.winarske=
@gmail.com" target=3D"_blank">joel.winarske@gmail.com</a>&gt;<br>Date: Fri,=
 28 May 2021 12:10:46 -0700<br>Subject: [PATCH] VirGL depends on gbm.h<br><=
br>Signed-off-by: Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gmail.c=
om" target=3D"_blank">joel.winarske@gmail.com</a>&gt;<br>---<br>=C2=A0meta/=
recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_0.9.1.bb" ta=
rget=3D"_blank">virglrenderer_0.9.1.bb</a> | 2 +-<br>=C2=A01 file changed, =
1 insertion(+), 1 deletion(-)<br><br>diff --git a/meta/recipes-graphics/vir=
glrenderer/<a href=3D"http://virglrenderer_0.9.1.bb" target=3D"_blank">virg=
lrenderer_0.9.1.bb</a> b/meta/recipes-graphics/virglrenderer/<a href=3D"htt=
p://virglrenderer_0.9.1.bb" target=3D"_blank">virglrenderer_0.9.1.bb</a><br=
>index 3991895823..65bd1af942 100644<br>--- a/meta/recipes-graphics/virglre=
nderer/<a href=3D"http://virglrenderer_0.9.1.bb" target=3D"_blank">virglren=
derer_0.9.1.bb</a><br>+++ b/meta/recipes-graphics/virglrenderer/<a href=3D"=
http://virglrenderer_0.9.1.bb" target=3D"_blank">virglrenderer_0.9.1.bb</a>=
<br>@@ -8,7 +8,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://virgil3d.github.i=
o/" target=3D"_blank">https://virgil3d.github.io/</a>&quot;<br>=C2=A0LICENS=
E =3D &quot;MIT&quot;<br>=C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md=
5=3Dc81c08eeefd9418fca8f88309a76db10&quot;<br>=C2=A0<br>-DEPENDS =3D &quot;=
libdrm virtual/libgl libepoxy&quot;<br>+DEPENDS =3D &quot;libdrm virtual/li=
bgl virtual/libgbm libepoxy&quot;<br>=C2=A0SRCREV =3D &quot;363915595e05fb2=
52e70d6514be2f0c0b5ca312b&quot;<br>=C2=A0SRC_URI =3D &quot;git://<a href=3D=
"http://anongit.freedesktop.org/virglrenderer;branch=3Dbranch-0.9.1" target=
=
=3D"_blank">anongit.freedesktop.org/virglrenderer;branch=3Dbranch-0.9.1</a=
> \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-meson.build-us=
e-python3-directly-for-python.patch \<br>-- <br>2.30.2<br><br><br></div>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div></div>

--000000000000ea32fe05c36d4698--
