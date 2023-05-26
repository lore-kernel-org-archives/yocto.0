Return-Path: <edmundwatson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D20C7EE23
	for <webhook@archiver.kernel.org>; Fri, 26 May 2023 13:17:14 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.7645.1685107029332015469
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 May 2023 06:17:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=oi1T9n1j;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: edmundwatson@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1b01d912a76so1497015ad.2
        for <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 06:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685107029; x=1687699029;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n3SJUQgjs7vMkhtOjeZ/SXm2L08pugFxQ5g3PSZJBjo=;
        b=oi1T9n1jTyAXcikxP0lEg4oBv/Azr4ZjLkdYXmmEQKKX26PME6Jb8vRkBWiq2o6fXQ
         WBzsUtSd9A7oLDtMZov8fqY3EraShmAjVklDapEjC8zjKC5edeV2LetMnyYtT1ulR+Um
         gDUVpySL03W3YthaI77cCxO1VjCSyZnE4QKNWKNPWvxQ0WRSUJvinJtNawBezj8C1J1C
         G8yzpk3Gqhz4PZjW1seNZvCJR5TPlXSWvxRZ+paEtzdJVwBUR27rqNu2n/8etnS8Vkhk
         D0DbqUXdjQdsh/UH27LFC3UzX/gRpKAMEsqEanHCVCEmXg67EMdC6KTagNDFJLYId7rs
         4fCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685107029; x=1687699029;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3SJUQgjs7vMkhtOjeZ/SXm2L08pugFxQ5g3PSZJBjo=;
        b=gG/13GJtDQVNzhO9+/olFGo/v8k97f2GcyMo0QBTVbrwek3bL/TaIauqCeZtsCcq+o
         l4TkhOtyla9X9SzcY6HKZs2WS/zHcpYnd8k+fyzblnIxkCVrdQt6Hj53YrWRVIK4t8t4
         AU8l7suJZ4DdYuL1SIHH1FVFmVX02b7EsboIa/uydT/mIo7xNG3B/gVjOP/zN8nC19tq
         uldU2KFu8clL3YwyHVPRxi01CGLVObYAHplgB8ax432bDrEN4JccXbQh4/fiqOv0TG3/
         bBBIca6Fp+mZxPbhsf78By0eTV0SQSZu0/df0fO4D1/RhQnvLS2QaKXgcHXwyPwR0bbx
         Tueg==
X-Gm-Message-State: AC+VfDzlKQP1qmTrZnZbI9e66Li2r5tAlAEpxJ46jcPn6j2qOcWbc9Dw
	P5M1qamwm/NdGl5TVWFeCniPBzNj0lnqS0k0nA==
X-Google-Smtp-Source: ACHHUZ5YI/bahEQ+dUo3hBLCxdGQET8SwjUi4tNotjO97NoZv30q9h20lcZzURUJnQZ6AsaQGU4tJuvaCsEcb5mY0Oc=
X-Received: by 2002:a17:902:e847:b0:1af:d3b2:4eb7 with SMTP id
 t7-20020a170902e84700b001afd3b24eb7mr2877945plg.21.1685107028503; Fri, 26 May
 2023 06:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <OsUz.1683196830565737529.0oYZ@lists.yoctoproject.org> <GST4UR.R24GL1IDZDSM3@googlemail.com>
In-Reply-To: <GST4UR.R24GL1IDZDSM3@googlemail.com>
From: Ed Watson <edmundwatson@gmail.com>
Date: Fri, 26 May 2023 15:16:57 +0200
Message-ID: <CADD-u4tbcYUF+cXjw=FKpAQbkbn+Zpqb45NmB5YYAtTgVP3gdw@mail.gmail.com>
Subject: Re: [yocto] #raspberrypi #ffmpeg
To: Markus Volk <mrksvolk@googlemail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d7b40405fc988d5e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 May 2023 13:17:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60128

--000000000000d7b40405fc988d5e
Content-Type: text/plain; charset="UTF-8"

Hello,

Great thanks very much. Just getting to this..

Ok I am working on kirtstone RPI4-64bit

https://github.com/MarkusVolk/meta-kodi/tree/kirkstone/nexus/recipes-multimedia/ffmpeg/ffmpeg

| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64',
'common-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| ERROR: v4l2_m2m requested, but not all dependencies are satisfied:
linux_videodev2_h sem_timedwait


This is missing a kernel module right, do you also have the machine configs
around ?

Ed Watson



On Thu, 4 May 2023 at 13:41, Markus Volk <mrksvolk@googlemail.com> wrote:

> Am Do, 4. Mai 2023 um 03:40:30 -0700 schrieb Ed Watson <
> edmundwatson@gmail.com>:
>
> Anyone else go anywhere close?
>
>
> Got it working on rpi4. Unfortunaltely drmprime is running stable only
> with direct-to-plane rendering and behaves wonky if used with egl. Not
> ideal for wayland but working fine with gbm.
>
> I have imported some needed patches from LibreElec project.
> This might be useful for you:
>
> https://github.com/MarkusVolk/meta-kodi/tree/master/recipes-multimedia/ffmpeg/ffmpeg
>

--000000000000d7b40405fc988d5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Great thanks very much. Just get=
ting to this..</div><div><br>Ok I am working on kirtstone RPI4-64bit<br><br=
><a href=3D"https://github.com/MarkusVolk/meta-kodi/tree/kirkstone/nexus/re=
cipes-multimedia/ffmpeg/ffmpeg">https://github.com/MarkusVolk/meta-kodi/tre=
e/kirkstone/nexus/recipes-multimedia/ffmpeg/ffmpeg</a><br><br>| DEBUG: Pyth=
on function extend_recipe_sysroot finished<br>| DEBUG: Executing shell func=
tion autotools_preconfigure<br>| DEBUG: Shell function autotools_preconfigu=
re finished<br>| DEBUG: Executing python function autotools_aclocals<br>| D=
EBUG: SITE files [&#39;endian-little&#39;, &#39;bit-64&#39;, &#39;arm-commo=
n&#39;, &#39;arm-64&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &=
#39;aarch64-linux&#39;, &#39;common&#39;]<br>| DEBUG: Python function autot=
ools_aclocals finished<br>| DEBUG: Executing shell function do_configure<br=
>| ERROR: v4l2_m2m requested, but not all dependencies are satisfied: linux=
_videodev2_h sem_timedwait<br><br><br>This is missing a kernel=C2=A0module =
right, do you also have the machine configs around ?=C2=A0<br><br clear=3D"=
all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div>Ed Watson<br><br></div></div></div></div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, 4 May 2023 at 13:41, Markus Volk &lt;<a href=3D"mailto:m=
rksvolk@googlemail.com">mrksvolk@googlemail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div id=3D"m_441718095157784=
5864geary-body" dir=3D"auto">Am Do, 4. Mai 2023 um 03:40:30 -0700 schrieb E=
d Watson &lt;<a href=3D"mailto:edmundwatson@gmail.com" target=3D"_blank">ed=
mundwatson@gmail.com</a>&gt;:<br><blockquote type=3D"cite">Anyone else go a=
nywhere close?</blockquote><div><br></div><div>Got it working on rpi4. Unfo=
rtunaltely drmprime is running stable only with direct-to-plane rendering a=
nd behaves wonky if used with egl. Not ideal for wayland but working fine w=
ith gbm.</div><div><br></div><div>I have imported some needed patches from =
LibreElec project.</div><div>This might be useful for you:</div><div><a hre=
f=3D"https://github.com/MarkusVolk/meta-kodi/tree/master/recipes-multimedia=
/ffmpeg/ffmpeg" target=3D"_blank">https://github.com/MarkusVolk/meta-kodi/t=
ree/master/recipes-multimedia/ffmpeg/ffmpeg</a></div></div></blockquote></d=
iv>

--000000000000d7b40405fc988d5e--

