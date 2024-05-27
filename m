Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BAD9C25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 06:53:11 +0000 (UTC)
Subject: Re: [yocto] Run a post-processing step after image generation
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: CH (147.161.182.80)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 26 May 2024 23:53:10 -0700
References: <CANNYZj9mokexRqpZ2qJS1u-M8kuMHC3JCnX97bOjYx5aa9Y2dQ@mail.gmail.com>
In-Reply-To: <CANNYZj9mokexRqpZ2qJS1u-M8kuMHC3JCnX97bOjYx5aa9Y2dQ@mail.gmail.com>
Message-ID: <22769.1716792790463170675@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mjhQ5eiigvCw6BT4cTh1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 06:53:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63200

--mjhQ5eiigvCw6BT4cTh1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, that looks like a good solution for me.

Just to be sure, when you mention that "t here's a way to extend what gets =
copied there beyond the standard set of headers/libraries", you are about m=
odifying the "SYSROOT_DIRS" variable?

--mjhQ5eiigvCw6BT4cTh1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, that looks like a good solution for me.<br /><br />Just to be sure,=
 when you mention that "t<span style=3D"color: #333333; font-family: system=
-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', =
Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'=
, 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-s=
pace: pre-wrap; background-color: #ffffff; text-decoration-thickness: initi=
al; text-decoration-style: initial; text-decoration-color: initial; display=
: inline !important; float: none;">here's a </span><span style=3D"color: #3=
33333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto =
Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI=
 Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style=
: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial; display: inline !important; float: none;">way to extend =
what gets copied there beyond the standard set of </span><span style=3D"col=
or: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', =
'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Se=
goe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font=
-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; =
text-decoration-thickness: initial; text-decoration-style: initial; text-de=
coration-color: initial; display: inline !important; float: none;">headers/=
libraries", you are about modifying the "SYSROOT_DIRS" variable?</span>

--mjhQ5eiigvCw6BT4cTh1--

