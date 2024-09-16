Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E99A4C3ABB2
	for <webhook@archiver.kernel.org>; Mon, 16 Sep 2024 14:06:34 +0000 (UTC)
Subject: Re: [yocto] systemd-container and tar dependency
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: Brest, Brittany, FR (78.120.130.81)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 16 Sep 2024 07:06:31 -0700
References: <C648C40C-EE3A-4369-BAAB-5E4EF01238A6@arm.com>
In-Reply-To: <C648C40C-EE3A-4369-BAAB-5E4EF01238A6@arm.com>
Message-ID: <10382.1726495591685541384@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MEJ1CIJiIN42aV5fqvcM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 14:06:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63842

--MEJ1CIJiIN42aV5fqvcM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,
Do you mean you validate we should simply drop the "tar" line in the RRECOM=
MENDS list ?
I will be happy to send a patch :-) I will check the contribution guideline=
s right now!
Joel

--MEJ1CIJiIN42aV5fqvcM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Ross,</div>
<div>Do you mean you validate we should simply drop the "tar" line in the <=
span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, '=
Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple =
Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font=
-size: 16px; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-c=
olor: #ffffff; text-decoration-thickness: initial; text-decoration-style: i=
nitial; text-decoration-color: initial; display: inline !important; float: =
none;">RRECOMMENDS list ?</span></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">I will be happy to send a patch :-) I will check the contribut=
ion guidelines right now!</span></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">Joel</span></div>

--MEJ1CIJiIN42aV5fqvcM--

