Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AC4EC4332F
	for <webhook@archiver.kernel.org>; Thu, 15 Dec 2022 06:58:00 +0000 (UTC)
Subject: Re: SDK missing qemu 'user' backend type. #kirkstone #sdk
To: yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Volendam, North Holland, NL (213.132.190.30)
X-Originating-Platform: Linux Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Dec 2022 22:57:52 -0800
References: <90mH.1671010656020688552.o8YR@lists.yoctoproject.org>
In-Reply-To: <90mH.1671010656020688552.o8YR@lists.yoctoproject.org>
Message-ID: <24547.1671087472232676751@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Dec 2022 06:58:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58804

Hi Yocto community,

I figured out what happened, hopefully this is useful to anyone.

We did use parts from the meta-cloud-service repository, to be specific the=
 meta-openstack. That layer has a qemu_6.%.bbappend file which assigns the =
qemu packageconfig.
(that append file only includes the qemu inc file if the openstack is enabl=
ed in the distro features).
The Yocto qemu recipe only has a soft assignment to the packageconfig so th=
e one from the meta-openstack layer is getting used which did not include s=
lirp and other options.
So I removed the openstack from the distro features and behold, it works as=
 expected.

I don't know if this is a bug or just a feature, but I leave that up to you=
 (perhaps Yocto can assign the packageconfig a bit stronger?).

--=20
With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

