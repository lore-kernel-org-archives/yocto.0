Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CCBC4332F
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 21:26:38 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.39512.1699651590843838714
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 13:26:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YUqrgbov;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso1448403f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 13:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699651589; x=1700256389; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=StzvX8HDvE6jrMHUjz/nWGJlK/AzhYQHWqgbgLSi1r8=;
        b=YUqrgbovkPhCYTeDnyZm52IMwQM+Bz/NUO9SYyWDfTkYdM02RRymNIpcJ9pVT+IANd
         LWDjBe1F+hXRsAeza/nLVhf0iN2QbMJpkIgZbgwO9xcVz2/jr47cajo7SfIgh/moAmWv
         CbWC09wTkKu5tQqpkVcU7ZaP/GoxxFwd6+Of9lQBsy7PMZz3mouWSbNoVpudp5gIUQVU
         cGGnnrrxasE17ek0QIulJNF9cPKwX1DSPDu2rVe4VDJmsyPRZU9peBsSAachdsInM9J4
         jUMWLge7iCTROiHNKfZoiVR4wKCKY2JzMWrDiN4ekXQWK/2tUWpmuyf+GTaK+38ebc55
         BA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699651589; x=1700256389;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=StzvX8HDvE6jrMHUjz/nWGJlK/AzhYQHWqgbgLSi1r8=;
        b=Oxy9B2hsPqrIXrZSncwkUnug2fGq+lv/nWuAa+mqmmni1fjBNieC//PbJGrn5I2pU0
         eT97ogZFUUfzy8j5RyrDzxREXop/q9Jx6UI/mrhz7LHFotvISoHXfqz+30SmKGhXgpgC
         V6kDQ8NbnEgbDC+XbKkE3V0f+CaJE/yW1Sa4bomlvqf5g0RaE9JwZXMQUNbXPUq8WOBP
         JRAEAYuAwuKEgT5OCiYacrLgG4ZokSW7oeXk8aDxus7su/N7hHrpMsRRFj3KBDVYEbE/
         PlLPF1ISxsUWe7hxptvmD45cu7lJ+4gWb+6L5pdNwYBWxVELGbg7llHRtl8mu8kKCzm2
         /XpQ==
X-Gm-Message-State: AOJu0Yx7BLNuXN9s6tjgrs9lx6rym/OyHYEdea/KTWTGo/TNbQ3FyKMz
	hCtx7vGCOGMmrWQZ2nj29Lmuzek8dIkwMUBwBdU=
X-Google-Smtp-Source: AGHT+IEU69colRD8ZELD2gOfll5MDLYPJ0enFjQdWVMQICx1RG+a4ibphRl4FhWIbOppwQms0ZN7j/GuWnV8Ye2gYJ0=
X-Received: by 2002:a5d:47ce:0:b0:32f:8248:e00 with SMTP id
 o14-20020a5d47ce000000b0032f82480e00mr340234wrc.51.1699651589013; Fri, 10 Nov
 2023 13:26:29 -0800 (PST)
MIME-Version: 1.0
References: <4145e228-b61f-42ac-ac13-5150e3b6cbe7@mistywest.com>
In-Reply-To: <4145e228-b61f-42ac-ac13-5150e3b6cbe7@mistywest.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 10 Nov 2023 22:26:16 +0100
Message-ID: <CA+chaQfeH8Pop=JOqDr9hZ-6ZpX9veuWmgty4QJXDyioMowV1A@mail.gmail.com>
Subject: Re: [yocto] bitbake error about files/directories installed but not shipped
To: Mistyron <ron.eggler@mistywest.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003488850609d2f966"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 21:26:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61654

--0000000000003488850609d2f966
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would guess that libdir in your build is set to /usr/lib
while omx-user-module created /usr/lib64.

Check with bitbake-getvar and the files in ${D}, possibly need to pass
libdir value to whatever build system omx-user-module uses (hard to guess
without seeing the whole recipe or sources).

On Fri, Nov 10, 2023 at 10:19=E2=80=AFPM Mistyron <ron.eggler@mistywest.com=
> wrote:

> Hi,
>
> I'm struggling with a Yocto build for my board, I get an error like:
> ```
> ERROR: omx-user-module-1.1.0-r0 do_package: QA Issue: omx-user-module:
> Files/directories were installed but not shipped in any package:
>   /usr/lib64
> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
> omx-user-module: 1 installed and not shipped files. [installed-vs-shipped=
]
> ERROR: omx-user-module-1.1.0-r0 do_package: Fatal QA errors found, failin=
g
> task.
> ERROR: Logfile of failure stored in:
> /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/omx-user=
-module/1.1.0-r0/temp/log.do_package.1434925
> ERROR: Task
> (/home/yocto/rzv_vlp_v3.0.0/build/../poky/meta/recipes-multimedia/gstream=
er/omx-user-module.bb:do_package)
> failed with exit code '1'
> ```
> The recipe `omx-user-module.bb` is needed by my image (in image.bbappend)
> and the omx-user-module.bb contains:
>
> FILES:${PN} +=3D " \
>     ${libdir}/*.so \
> "
>
> FILES:${PN}-dev =3D " \
>     ${includedir} \
>     ${libdir}/*.la \
> "
>
>
> can anyone help me further with this?
>
> Thanks,
>
> Ron
> --
>
> *ron *
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61653):
> https://lists.yoctoproject.org/g/yocto/message/61653
> Mute This Topic: https://lists.yoctoproject.org/mt/102515765/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000003488850609d2f966
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would guess that libdir in your build is set to /usr/lib=
 while=C2=A0omx-user-module created /usr/lib64.<div><br></div><div>Check wi=
th bitbake-getvar and the files in ${D}, possibly need to pass libdir value=
 to whatever build system omx-user-module uses (hard to guess without seein=
g the whole recipe or sources).</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 10, 2023 at 10:19=E2=80=AF=
PM Mistyron &lt;<a href=3D"mailto:ron.eggler@mistywest.com">ron.eggler@mist=
ywest.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><u></u>

 =20

   =20
 =20
  <div>
    <p>Hi,<br>
      <br>
      I&#39;m struggling with a Yocto build for my board, I get an error
      like:<br>
      ```<br>
      ERROR: omx-user-module-1.1.0-r0 do_package: QA Issue:
      omx-user-module: Files/directories were installed but not shipped
      in any package:<br>
      =C2=A0 /usr/lib64<br>
      Please set FILES such that these items are packaged. Alternatively
      if they are unneeded, avoid installing them or delete them within
      do_install.<br>
      omx-user-module: 1 installed and not shipped files.
      [installed-vs-shipped]<br>
      ERROR: omx-user-module-1.1.0-r0 do_package: Fatal QA errors found,
      failing task.<br>
      ERROR: Logfile of failure stored in:
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/omx-user-m=
odule/1.1.0-r0/temp/log.do_package.1434925<br>
      ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../poky/meta/recipes-multimedia/gstreamer=
/omx-user-module.bb:do_package)
      failed with exit code &#39;1&#39;<br>
      ```<br>
      The recipe `<a href=3D"http://omx-user-module.bb" target=3D"_blank">o=
mx-user-module.bb</a>` is needed by my image (in
      image.bbappend) and the <a href=3D"http://omx-user-module.bb" target=
=3D"_blank">omx-user-module.bb</a> contains:</p>
    <p>FILES:${PN} +=3D &quot; \<br>
      =C2=A0=C2=A0=C2=A0 ${libdir}/*.so \<br>
      &quot;<br>
      <br>
      FILES:${PN}-dev =3D &quot; \<br>
      =C2=A0=C2=A0=C2=A0 ${includedir} \<br>
      =C2=A0=C2=A0=C2=A0 ${libdir}/*.la \<br>
      &quot;</p>
    <p><br>
    </p>
    <p>can anyone help me further with this?</p>
    <p>Thanks,</p>
    <p>Ron<br>
    </p>
    <div>-- <br>
     =20
     =20
      <b>ron <br>
      </b></div>
  </div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61653): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61653" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61653</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102515765/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102515765/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000003488850609d2f966--

