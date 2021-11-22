Return-Path: <ddbabich@bootseeds.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD03C433EF
	for <webhook@archiver.kernel.org>; Mon, 22 Nov 2021 22:54:12 +0000 (UTC)
Subject: Re: Problem installing python package from a wheel #bitbake
To: yocto@lists.yoctoproject.org
From: "David Babich" <ddbabich@bootseeds.com>
X-Originating-Location: Boardman, Oregon, US (52.61.197.79)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Nov 2021 14:54:12 -0800
References: <qUQg.1637620570327649228.fQLs@lists.yoctoproject.org>
In-Reply-To: <qUQg.1637620570327649228.fQLs@lists.yoctoproject.org>
Message-ID: <1164.1637621652197432636@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PqPbYiXsiygC6lFk90Sa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Nov 2021 22:54:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55390

--PqPbYiXsiygC6lFk90Sa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I made it a little further by adding *--no-cache-dir* to the pip3 install c=
ommand.=C2=A0 That got rid fo the warning about not being able to access th=
e .cache/pip.=C2=A0 However I still have the error:

| ERROR: torch-1.10.0-cp36-cp36m-linux_ aarch64.whl is not a supported whee=
l on this platform.

--PqPbYiXsiygC6lFk90Sa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font=
-size: small;">I made it a little further by adding&nbsp;<strong>--no-cache=
-dir</strong>&nbsp;to the pip3 install command.&nbsp; That got rid fo the w=
arning about not being able to access the .cache/pip.&nbsp; However I still=
 have the error:</p>
<p style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font=
-size: small;">| ERROR: torch-1.10.0-cp36-cp36m-linux_<wbr />aarch64.whl is=
 not a supported wheel on this platform.</p>

--PqPbYiXsiygC6lFk90Sa--

