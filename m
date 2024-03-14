Return-Path: <saswatinayak2010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D0A8C5475B
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 09:04:14 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.8184.1710407049345875280
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 02:04:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mF6KMEfA;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: saswatinayak2010@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d459a0462fso9569501fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 02:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710407047; x=1711011847; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/QRU4pUWp5t74b3DqKz+SgHn/g2ZUjYX0zPZmxKbFrI=;
        b=mF6KMEfAaE8/3x9TulDWg/rVkktsHlMoISA/8T9YBjjT8ixCaG/1pNPj37M3a+9saL
         RbjaJhTBJPknWyPAUxMBjUGlHdXH/krzod4y1GByUZ9pIjaNgHJVmyrn/eiK0tr95uFj
         eeZkdnAVYx+92mUXF2Df2esZWdc+IXN/HkKbvv1C7Y+Ug/jVtZQ//HR1hKIcqhkNeMrR
         6Kb0sz8z0k0ZVWw5Fi/ZSIq7tfbASpqHowGurxJ7LYSSbldyX0HfHI1G2YpqMv9Uj2iz
         2M7Ug5KI3Ax6XgR69JLhcuV8B6F4cPp72V4GlltHPArAJeNsxMmOPc42tcqYOY9urZNb
         hbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710407047; x=1711011847;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/QRU4pUWp5t74b3DqKz+SgHn/g2ZUjYX0zPZmxKbFrI=;
        b=oAO7MvZ4Vu072sSsQ47FtTmxioog9jiwr/ZjHzSXjxD27kL/i3+jQ9pUy8OXNAzKKd
         oc+U+wXa398++LUGbQzJKkZxe2L0vnBZKffe4vfcAacBfwdBj+orqclXLkI9PznzXynw
         nBzT9Y8NtQuwfEwYITmSSE/xZA8ySxmKclItJSdO2lUxPIgPPe3MvwRacFJWJKYRzpX0
         2QrqAUP/cSkS5MeKIPp0GY6lYFelkeJ2AxN9kE6DRm2XXeFRVJZwnsCOBu7Szsh07SW0
         nMQYY//9sfetkYajl/XsQ7Ucs3Rxk4Rn8PV4eIRKndpJ+MQj0+xL2Ms13xiHrIqnZg7j
         Kadg==
X-Gm-Message-State: AOJu0YwXWjjT0VGVW15jUY5CNY0kOjnPKXS9/sItH6Gad16VwWjJJOAC
	pp/IGtDYQHLV7xnH9xtvlcwXmu2Wk6MQfby24KMEoziy2CLbpjzazF8FL1BejzEIKXjeeGXgXVq
	SL50qPlaQ33Xs/H4jooYgv+Y0qodFwuVvbVQ=
X-Google-Smtp-Source: AGHT+IF5whYbBjb1aR39t972JHQngW8zgKObWj/a6d2g7Y2SpOD/Pr+lkL9NnvisZvabspATztmpc49kcYvS2gvQfIk=
X-Received: by 2002:a2e:8083:0:b0:2d2:6608:3d05 with SMTP id
 i3-20020a2e8083000000b002d266083d05mr585236ljg.52.1710407047145; Thu, 14 Mar
 2024 02:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <17BC4CBCF66B2D6B.15086@lists.yoctoproject.org>
In-Reply-To: <17BC4CBCF66B2D6B.15086@lists.yoctoproject.org>
From: Saswati Nayak <saswatinayak2010@gmail.com>
Date: Thu, 14 Mar 2024 14:33:55 +0530
Message-ID: <CAKe-BNoTT6ix6c7Ec6BEDJC-=3-as_n5nZeaP9FdebL+BsvH=w@mail.gmail.com>
Subject: Re: [yocto] How to use a single directory in multiple layers.
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
Content-Type: multipart/alternative; boundary="00000000000077701806139b2c9e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 09:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62758

--00000000000077701806139b2c9e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander,

My scenario will be , Suppose I am having a layer meta-A and in this layer
some directories structure is there such as recipes-bsp, recipes-kernel etc=
.
in recipes-bsp I have a recipe atf_1.0.bb which has few keys which are
stored in files directory.
and being used in meta-A also and meta-B also having the same recipe-bsp
which also need the same file to be used.
How we can use the same files keeping it only in the *meta-A/recipes-bsp*
 directory.
Can you suggest some idea.

Thanks
Saswati


On Wed, Mar 13, 2024 at 4:08=E2=80=AFPM Saswati Nayak via lists.yoctoprojec=
t.org
<saswatinayak2010=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello All,
>
>          I require guidance on utilizing a file directory present in the
> 'meta-x' layer while also needing access to the same directory within the
> 'meta-y' layer.
>
> How can I achieve this while keeping the directory centralized in one
> layer?
>
>
> Thanks & Regards
> Saswati
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62748):
> https://lists.yoctoproject.org/g/yocto/message/62748
> Mute This Topic: https://lists.yoctoproject.org/mt/104902553/7766144
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> saswatinayak2010@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000077701806139b2c9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alexander,=C2=A0<div><br></div><div>My scenario will=
 be , Suppose I am having a layer meta-A and in this layer some directories=
=C2=A0structure=C2=A0is there such as recipes-bsp, recipes-kernel etc.</div=
><div>in recipes-bsp I have a recipe=C2=A0<a href=3D"http://atf_1.0.bb/" ta=
rget=3D"_blank">atf_1.0.bb</a>=C2=A0which has few keys which are stored in =
files directory.</div><div>and being used in meta-A also and meta-B also ha=
ving the same recipe-bsp which=C2=A0also need the same file to be used.</di=
v><div>How we can use the same files keeping it only in the=C2=A0<b>meta-A/=
recipes-bsp</b>=C2=A0directory.</div><div>Can you suggest some idea.</div><=
div><br></div><div>Thanks=C2=A0</div><font color=3D"#888888"><div>Saswati</=
div><div><br></div></font></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Mar 13, 2024 at 4:08=E2=80=AFPM Saswati N=
ayak via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</=
a> &lt;saswatinayak2010=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello All,<div><br></di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I require guidance on utilizing a =
file directory present in the &#39;meta-x&#39;
 layer while also needing access to the same directory within the=20
&#39;meta-y&#39; layer.=C2=A0</div><div><br></div><div>How can I achieve th=
is while keeping the directory=20
centralized in one layer?=C2=A0=C2=A0<br></div><div><br></div><div><br></di=
v><div>Thanks &amp; Regards</div><div>Saswati</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62748): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62748" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62748</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104902553/776=
6144" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/104902553/7766144</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:saswatinayak2010@gmail.com" target=3D"_blank">sa=
swatinayak2010@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000077701806139b2c9e--

