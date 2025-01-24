Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C422C02181
	for <webhook@archiver.kernel.org>; Fri, 24 Jan 2025 10:30:12 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.8891.1737714605448544507
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2025 02:30:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mQNd/nCn;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: marek.belisko@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385d7b4da2bso1777644f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2025 02:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737714604; x=1738319404; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zAqjNK+lJAbzOGwEDwxZbc/7xZAZX42jG1nHXkcrbVE=;
        b=mQNd/nCnAm0YsVtbgeB/2U+b74zmTe62IIsflVy65UjLJNKMAG1xesmL8cqeUhE1Wd
         14mw+EahZIg21ETuABBEMm9AXPPfUKfj06oe8swq/mCSwGDx6QlziAcFs78CMZ+P11zU
         gw1g7j1rOxOu+/BDM8gkrcPPbahfils1mM8KsP8E7Q6z21PvZjlHyYA21F9gF9tj9ugR
         qyjEO76QoztVaovfWkpLhoJ7AcrgyhCh9Pia2kbfENl+0ZQTzDgL6AMSZMJ6C2W34KYH
         8yHVEzwNxbgJLJoV0YFCWyZZbchu2T/rZi+tifx+Hz7Lys+mJmUmSL8YG0F24ghJfZNe
         WTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737714604; x=1738319404;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zAqjNK+lJAbzOGwEDwxZbc/7xZAZX42jG1nHXkcrbVE=;
        b=SVLyrtM8b22zlLy0nJRZT1Zh4j0AE7nKwn3Ef7Ekmn47ns1fZaXLrbZJLQBQX5TWg5
         OTgoj/qLU8CcN6xfZ5t5jWC4LrwA1DNGT0Bn/+5/gxe2zHhi3t+vkdUNyESfVyE/Cn2v
         0rXZILcsZPgf1sidn338WYdtyCTd0hG9u3AJYIZNs+jt6Rkl1aMg3VK9uyWRCpg+brY4
         xGal0rl4GvhYNOM9r9auW5bqiVeHkonaVT4boaBwOjZmwXbdbtHyBsia4iHcje/Ql4KP
         OsIQzgrTr8KPDOiZc/3xMJATd0thITYNZKx3l3YUWVZ5b2612Sm2NlpurlDVFjVnf2C3
         n3Qg==
X-Gm-Message-State: AOJu0YzrsIFeoK7C8DivTiZJWaBn0qOwyg86cnZR56yNEUu4cyWoEzn6
	B8+0Ld2hfiew7zN/iuFEtbi34Oq1ExxvYDumuljxrUjJHpoQjJTIAVMZeejWWXfHwm84YV8Hq2u
	gp5niiajQM0YugUin+AW5L8QX9L4=
X-Gm-Gg: ASbGnctvmC+1Jio6UVV3f42kNfUWOXdkbNWcYTE5oNoNr3UuS5pCQ9ilQGTWiTLjhtu
	VWBz30zBCFndHa/cz1GKfxTJ26+vuOJrM5MUApiF7P0XOmm1NKMEiFyyNTXXOOkoEOq17inY9
X-Google-Smtp-Source: AGHT+IE391zBr5SOxr5dqyfAhkh1e5PclYhRJF+F4dUYy3zvA9ZfKC5sYp31sgaEZnJs1bbPl5R4/UvQc1/t7uLRSac=
X-Received: by 2002:a5d:64a3:0:b0:385:f909:eb2c with SMTP id
 ffacd0b85a97d-38bf57a77a2mr36440564f8f.38.1737714603540; Fri, 24 Jan 2025
 02:30:03 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37oMLcEqExL57bReJcF_h56=fv9_8RFrvNONVM=gX416A@mail.gmail.com>
 <05bd87e8-d7ac-4764-a252-b6efedeb0ae6@cherry.de>
In-Reply-To: <05bd87e8-d7ac-4764-a252-b6efedeb0ae6@cherry.de>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 24 Jan 2025 11:29:52 +0100
X-Gm-Features: AWEUYZnggKnStyBpQQRTK0IAGaDsUAHV3DbvHDa9uCrgSuc-jKUaIfUIjsTNjvI
Message-ID: <CAAfyv37eyhr3SnViH-0fAxEBdwj2wt=4GY76G94FxX-4D8Nc=Q@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] rk3328 loader for emmc flashing
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000aa487a062c71353e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2025 10:30:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64624

--000000000000aa487a062c71353e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

On Fri, Jan 24, 2025 at 11:15=E2=80=AFAM Quentin Schulz <quentin.schulz@che=
rry.de>
wrote:

> Hi Marek,
>
> On 1/24/25 11:04 AM, Marek Belisko via lists.yoctoproject.org wrote:
> > Hello,
> >
> > I'm trying to add support for rk3328-evb. I've added a machine and buil=
t
> a
> > minimal image which I would like to flash to emmc. For flashing I'm
> usually
> > using rkdeveloptool which download some binary blok (loader) and then c=
an
> > flash wic image (at least I'm doing that for radxa boards). Does anybod=
y
> > have an idea where I can find such loader pls? I've tried this :
> > https://xdaforums.com/attachments/for-rk3328-devices-rar.5168743/ but
> none
> > of them works (it prints: Opening loader failed, exiting download boot!=
).
> > I've tried to use MiniLoaderAll.bin from the vendor but this one just
> > prints some garbage to the serial port and I cannot download wic after
> that.
> >
>
> I do not have any RK3328 board available, but the instructions so far
> are the same for RK3399, PX30 and RK3588 (the boards I do have access to)=
.
>
> https://github.com/rockchip-linux/rkbin
> tools/boot_merger RKBOOT/RK3328MINIALL.ini
>
> This will generate an rk3328_loader_v1.21.250.bin file at the root of
> rkbin directory. Use that as argument for `rkdeveloptool db` command.
>
Thanks a lot for that.

>
> If your board is using a different baudrate or console mux/controller,
> you can modify its configuration for the DDR bin blob (first stage
> bootloader contained in rk3328_loader_*.bin) by editing
> tools/ddrbin_param.txt and then calling tools/ddrbin_tool.py rk3328 on
> bin/rk33/rk3328_ddr_*.bin. Since there are two, you need to know which
> one to edit. Reading RKBOOT/RK3328MINIALL.ini, the 333MHz one is used.
>
> FYI, you can also replace rkdeveloptool with rockusb from Collabora,
> available here:
> https://github.com/collabora/rockchiprs/tree/main/rockusb/examples What
> I like about it is that it handles bmap files for flashing on the eMMC :)
>
Oh perfect. Didn't know about that one. Maybe we can put that info to
meta-rockchip wiki/README.

>
> Cheers,
> Quentin
>

Thanks and BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000aa487a062c71353e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Quentin,</div><br><div class=3D"gmail_=
quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, =
Jan 24, 2025 at 11:15=E2=80=AFAM Quentin Schulz &lt;<a href=3D"mailto:quent=
in.schulz@cherry.de">quentin.schulz@cherry.de</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi Marek,<br>
<br>
On 1/24/25 11:04 AM, Marek Belisko via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote=
:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m trying to add support for rk3328-evb. I&#39;ve added a machine=
 and built a<br>
&gt; minimal image which I would like to flash to emmc. For flashing I&#39;=
m usually<br>
&gt; using rkdeveloptool which download some binary blok (loader) and then =
can<br>
&gt; flash wic image (at least I&#39;m doing that for radxa boards). Does a=
nybody<br>
&gt; have an idea where I can find such loader pls? I&#39;ve tried this :<b=
r>
&gt; <a href=3D"https://xdaforums.com/attachments/for-rk3328-devices-rar.51=
68743/" rel=3D"noreferrer" target=3D"_blank">https://xdaforums.com/attachme=
nts/for-rk3328-devices-rar.5168743/</a> but none<br>
&gt; of them works (it prints: Opening loader failed, exiting download boot=
!).<br>
&gt; I&#39;ve tried to use MiniLoaderAll.bin from the vendor but this one j=
ust<br>
&gt; prints some garbage to the serial port and I cannot download wic after=
 that.<br>
&gt; <br>
<br>
I do not have any RK3328 board available, but the instructions so far <br>
are the same for RK3399, PX30 and RK3588 (the boards I do have access to).<=
br>
<br>
<a href=3D"https://github.com/rockchip-linux/rkbin" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/rockchip-linux/rkbin</a><br>
tools/boot_merger RKBOOT/RK3328MINIALL.ini<br>
<br>
This will generate an rk3328_loader_v1.21.250.bin file at the root of <br>
rkbin directory. Use that as argument for `rkdeveloptool db` command.<br></=
blockquote><div>Thanks a lot for that.</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
<br>
If your board is using a different baudrate or console mux/controller, <br>
you can modify its configuration for the DDR bin blob (first stage <br>
bootloader contained in rk3328_loader_*.bin) by editing <br>
tools/ddrbin_param.txt and then calling tools/ddrbin_tool.py rk3328 on <br>
bin/rk33/rk3328_ddr_*.bin. Since there are two, you need to know which <br>
one to edit. Reading RKBOOT/RK3328MINIALL.ini, the 333MHz one is used.<br>
<br>
FYI, you can also replace rkdeveloptool with rockusb from Collabora, <br>
available here: <br>
<a href=3D"https://github.com/collabora/rockchiprs/tree/main/rockusb/exampl=
es" rel=3D"noreferrer" target=3D"_blank">https://github.com/collabora/rockc=
hiprs/tree/main/rockusb/examples</a> What <br>
I like about it is that it handles bmap files for flashing on the eMMC :)<b=
r></blockquote><div>Oh perfect. Didn&#39;t know about that one. Maybe we ca=
n put that info to meta-rockchip wiki/README.</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
<br>
Cheers,<br>
Quentin<br>
</blockquote></div><div><br clear=3D"all"></div><div>Thanks and BR,</div><d=
iv><br></div><div>marek</div><div><br></div><span class=3D"gmail_signature_=
prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">as simple =
and primitive as possible<br>----------------------------------------------=
---<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova=
 Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype:=
 marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.c=
om" target=3D"_blank">http://open-nandra.com</a></div></div>

--000000000000aa487a062c71353e--

