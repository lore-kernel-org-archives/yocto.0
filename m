Return-Path: <gavrosc@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF88C3DA49
	for <webhook@archiver.kernel.org>; Sun, 14 Jul 2024 07:17:27 +0000 (UTC)
Subject: Re: [yocto] Bitbake: arm-poky-linux-gnueabi-gcc not found
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: gavrosc@yahoo.com
X-Originating-Location: =?UTF-8?B?VmFlc3RyYSBGcm9lbHVuZGEsIFbDpHN0cmEgR8O2dGFsYW5kIENvdW50eSwgU0U=?= (83.253.125.5)
X-Originating-Platform: Mac Safari 17.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Jul 2024 00:17:18 -0700
References: <CAMKF1so2LCk5ntBSOs7d5wnj-+nb0ESbcXUBORDqpcOYj5MWGA@mail.gmail.com>
In-Reply-To: <CAMKF1so2LCk5ntBSOs7d5wnj-+nb0ESbcXUBORDqpcOYj5MWGA@mail.gmail.com>
Message-ID: <1227.1720941438433774566@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PW14gZGOJIwXpvrmtsMq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jul 2024 07:17:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63489

--PW14gZGOJIwXpvrmtsMq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi

yes you are right! I have placed this instruction in the local.conf file wh=
ich resides in build/conf folder.
I have removed it and the 'bitbake helloworld' worked fine.

One last question, do I have to remove this instruction ( INHERIT +=3D "rm_=
work") when I am building individual recipes like the helloworld and then a=
dd it back when I build my whole image (bitbake core-image-full-cmdline) ?

I really thank you so much for your help! its highly appreciated. I spent a=
 whole day yesterday before I opened the topic here :) . I am a bit new to =
yocto!

--PW14gZGOJIwXpvrmtsMq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi<br /><br />yes you are right! I have placed this instruction in the loca=
l.conf file which resides in build/conf folder.<br />I have removed it and =
the 'bitbake helloworld' worked fine.<br /><br />One last question, do I ha=
ve to remove this instruction (<span style=3D"caret-color: #333333; color: =
#333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Not=
o Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe =
UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-sty=
le: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: auto; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: pre-wrap; widows: auto; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; background-color: #ffffff; text-decoration: none; display=
: inline !important; float: none;">INHERIT +=3D "rm_work") when I am buildi=
ng individual recipes like the helloworld and then add it back when I build=
 my whole image (bitbake core-image-full-cmdline) ?<br /><br />I really tha=
nk you so much for your help! its highly appreciated. I spent a whole day y=
esterday before I opened the topic here :) . I am a bit new to yocto!<br />=
<br /></span>

--PW14gZGOJIwXpvrmtsMq--

