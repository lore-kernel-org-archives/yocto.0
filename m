Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C12C4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 15:03:08 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.33480.1701874987456093588
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 07:03:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mSkxCdvY;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: renato.mendes.pes@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d03bcf27e9so36766265ad.0
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 07:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701874987; x=1702479787; darn=lists.yoctoproject.org;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7ojO9U3enOmQjvkgd+MzPXlV5Z8a4rwsQAAGvglcp9E=;
        b=mSkxCdvYcSTDcKLTuh6HUZ9u2O2JKb/JV3biveAQWSikmuCJFxu/Gz7C8aGOmLMh/f
         sxFjWqdWVCIerlXpKcerUkO8DjcjP30+GLscYO6/WwMGnhlcArA0bQmJbiW4UUBDNEdd
         2t/rRQeAiLs8xt9EL4kurfpHjMNsxvkLsI9Og19CVf3SFDCakYCZG8L/MFkWWiUEDL/x
         qvu7YgxyvjQOJx08FcQoHBVrnIkNrbKVfOfbjXl1wFD6H8gV7uavFALnzUPYCK1PrTdM
         MO0dZbIaj/RXD4r6dBz4S8yftmAoPvaUytsyg8aKqE4iiNy/nyEO3tGQGHsBcJEr/ruM
         YsJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701874987; x=1702479787;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ojO9U3enOmQjvkgd+MzPXlV5Z8a4rwsQAAGvglcp9E=;
        b=qATcRYDpdIQD+8gvSuW4fzIPaTwbnJ1p3eChxi1Cj5cfzb+drN8tYj6vd4KCNcUOIX
         8X6mFadLpaa7FF/8JPnZReMbaBoZ5PWUi8vks2KPM2jNV/x6ABQVsqrdp4XbTul2Y+65
         Ae7f3Eh5+zkHVYb8E4t09+sedfHv1ilbQbW6hn3oq3u6bkSwDQB3mrkfNsZkibg4jvi3
         w5qlrnsvdM7N+NilqClqq/Uyv4FiuXfodjymnQZFulKOiZe0Z40833tzdlXEty98oXIa
         wWxZOaB1mtRxsX2E6cSK4rn/yxGaxKKyb1aFSDO+61S133QCmWrEcFCBsc3FoBJLI8SO
         3BQQ==
X-Gm-Message-State: AOJu0YzjUvVojeEWyZIfmaJLpwY3DOL2+BYE+rOnp9JHtEtRfSZx2Cmt
	ncbAUsm6H48NCW4Pj4RTMRA=
X-Google-Smtp-Source: AGHT+IEZGkEbGXLTdqt7Ub3VpMF4R831fLowhwyAy5s+h8VRG6vykz2m1tLSTJRwv4kkXPg46JhRmg==
X-Received: by 2002:a17:903:2585:b0:1d0:9d64:6e3e with SMTP id jb5-20020a170903258500b001d09d646e3emr706042plb.117.1701874986560;
        Wed, 06 Dec 2023 07:03:06 -0800 (PST)
Received: from smtpclient.apple ([2804:32d4:10:651:b1d9:c3bd:3093:4713])
        by smtp.gmail.com with ESMTPSA id b13-20020a170902d30d00b001cfcc10491fsm4047648plc.161.2023.12.06.07.03.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Dec 2023 07:03:06 -0800 (PST)
From: Renato Mendes <renato.mendes.pes@gmail.com>
Message-Id: <247680A7-74F9-4F28-A24A-B45AAA43AE71@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_781D2FE0-70E9-44DF-93CE-1FB3A18530CE"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: [yocto] WARNING: IMAGE_FSTYPES:remove += is not a recommended
 operator combination, please replace it / Fuzz detected
Date: Wed, 6 Dec 2023 12:02:51 -0300
In-Reply-To: <CAEt6Nwop_n5GU+exF+UXKcYufEXmoX-BJXenaBEFP1gi9pEUpg@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
To: Josef Holzmayr <jester@theyoctojester.info>
References: <1w5J.1701871834409746085.0H28@lists.yoctoproject.org>
 <CAEt6Nwop_n5GU+exF+UXKcYufEXmoX-BJXenaBEFP1gi9pEUpg@mail.gmail.com>
X-Mailer: Apple Mail (2.3731.500.231)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 15:03:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61816


--Apple-Mail=_781D2FE0-70E9-44DF-93CE-1FB3A18530CE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Thanks!

> Em 6 de dez. de 2023, =C3=A0(s) 11:54, Josef Holzmayr =
<jester@theyoctojester.info> escreveu:
>=20
> Hi Renato,
>=20
> Replace it with
> IMAGE_FSTYPES:remove =3D "rpi-sdimg"
> The +=3D operator is not meant to be used in combination with :append =
and :remove.
>=20
> Greetz,
> Josef
>=20
> On Wed, Dec 6, 2023 at 3:10=E2=80=AFPM <renato.mendes.pes@gmail.com =
<mailto:renato.mendes.pes@gmail.com>> wrote:
>> I'm building a Yocto image to Raspi Zero W and Mender. My =
configuration:
>>=20
>>=20
>> MACHINE =3D "raspberrypi0-wifi"
>>=20
>> MENDER_ARTIFACT_NAME =3D "release-1"
>>=20
>> INHERIT +=3D "mender-full"
>>=20
>> RPI_USE_U_BOOT =3D "1"
>>=20
>> #MENDER_PARTITION_ALIGNMENT =3D "4096000"
>>=20
>> MENDER_BOOT_PART_SIZE_MB =3D "40"
>>=20
>> IMAGE_INSTALL:append =3D " kernel-image kernel-devicetree"
>>=20
>> IMAGE_FSTYPES:remove +=3D " rpi-sdimg"
>>=20
>> MENDER_SERVER_URL =3D "https://mender.mydomain.com =
<https://mender.mydomain.com/>"
>>=20
>> MENDER_TENANT_TOKEN =3D "MY_TOKEN"
>>=20
>> DISTRO_FEATURES:append =3D " systemd"
>>=20
>> VIRTUAL-RUNTIME_init_manager =3D "systemd"
>>=20
>> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>>=20
>> VIRTUAL-RUNTIME_initscripts =3D ""
>>=20
>> IMAGE_FSTYPES =3D "ext4"
>>=20
>>=20
>> When building:=20
>>=20
>> bitbake core-image-full-cmdline
>>=20
>>=20
>> I'm getting the following warning:
>>=20
>> WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operator =
combination, please replace it.
>> WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operator =
combination, please replace it
>>=20
>> Any ideas of what's going on and how to fix it?
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#61814): =
https://lists.yoctoproject.org/g/yocto/message/61814
>> Mute This Topic: https://lists.yoctoproject.org/mt/103013050/4689568
>> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto%2Bowner@lists.yoctoproject.org>
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[jester@theyoctojester.info <mailto:jester@theyoctojester.info>]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--Apple-Mail=_781D2FE0-70E9-44DF-93CE-1FB3A18530CE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;">Thanks!<br><div><br><blockquote type=3D"cite"><div>Em =
6 de dez. de 2023, =C3=A0(s) 11:54, Josef Holzmayr =
&lt;jester@theyoctojester.info&gt; escreveu:</div><br =
class=3D"Apple-interchange-newline"><div><meta charset=3D"UTF-8"><div =
dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">Hi Renato,<div><br></div><div>Replace it =
with</div><div>IMAGE_FSTYPES:remove =3D =
"rpi-sdimg"</div><div>The&nbsp;+=3D operator is not meant to be used in =
combination with :append and =
:remove.</div><div><br></div><div>Greetz,<br>Josef</div></div><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><div =
class=3D"gmail_quote" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 6, 2023 at =
3:10=E2=80=AFPM &lt;<a =
href=3D"mailto:renato.mendes.pes@gmail.com">renato.mendes.pes@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin: =
0px 0px 0px 0.8ex; border-left-width: 1px; border-left-style: solid; =
border-left-color: rgb(204, 204, 204); padding-left: 1ex;">I'm building =
a Yocto image to Raspi Zero W and Mender. My configuration:<br><br><div =
style=3D"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); =
font-family: Menlo, Monaco, &quot;Courier New&quot;, monospace; =
font-size: 12px; line-height: 18px; white-space: pre-wrap;">
<div><span style=3D"color: rgb(156, 220, 254);">MACHINE</span> <span =
style=3D"color: rgb(212, 212, 212);">=3D</span> <span style=3D"color: =
rgb(206, 145, 120);">"raspberrypi0-wifi"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">MENDER_ARTIFACT_NAME</span> <span style=3D"color: rgb(212, 212, =
212);">=3D</span> <span style=3D"color: rgb(206, 145, =
120);">"release-1"</span></div>
<div><span style=3D"color: rgb(156, 220, 254);">INHERIT</span> <span =
style=3D"color: rgb(212, 212, 212);">+=3D</span> <span style=3D"color: =
rgb(206, 145, 120);">"mender-full"</span></div>
<div><span style=3D"color: rgb(156, 220, 254);">RPI_USE_U_BOOT</span> =
<span style=3D"color: rgb(212, 212, 212);">=3D</span> <span =
style=3D"color: rgb(206, 145, 120);">"1"</span></div>
<div><span style=3D"color: rgb(106, 153, =
85);">#MENDER_PARTITION_ALIGNMENT =3D "4096000"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">MENDER_BOOT_PART_SIZE_MB</span> <span style=3D"color: rgb(212, =
212, 212);">=3D</span> <span style=3D"color: rgb(206, 145, =
120);">"40"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">IMAGE_INSTALL</span><span style=3D"color: rgb(212, 212, =
212);">:</span><span style=3D"color: rgb(156, 220, 254);">append</span> =
<span style=3D"color: rgb(212, 212, 212);">=3D</span> <span =
style=3D"color: rgb(206, 145, 120);">" kernel-image =
kernel-devicetree"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">IMAGE_FSTYPES</span><span style=3D"color: rgb(212, 212, =
212);">:</span><span style=3D"color: rgb(156, 220, 254);">remove</span> =
<span style=3D"color: rgb(212, 212, 212);">+=3D</span> <span =
style=3D"color: rgb(206, 145, 120);">" rpi-sdimg"</span></div>
<div><span style=3D"color: rgb(156, 220, 254);">MENDER_SERVER_URL</span> =
<span style=3D"color: rgb(212, 212, 212);">=3D</span> <span =
style=3D"color: rgb(206, 145, 120);">"<a =
href=3D"https://mender.mydomain.com/" =
target=3D"_blank">https://mender.mydomain.com</a>"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">MENDER_TENANT_TOKEN</span> <span style=3D"color: rgb(212, 212, =
212);">=3D</span> <span style=3D"color: rgb(206, 145, =
120);">"MY_TOKEN"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">DISTRO_FEATURES</span><span style=3D"color: rgb(212, 212, =
212);">:</span><span style=3D"color: rgb(156, 220, 254);">append</span> =
<span style=3D"color: rgb(212, 212, 212);">=3D</span> <span =
style=3D"color: rgb(206, 145, 120);">" systemd"</span></div>
<div>VIRTUAL<span style=3D"color: rgb(212, 212, 212);">-</span><span =
style=3D"color: rgb(156, 220, 254);">RUNTIME_init_manager</span> <span =
style=3D"color: rgb(212, 212, 212);">=3D</span> <span style=3D"color: =
rgb(206, 145, 120);">"systemd"</span></div>
<div><span style=3D"color: rgb(156, 220, =
254);">DISTRO_FEATURES_BACKFILL_CONSIDERED</span> <span style=3D"color: =
rgb(212, 212, 212);">=3D</span> <span style=3D"color: rgb(206, 145, =
120);">"sysvinit"</span></div>
<div>VIRTUAL<span style=3D"color: rgb(212, 212, 212);">-</span><span =
style=3D"color: rgb(156, 220, 254);">RUNTIME_initscripts</span> <span =
style=3D"color: rgb(212, 212, 212);">=3D</span> <span style=3D"color: =
rgb(206, 145, 120);">""</span></div>
<div><span style=3D"color: rgb(156, 220, 254);">IMAGE_FSTYPES</span> =
<span style=3D"color: rgb(212, 212, 212);">=3D</span> <span =
style=3D"color: rgb(206, 145, 120);">"ext4"</span></div>
</div><br>When building:&nbsp;<br><div style=3D"color: rgb(204, 204, =
204); background-color: rgb(31, 31, 31); font-family: Menlo, Monaco, =
&quot;Courier New&quot;, monospace; font-size: 12px; line-height: 18px; =
white-space: pre-wrap;">
<div><span style=3D"color: rgb(220, 220, 170);">bitbake</span> <span =
style=3D"color: rgb(206, 145, =
120);">core-image-full-cmdline</span></div>
</div><br>I'm getting the following =
warning:<br><br><div><strong>WARNING: IMAGE_FSTYPES:remove +=3D is not a =
recommended operator combination, please replace =
it.</strong></div><div><strong>WARNING: IMAGE_FSTYPES:remove +=3D is not =
a recommended operator combination, please replace =
it</strong><br><br>Any ideas of what's going on and how to fix =
it?<br><br></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Link=
s: You receive all messages sent to this group.<br>You automatically =
follow any topics you start or reply to.<br>View/Reply Online =
(#61814):<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/61814" =
rel=3D"noreferrer" =
target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/61814</a>=
<br>Mute This Topic:<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/mt/103013050/4689568" =
rel=3D"noreferrer" =
target=3D"_blank">https://lists.yoctoproject.org/mt/103013050/4689568</a><=
br>Group Owner:<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" =
target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>Unsubscribe:<s=
pan class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=3D"noreferrer" =
target=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a><span =
class=3D"Apple-converted-space">&nbsp;</span>[<a =
href=3D"mailto:jester@theyoctojester.info" =
target=3D"_blank">jester@theyoctojester.info</a>]<br>-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-</blockquote></div></div></blockquote></div><br></=
body></html>=

--Apple-Mail=_781D2FE0-70E9-44DF-93CE-1FB3A18530CE--

