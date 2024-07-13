Return-Path: <gavrosc@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA0CC3DA42
	for <webhook@archiver.kernel.org>; Sat, 13 Jul 2024 17:07:03 +0000 (UTC)
Subject: Re: [yocto] Bitbake: arm-poky-linux-gnueabi-gcc not found
To: gavrosc@yahoo.com, yocto@lists.yoctoproject.org
From: gavrosc@yahoo.com
X-Originating-Location: =?UTF-8?B?VmFlc3RyYSBGcm9lbHVuZGEsIFbDpHN0cmEgR8O2dGFsYW5kIENvdW50eSwgU0U=?= (83.253.125.5)
X-Originating-Platform: Linux Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 13 Jul 2024 10:06:54 -0700
References: <18817.1720885844486271136@lists.yoctoproject.org>
In-Reply-To: <18817.1720885844486271136@lists.yoctoproject.org>
Message-ID: <1227.1720890414430366496@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xwALAlYn3bM8TcQWx6rz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 17:07:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63486

--xwALAlYn3bM8TcQWx6rz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi again

i have removed the line from the file as you suggested and i tried run one =
by one the following commands
and finally is successful and all folders created correctly.

bitbake -c do_fetch helloworld
bitbake -c do_unpack helloworld
bitbake -c do_compile helloworld
bitbake -c do_install helloworld

Do you have any idea why it build correct when i ran all the orders one by =
one instead of executing 'bitbake helloworld' ?

Thank you for your support

--xwALAlYn3bM8TcQWx6rz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi again<br /><br />i have removed the line from the file as you suggested =
and i tried run one by one the following commands<br />and finally is succe=
ssful and all folders created correctly. <br /><br />bitbake -c do_fetch he=
lloworld<br />bitbake -c do_unpack helloworld<br />bitbake -c do_compile he=
lloworld<br />bitbake -c do_install helloworld<br /><br /><br />Do you have=
 any idea why it build correct when i ran all the orders one by one instead=
 of executing 'bitbake helloworld' ?<br /><br />Thank you for your support<=
br /><br /><br />

--xwALAlYn3bM8TcQWx6rz--

