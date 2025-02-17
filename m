Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B02C021AB
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 18:58:44 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.1412.1739818717991058548
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 10:58:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hjPdlnjH;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6e672a21b9dso22080576d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 10:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739818717; x=1740423517; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TLF4XrXoxfrGxVomTEEuDo9SUfB3Jp7hzG1PTrGyHFg=;
        b=hjPdlnjH4vGa8I2ECFRU/S4dynCyGOY7CO7GOFxJNwDFMOg/nn2uBy5eUEQ6039msB
         B0ebG+azwJvK8HZyY57orkR3ryuDLLDyb0SNh46rVCiEB38+zJYX6qRg43Wg6EUTFFaH
         e8ajc/88nQw2BFolxlMj5J80ATbVDXIKQ63CrdTq7/KImKzYox43TpcKbv7fsVdHqNWJ
         NT5jnTyBHzbMz4WPeXeCG4HrWDw+Fd4LOq3qI/jH5ncizmiMCNATemF84OcLvOos94uz
         69BLKWwZ/tPeKhT1dxeq1tO1QQQM/r6tEcXXlr8U9Pj1D7AMfelRjF9vyMcL3Pn4pbaf
         Vh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818717; x=1740423517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TLF4XrXoxfrGxVomTEEuDo9SUfB3Jp7hzG1PTrGyHFg=;
        b=o7NowcGVCL0YZP902WGCnUv5NLl8/skxbWxNOZ8vUEmClNGCf2790mUSJapUK+TArS
         6t+zWdRaF2ZRiUyyWfijqFn9QaF8jWenm6MCQXV71wdzOVgRjZ5wAljzK8fxhv+/DrD6
         nroZ3nGBCApty3hvEwO3TQtqKv7c9zmqELIiPD3YNQ2in9EIDmuYOLffbaoDPSeYPysm
         NG2RNO/7ljNA+NVJelT5FBbs8KFlLACRXpEMTHPqjuRC9UabSzS7hjI5KseqKwDSwpNQ
         71Vzox7KHTLXOH0RmEtQgPF8opPpxBhVNE2vj458/YWaJMo6gWuyHX+HJ113i93Mbvov
         w6uw==
X-Gm-Message-State: AOJu0YxKWjL1mWEZtZIrKd91qFjZIZboqzEd9gxcLjhZi19Gu+UnSzVY
	1R96mWfNuqgfe48I39KWvsvVDHTdytuf+oujUz/4hz0WGwbksuYOWzTQlkROtTVXbDKGOHj4u6E
	sUfVy3BFhowjBn6tCdAXMaVwJVh8=
X-Gm-Gg: ASbGncuGIoLuxOBqBqvWSGe+4VJLpmft9ovTDvLl5T6USi6lbj/9BM3Jit1f+8kfJu5
	TkbjWFJ19Tc8pIsB1Fq5h97uJ4buSJsZtByPjxGKnNv4uIS6zL8w0gNvXlB0qL4ccITiONOd7Yp
	Vj3NjFAZ8A6bNnUe72128cpZq1aqPJ9g==
X-Google-Smtp-Source: AGHT+IGoJkK2VY4ES904JbMWP0HG7qwdi5b3L3A8epoQXgl7hd24JZJcDKmUTboPgzbagde1mbbbS+uNxvZ9GfukIMU=
X-Received: by 2002:a05:6214:5085:b0:6e2:485d:fde6 with SMTP id
 6a1803df08f44-6e66ccaba71mr157001726d6.15.1739818716928; Mon, 17 Feb 2025
 10:58:36 -0800 (PST)
MIME-Version: 1.0
References: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
In-Reply-To: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Feb 2025 19:58:26 +0100
X-Gm-Features: AWEUYZn3TNGbHhHeXTVxazxwKp2HcIlIrfK6n5LMAul23rB03YOEZwPDJDgCDA4
Message-ID: <CANNYZj9iQBOQwkhyNqgfQ-xNrRoQs3JapDSChQ4cYs3D0i5eng@mail.gmail.com>
Subject: Re: [auh] Question setting up AUH locally
To: Tom Geelen <t.f.g.geelen@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000098a118062e5b1c3d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 18:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64823

--00000000000098a118062e5b1c3d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For auh to work, upstream version check needs to function properly and
quite often it doesn=E2=80=99t because no one ensured that when writing the=
 recipe.
Can you show the recipe and the output of =E2=80=98devtool latest-version
recipename=E2=80=99 ?

Alex

On Mon 17. Feb 2025 at 19.09, Tom Geelen <t.f.g.geelen@gmail.com> wrote:

> Hi all,
>
> I am currently trying to set up AUH locally in order to ease the
> maintenance of the layer I'm maintaining (meta-homeassistant).
> I have followed the steps given here
> https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html and
> have configured it to parse all the recipes in my layer (99% python
> based recipes).
>
> Now I have a problem. It correctly parses all recipes, however it
> finds no upgrade candidates. This is strange as I know some are in
> need of an upgrade, and a newer version is available on pypi for
> instance. Moreover I get quite some skips with the following error:
>
> Skip package meta-homeassistant/python3-hass-nabucasa (status =3D
> UNKNOWN_BROKEN, current version =3D 0.87.0, next version =3D 0.80.0)
>
> Where does it get the 'next version' value from as the latest version
> upstream is 0.92.0.
> I might have misconfigured something. I used the default
> upgrade-helper.conf with the following additions:
>
> layer_mode=3Dyes
> layer_name=3Dmeta-homeassistant
> layer_dir=3DBUILDDIR/../sources/meta-homeassistant
> layer_machines=3Dqemux86-64
>
> Thanks in advance,
>
> Tom
>

--00000000000098a118062e5b1c3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">For auh to work, upstream version check needs to function=
 properly and quite often it doesn=E2=80=99t because no one ensured that wh=
en writing the recipe. Can you show the recipe and the output of =E2=80=98d=
evtool latest-version recipename=E2=80=99 ?</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon 17. Feb 2025 at 1=
9.09, Tom Geelen &lt;<a href=3D"mailto:t.f.g.geelen@gmail.com">t.f.g.geelen=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)">Hi all,<br>
<br>
I am currently trying to set up AUH locally in order to ease the<br>
maintenance of the layer I&#39;m maintaining (meta-homeassistant).<br>
I have followed the steps given here<br>
<a href=3D"https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html"=
 rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.org/dev-man=
ual/upgrading-recipes.html</a> and<br>
have configured it to parse all the recipes in my layer (99% python<br>
based recipes).<br>
<br>
Now I have a problem. It correctly parses all recipes, however it<br>
finds no upgrade candidates. This is strange as I know some are in<br>
need of an upgrade, and a newer version is available on pypi for<br>
instance. Moreover I get quite some skips with the following error:<br>
<br>
Skip package meta-homeassistant/python3-hass-nabucasa (status =3D<br>
UNKNOWN_BROKEN, current version =3D 0.87.0, next version =3D 0.80.0)<br>
<br>
Where does it get the &#39;next version&#39; value from as the latest versi=
on<br>
upstream is 0.92.0.<br>
I might have misconfigured something. I used the default<br>
upgrade-helper.conf with the following additions:<br>
<br>
layer_mode=3Dyes<br>
layer_name=3Dmeta-homeassistant<br>
layer_dir=3DBUILDDIR/../sources/meta-homeassistant<br>
layer_machines=3Dqemux86-64<br>
<br>
Thanks in advance,<br>
<br>
Tom<br>
</blockquote></div></div>

--00000000000098a118062e5b1c3d--

