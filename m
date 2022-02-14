Return-Path: <abhijeettripathi3003@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F672C4332F
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 15:35:44 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.35260.1644852942599971826
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 07:35:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=me5a/50t;
 spf=pass (domain: gmail.com, ip: 209.85.167.46,
 mailfrom: abhijeettripathi3003@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id o2so31424440lfd.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 07:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=60bSMNjxJiNRA06cAaLw2Oyjdq3twA2JU8CCOlP8cLs=;
        b=me5a/50tr9dLZtzmtyzGCQOL/jfQdf12Qq/SzBnOlWSKQUHMx/tqaxaIQc/+jzjwy1
         ZtEYmjSAtf61ufvRFwyoDLK9xqJw5BZcExP5+s4tUA9uUV25yro6TuKmgdjBf8lmdR/4
         tA2+KnEV0iUsdwo8dOoSmtR8bZ3we29Zx2zwIyBStg82nxmSc433n30CD1DYt9VQodk/
         oAecuj1fKeFlbKqbPAZQN4pR/jPZr1tGwFlvLhlFufXc3aOnHcPYcCqvMsOJVdnPrwbN
         aDB23mbxCyMPiTjTdZEPogbpRHJ7NYfSey5VhLTQpgne9jdhZgA3qRzuscs0KL7GWnb9
         ++2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=60bSMNjxJiNRA06cAaLw2Oyjdq3twA2JU8CCOlP8cLs=;
        b=ldfTDfC0yDN3tzxioMqBwFN5JFrKT3YYKQbiMtDHyZE2e3HFb7WZLNP159B+4P/IXd
         67b2Fw2dzmx2CEGynOBx6Kx5LBm+dOYY09RIkdrtXQkXEvp2J3HunsdY34jqP6Pr1Fmj
         kst6MBccNAN/NAiJY0PLgzn2tkQqvVx2An5V7HNGozXrnaGjtMVpljYkamycql6uJ/IH
         cpSq3vbPz3fsgbs7XCU9jOPVby07NShlsUeCz6Cb/1a4esn5IbMSsYg9zGYrdhS+VleV
         VpIyKxpLBYa6VGEF5bGETIEfWzPvH59qgaBqhvOiDRkGewTIr3g9k6kDIx8FnMMHVaHU
         S/kg==
X-Gm-Message-State: AOAM5321Bd2fjY+nzvcC6jc0P9qaaQXkCzZhvM7qRgjyF5RGNJeclfZZ
	xDAs82pq6FmkD5IB/pBI5QB3MSzPRla5/fVnKZA=
X-Google-Smtp-Source: 
 ABdhPJyVV5rHPargFo+iba6c4Hr5HJKeIH33Pgv3B/FLD/wyUhttImfjQSiAfjMk8YFF6SIYVhvEZ6dLR5DGmC1jT9c=
X-Received: by 2002:a05:6512:3a2:: with SMTP id
 v2mr163016lfp.18.1644852940836;
 Mon, 14 Feb 2022 07:35:40 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
 <CANNYZj-E_tfYX9L49+M1V20qARaOCeJtht_prbAq6W_MiyoAEQ@mail.gmail.com>
 <226A0FE8-3FD9-43A2-A2FF-642DB4074FD8@theyoctojester.info>
In-Reply-To: <226A0FE8-3FD9-43A2-A2FF-642DB4074FD8@theyoctojester.info>
From: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>
Date: Mon, 14 Feb 2022 21:05:29 +0530
Message-ID: 
 <CAB_tbNkbv=abH-eLff_mOt8ORn1f04fZqtW1Dt-wj+MtUi_exw@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on M1 Mac
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Anders Montonen <Anders.Montonen@iki.fi>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003f12ae05d7fc2b37"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 15:35:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56184

--0000000000003f12ae05d7fc2b37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 14, 2022 at 1:29 AM Josef Holzmayr <jester@theyoctojester.info>
wrote:

> Howdy!
>
> On 13. Feb 2022, at 19:04, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
> Even if you do manage to start a build, performance won't be great.
> Yocto, by design, builds the entire stack from source, so a lot of CPU
> cores is essential. Don't spend your time waiting, get an
> appropriately specced Linux workstation, or an account on a Linux
> server that your organization might have for the purpose.
>
>
> While that is perfectly true from the pure technical facts, I have to add
> that building in Parallels on a M1 is ok-ish. You have to crank up the VM
> way beyond the defaults, to something like 6-8core, 16+X GB RAM, but then
> it=E2=80=99s bearable for the occasional user. When you can=E2=80=99t get=
 your hands on a
> proper environment, its certainly an option.
>
> Greetz
>
I agree that a powerful Linux workstation will really help but right nowI
do not have access to any of it.
I Will try to check if I can get one, but in the meantime I would like to
start on my Mac so that I can continue my learning.

Thanks,
Abhijeet

>
>
> Alex
>
> On Sun, 13 Feb 2022 at 15:56, Abhijeet Tripathi
> <abhijeettripathi3003@gmail.com> wrote:
>
>
>
> On Sun, Feb 13, 2022 at 7:09 PM Anders Montonen <Anders.Montonen@iki.fi>
> wrote:
>
>
> Hi,
>
> On 13 Feb 2022, at 14:24, Abhijeet Tripathi <
> abhijeettripathi3003@gmail.com> wrote:
>
> Hello yocto-devs,
>
> I'm new to the yocto project and trying to set up a build environment on
> my M1 Mac which is arm64 architecture.
>
> I'm following the steps as mentioned in below link:
> https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions
>
> But it is always pulling up containers based on amd64 architecture. Are
> there any updated steps/link to set up a build environment specific to M1
> Mac(arm64)?
>
>
> Looking at Docker Hub, none of the published Crops containers are built
> for ARM64. You can try building the containers yourself, making sure to
> pick base distros that are available for ARM64.
>
> Note that there are plenty of reports of Docker performing poorly on Macs=
,
> probably because of the file system implementation. You may be better off
> using a full VM via e.g. UTM.
>
>
>
> I initially started with UTM but the problem with virtual machines is tha=
t
> we can only use half the resources of the machine.
> This makes the builds slower, so I was looking at the container way.
>
> Can you point me to any documentation which I can use to build customized
> containers for yocto builds?
>
> Thanks,
> Abhijeet
>
>
>
> -a
>
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56174):
> https://lists.yoctoproject.org/g/yocto/message/56174
> Mute This Topic: https://lists.yoctoproject.org/mt/89112092/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>

--0000000000003f12ae05d7fc2b37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 14, 2022 at 1:29 AM Josef=
 Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.info">jester@theyocto=
jester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div style=3D"overflow-wrap: break-word;">Howdy!<br><div><br><bl=
ockquote type=3D"cite"><div>On 13. Feb 2022, at 19:04, Alexander Kanavin &l=
t;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@=
gmail.com</a>&gt; wrote:</div><br><div><span style=3D"font-family:Helvetica=
;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:norm=
al;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;text-decoration:none;float:none;disp=
lay:inline">Even if you do manage to start a build, performance won&#39;t b=
e great.</span><br style=3D"font-family:Helvetica;font-size:12px;font-style=
:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;text-decoration:none"><span style=3D"font-family:Helvetica;fon=
t-size:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;text-decoration:none;float:none;display:=
inline">Yocto, by design, builds the entire stack from source, so a lot of =
CPU</span><br style=3D"font-family:Helvetica;font-size:12px;font-style:norm=
al;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none"><span style=3D"font-family:Helvetica;font-siz=
e:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration:none;float:none;display:inlin=
e">cores is essential. Don&#39;t spend your time waiting, get an</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varian=
t-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span style=3D"font-family:Helvetica;font-size:12px;font-st=
yle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;text-decoration:none;float:none;display:inline">appropriate=
ly specced Linux workstation, or an account on a Linux</span><br style=3D"f=
ont-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:nor=
mal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:=
none"><span style=3D"font-family:Helvetica;font-size:12px;font-style:normal=
;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration:none;float:none;display:inline">server that your orga=
nization might have for the purpose.</span><br style=3D"font-family:Helveti=
ca;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:no=
rmal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;text-decoration:none"></div></bloc=
kquote><div><br></div><div>While that is perfectly true from the pure techn=
ical facts, I have to add that building in Parallels on a M1 is ok-ish. You=
 have to crank up the VM way beyond the defaults, to something like 6-8core=
, 16+X GB RAM, but then it=E2=80=99s bearable for the occasional user. When=
 you can=E2=80=99t get your hands on a proper environment, its certainly an=
 option.</div><div><br></div><div>Greetz</div></div></div></blockquote><div=
>I agree that a powerful Linux workstation will really help but right nowI =
do not have access to any of it.</div><div>I Will try to check if I can get=
 one, but in the meantime I would like to start on my Mac so that I can con=
tinue my learning.</div><div><br></div><div>Thanks,</div><div>Abhijeet <br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overf=
low-wrap: break-word;"><div><br><blockquote type=3D"cite"><div><br style=3D=
"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none"><span style=3D"font-family:Helvetica;font-size:12px;font-style:norm=
al;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none;float:none;display:inline">Alex</span><br styl=
e=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-ca=
ps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decor=
ation:none"><br style=3D"font-family:Helvetica;font-size:12px;font-style:no=
rmal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration:none"><span style=3D"font-family:Helvetica;font-s=
ize:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;text-decoration:none;float:none;display:inl=
ine">On Sun, 13 Feb 2022 at 15:56, Abhijeet Tripathi</span><br style=3D"fon=
t-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:norma=
l;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:no=
ne"><span style=3D"font-family:Helvetica;font-size:12px;font-style:normal;f=
ont-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;text-decoration:none;float:none;display:inline">&lt;</span><a href=3D"m=
ailto:abhijeettripathi3003@gmail.com" style=3D"font-family:Helvetica;font-s=
ize:12px;font-style:normal;font-variant-caps:normal;font-weight:normal;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px" target=3D"_blank">abhijeettripathi3003@gma=
il.com</a><span style=3D"font-family:Helvetica;font-size:12px;font-style:no=
rmal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration:none;float:none;display:inline">&gt; wrote:</span=
><br style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-v=
ariant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;t=
ext-decoration:none"><blockquote type=3D"cite" style=3D"font-family:Helveti=
ca;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:no=
rmal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;text-decoration:none"><br><br>On S=
un, Feb 13, 2022 at 7:09 PM Anders Montonen &lt;<a href=3D"mailto:Anders.Mo=
ntonen@iki.fi" target=3D"_blank">Anders.Montonen@iki.fi</a>&gt; wrote:<br><=
blockquote type=3D"cite"><br>Hi,<br><br>On 13 Feb 2022, at 14:24, Abhijeet =
Tripathi &lt;<a href=3D"mailto:abhijeettripathi3003@gmail.com" target=3D"_b=
lank">abhijeettripathi3003@gmail.com</a>&gt; wrote:<br><br>Hello yocto-devs=
,<br><br>I&#39;m new to the yocto project and trying to set up a build envi=
ronment on my M1 Mac which is arm64 architecture.<br><br>I&#39;m following =
the steps as mentioned in below link:<br><a href=3D"https://github.com/crop=
s/docker-win-mac-docs/wiki/Mac-Instructions" target=3D"_blank">https://gith=
ub.com/crops/docker-win-mac-docs/wiki/Mac-Instructions</a><br><br>But it is=
 always pulling up containers based on amd64 architecture. Are there any up=
dated steps/link to set up a build environment specific to M1 Mac(arm64)?<b=
r><br><br>Looking at Docker Hub, none of the published Crops containers are=
 built for ARM64. You can try building the containers yourself, making sure=
 to pick base distros that are available for ARM64.<br><br>Note that there =
are plenty of reports of Docker performing poorly on Macs, probably because=
 of the file system implementation. You may be better off using a full VM v=
ia e.g. UTM.<br></blockquote><br><br>I initially started with UTM but the p=
roblem with virtual machines is that we can only use half the resources of =
the machine.<br>This makes the builds slower, so I was looking at the conta=
iner way.<br><br>Can you point me to any documentation which I can use to b=
uild customized containers for yocto builds?<br><br>Thanks,<br>Abhijeet<br>=
<br><blockquote type=3D"cite"><br><br>-a<br><br><br><br></blockquote><br><b=
r><br></blockquote><br style=3D"font-family:Helvetica;font-size:12px;font-s=
tyle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;text-decoration:none"><span style=3D"font-family:Helvetica=
;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:norm=
al;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;text-decoration:none;float:none;disp=
lay:inline">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</span><br style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion:none"><span style=3D"font-family:Helvetica;font-size:12px;font-style:n=
ormal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;text-decoration:none;float:none;display:inline">Links: You recei=
ve all messages sent to this group.</span><br style=3D"font-family:Helvetic=
a;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:nor=
mal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;text-decoration:none"><span style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion:none;float:none;display:inline">You automatically follow any topics yo=
u start or reply to.</span><br style=3D"font-family:Helvetica;font-size:12p=
x;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;text-decoration:none"><span style=3D"font-family:H=
elvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none;float:n=
one;display:inline">View/Reply Online (#56174):<span>=C2=A0</span></span><a=
 href=3D"https://lists.yoctoproject.org/g/yocto/message/56174" style=3D"fon=
t-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:norma=
l;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px" target=3D"_blank"=
>https://lists.yoctoproject.org/g/yocto/message/56174</a><br style=3D"font-=
family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;=
font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration:none=
"><span style=3D"font-family:Helvetica;font-size:12px;font-style:normal;fon=
t-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration:none;float:none;display:inline">Mute This Topic:<span>=C2=
=A0</span></span><a href=3D"https://lists.yoctoproject.org/mt/89112092/4689=
568" style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-v=
ariant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px" =
target=3D"_blank">https://lists.yoctoproject.org/mt/89112092/4689568</a><br=
 style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-=
decoration:none"><span style=3D"font-family:Helvetica;font-size:12px;font-s=
tyle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;text-decoration:none;float:none;display:inline">Group Owne=
r:<span>=C2=A0</span></span><a href=3D"mailto:yocto+owner@lists.yoctoprojec=
t.org" style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font=
-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br style=3D"font=
-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal=
;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;text-decoration:non=
e"><span style=3D"font-family:Helvetica;font-size:12px;font-style:normal;fo=
nt-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;text-decoration:none;float:none;display:inline">Unsubscribe:<span>=C2=A0=
</span></span><a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" styl=
e=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-ca=
ps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px" target=3D=
"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a><span style=3D"fon=
t-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:norma=
l;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:no=
ne;float:none;display:inline"><span>=C2=A0</span>[</span><a href=3D"mailto:=
jester@theyoctojester.info" style=3D"font-family:Helvetica;font-size:12px;f=
ont-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px" target=3D"_blank">jester@theyoctojester.info</a><spa=
n style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-vari=
ant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text=
-decoration:none;float:none;display:inline">]</span><br style=3D"font-famil=
y:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-=
weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;text-decoration:none"><sp=
an style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-var=
iant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;float:none;display:inline">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-</span></div></blockquote></div><br></div></blockquote></di=
v></div>

--0000000000003f12ae05d7fc2b37--

