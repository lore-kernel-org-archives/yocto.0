Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D830C25B77
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 15:58:29 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.18000.1715875108266583748
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 08:58:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L9gmclVj;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-24542b8607fso432554fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 08:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715875107; x=1716479907; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XCp67TSj8+MpoKbUUqVxDMDZKR0k94smBCiqk0LrOZs=;
        b=L9gmclVjITDZpFu4oACy2zX4PFAdK+EO5D45byp0KvqYom+PFvcBfbWt1NqbG1s38L
         WtH2GpCMe9W9WclFi2xaZgRELRTtX6ecwnc+nWAYdKZmVhn6LyB2g13qWIcYg4YDiUkH
         8WihgdCIn+UVEg97LS9mec+YWKZLZTlsyx08OY4W5gZvkvgQDxtPgJlE/fYmJOMKvhe/
         wyPGRJUiK3R38/wLe7jNflRb/MkAlaJSK8dSVsW0+89RsMV3DxNyL3ncJ1zwTDi27Tmb
         bA/UiujFE4a54tzX881sdoSeZS78ghbOkwhURPXAPv7QgkkVOncqWWe5aeF0eSZnOX/4
         wfxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715875107; x=1716479907;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XCp67TSj8+MpoKbUUqVxDMDZKR0k94smBCiqk0LrOZs=;
        b=gLJjlOCiHp7H3iUubfO2yG8OZ0+Ll+Bqy1p2KwGwGN3lO6QVFsrW0spYHyQuXZrwTB
         +COCWpQwP2DdTWZ6rJHUV3a5MFzHSCnJXdXI+eSKVccrOtKxkEsBn5eqrgAORip6IpiF
         w04DKA0w/qtVOaMHTvKZF6kF+TchYwstMGX+Zy1GLvTu/0IhFcPWIX4Wlmwu5E5lIHEA
         WmjW9g0R/qKseHrGQHFwsNh5hEFj8N4gRUBYVx2a8+xI0vcCwOMHLwPkasmMp+ITrh6u
         MU6Hszg2oIIzfN2dqJde9VGoQOAzrllOvUekdqQx06IPZXLUtNTvlpw6uUQ0oxgCn1+/
         vCew==
X-Forwarded-Encrypted: i=1; AJvYcCUW4S/RFigNexLhNt8pmeKJJjWD124ZBYxUmHV+dv6VothOM27RjOYwROV+eG0qIT++QXuFLhuPD8CvyGlinPW2ckiinqjTb5GHCyae
X-Gm-Message-State: AOJu0YzucjTFYpI8q4K6Aea8+6v1AXQJtzWb0/TcYe8BkRd2Uxf4UYdY
	BBve9xzri/vpFm23i1i9T4kZ+EaFB7w5phHwGzNDChJMoIcFPzmV2rFhr8VsjIF2cW6tkJTCMUu
	EdSK9Fz5+wLU7ulTxuc5AfalnMeQ=
X-Google-Smtp-Source: AGHT+IF9Aqud42XTy5LpOnF94qKJ3NtVdLlq5j/cNhl4MuiCbFpL0PX1r2dr1xtNpqffzR9c86jg9RyrruLuI31Gqv0=
X-Received: by 2002:a05:6870:214e:b0:22e:c8ee:9307 with SMTP id
 586e51a60fabf-24172900b09mr22315364fac.29.1715875106713; Thu, 16 May 2024
 08:58:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de> <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
In-Reply-To: <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 May 2024 08:58:14 -0700
Message-ID: <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
Subject: Re: [yocto] Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb
 using scarthgap release
To: ross.burton@arm.com, yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@cherry.de>, 
	"zoran.stojsavljevic@gmail.com" <zoran.stojsavljevic@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000036f8360618944eab"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 15:58:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63121

--00000000000036f8360618944eab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We need a new uninative tarball generated with gcc14 for f40 so there might
be issues like you are seeing due to that. You can disable uninative
temporarily in your build and see if that works for the moment

On Thu, May 16, 2024 at 8:39=E2=80=AFAM Ross Burton via lists.yoctoproject.=
org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:

>
>
> > On 16 May 2024, at 16:31, Zoran via lists.yoctoproject.org
> <zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> > The full log (full_log.txt) is attached to this @, as per Ur request
> > (lot of stuff, echt!).
>
> From your log:
>
> WARNING: Host distribution "fedora-40" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
>
> This is saying that Fedora 40 has not been validated and you may
> experience unexpected failures.
>
> Later in the log:
>
> pzstd:
> /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/sysroots=
-uninative/x86_64-linux/usr/lib/libstdc++.so.6:
> version `CXXABI_1.3.15' not found (required by pzstd)
>
> That is the sort of unexpected failure you can expect when using Fedora
> 40, because it has not been validated.
>
> This is an incompatibility with Fedora 40 and uninative, so until this is
> resolved you can disable uninative with this in your local.conf:
>
> INHERIT:remove =3D =E2=80=9Cuninative=E2=80=9D
>
> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63119):
> https://lists.yoctoproject.org/g/yocto/message/63119
> Mute This Topic: https://lists.yoctoproject.org/mt/106133618/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000036f8360618944eab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">We need a new uninative tarball generated with gcc14 for =
f40 so there might be issues like you are seeing due to that. You can disab=
le uninative temporarily in your build and see if that works for the moment=
=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, May 16, 2024 at 8:39=E2=80=AFAM Ross Burton via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ross.burt=
on=3D<a href=3D"mailto:arm.com@lists.yoctoproject.org">arm.com@lists.yoctop=
roject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
&gt; On 16 May 2024, at 16:31, Zoran via <a href=3D"http://lists.yoctoproje=
ct.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt=
;zoran.stojsavljevic=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" =
target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; The full log (full_log.txt) is attached to this @, as per Ur request<b=
r>
&gt; (lot of stuff, echt!).<br>
<br>
From your log:<br>
<br>
WARNING: Host distribution &quot;fedora-40&quot; has not been validated wit=
h this version of the build system; you may possibly experience unexpected =
failures. It is recommended that you use a tested distribution.<br>
<br>
This is saying that Fedora 40 has not been validated and you may experience=
 unexpected failures.<br>
<br>
Later in the log:<br>
<br>
pzstd: /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/sys=
roots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `CXXABI_1.3.15=
&#39; not found (required by pzstd)<br>
<br>
That is the sort of unexpected failure you can expect when using Fedora 40,=
 because it has not been validated.<br>
<br>
This is an incompatibility with Fedora 40 and uninative, so until this is r=
esolved you can disable uninative with this in your local.conf:<br>
<br>
INHERIT:remove =3D =E2=80=9Cuninative=E2=80=9D<br>
<br>
Ross<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63119): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63119" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63119</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106133618/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106133618/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000036f8360618944eab--

