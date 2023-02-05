Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD933C636CD
	for <webhook@archiver.kernel.org>; Sun,  5 Feb 2023 16:44:58 +0000 (UTC)
Subject: Re: error when try to use sudo command in recipe
To: yocto@lists.yoctoproject.org
From: "SIMON BABY" <simonkbaby@gmail.com>
X-Originating-Location: San Diego, California, US (130.50.200.1)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Feb 2023 08:44:49 -0800
References: <efae481688d50d97920bc1e8471427a75bc9d6fd.camel@linuxfoundation.org>
In-Reply-To: <efae481688d50d97920bc1e8471427a75bc9d6fd.camel@linuxfoundation.org>
Message-ID: <32073.1675615489615210493@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="voTPIcdYuxKv5AqfnnnT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 16:44:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59171

--voTPIcdYuxKv5AqfnnnT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 5, 2023 at 01:54 AM, Richard Purdie wrote:

>=20
> something

Hello Richard,
I am building this layer for adding container images into the root file sys=
tem and load on the target as part of the image download. The sudo command =
when i run outsidethe yocto build directory
seems to be good. when I trued using bitbake it fails always. I see the use=
r and group ids are different when i printed inside the bitbake recipe.

-rwsr-xr-x 1 *nobody nogroup* 166056 Jan 16 13:06 /usr/bin/sudo

it should like below:
tdydev@eadlng-build-machine:~$ ls -ll /usr/bin/sudo
-rwsr-xr-x 1 root root 166056 Jan 16 05:06 /usr/bin/sudo

Regards
Simon

--voTPIcdYuxKv5AqfnnnT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 5, 2023 at 01:54 AM, Richard Purdie wrote:<br />
<blockquote>something</blockquote>
Hello Richard,<br />I am building this layer for adding container images in=
to the root file system and load on the target as part of the image downloa=
d. The sudo command when i run outsidethe yocto build directory&nbsp;<br />=
seems to be good. when I trued using bitbake it fails always. I see the use=
r and group ids are different when i printed inside the bitbake recipe.<br =
/><br />
<div>&nbsp;-rwsr-xr-x 1<strong> nobody nogroup</strong> 166056 Jan 16 13:06=
 /usr/bin/sudo</div>
<div><br />it should like below:</div>
<div>tdydev@eadlng-build-machine:~$ ls -ll /usr/bin/sudo</div>
<div>-rwsr-xr-x 1 root root 166056 Jan 16 05:06 /usr/bin/sudo</div>
<div><br /><br />Regards<br />Simon<br /><br /><br /></div>

--voTPIcdYuxKv5AqfnnnT--

