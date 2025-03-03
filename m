Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF299C282C5
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 08:47:33 +0000 (UTC)
Subject: Remove dev packages from core-image-minimal
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (182.74.28.237)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Mar 2025 00:47:25 -0800
Message-ID: <J0LL.1740991645051830981.9lJ2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="X0S2dvjCPvV4UBPQxdVo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 08:47:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64908

--X0S2dvjCPvV4UBPQxdVo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

1)=C2=A0 I see lot of unwanted "-dev" packages being added in our image whi=
ch is derived from core-image-minimal
linux-libc-headers-dev
libical-dev
libglib-2.0-dev
openssl-dev
python3-dev
xorgproto-dev
libfreetype-dev
...
...
is there any standard way to remove such dev packages directly without manu=
ally removing each package here .

2)=C2=A0 I tried generating the graph image to understand from where is thi=
s added in RFS using "-g" option
# =C2=A0~/TEST/project (master) : bitbake -g -u taskexp <PACKAGE-NAME>
FATAL: Gtk ui could not load the required gi python module

Can member please provide any pointers on these

Thanks ,
Ashish

--X0S2dvjCPvV4UBPQxdVo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members , </div>
<div>&nbsp;</div>
<div>1)&nbsp; I see lot of unwanted "-dev" packages being added in our imag=
e which is derived from core-image-minimal</div>
<div>linux-libc-headers-dev<br />libical-dev<br />libglib-2.0-dev<br />open=
ssl-dev<br />python3-dev<br />xorgproto-dev<br />libfreetype-dev</div>
<div>...</div>
<div>...</div>
<div>is there any standard way to remove such dev packages directly without=
 manually removing each package here .</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>2)&nbsp; I tried generating the graph image to understand from where i=
s this added in RFS using "-g" option </div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; # &nbsp;~/TEST/project (master) : bitbake -g =
-u taskexp &lt;PACKAGE-NAME&gt;<br />FATAL: Gtk ui could not load the requi=
red gi python module<br />&nbsp; </div>
<div>Can member please provide any pointers on these </div>
<div>&nbsp;</div>
<div>Thanks ,</div>
<div>Ashish </div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp; </div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--X0S2dvjCPvV4UBPQxdVo--

