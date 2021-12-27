Return-Path: <howard.egan@avid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01434C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Dec 2021 22:04:20 +0000 (UTC)
Subject: Re: Fetch of shared-mime-info and shared-mime-info-native never
 finishes.
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Santa Cruz, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Dec 2021 14:04:19 -0800
References: <11173.1640637570026517473@lists.yoctoproject.org>
In-Reply-To: <11173.1640637570026517473@lists.yoctoproject.org>
Message-ID: <4836.1640642659824461408@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="C4hkZbdgyOwW9sMAj3rM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Dec 2021 22:04:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55667

--C4hkZbdgyOwW9sMAj3rM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok so for some reason the repo for shared-mime-info is offline.

I just ran a simple git clone of:

git clone git://gitlab.freedesktop.org/xdg/shared-mime-info.git;protocol=3D=
https

and it never completes or even starts near as I can tell.

The src URI above is what is specified in the recipe.

--C4hkZbdgyOwW9sMAj3rM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Ok so for some reason the repo for shared-mime-info is offline.&nbsp;&nb=
sp;</p>
<p>I just ran a simple git clone of:</p>
<p><br />git clone git://gitlab.freedesktop.org/xdg/shared-mime-info.git;pr=
otocol=3Dhttps<br /><br />and it never completes or even starts near as I c=
an tell.&nbsp;&nbsp; <br /><br />The src URI above is what is specified in =
the recipe.<br /><br /></p>

--C4hkZbdgyOwW9sMAj3rM--

