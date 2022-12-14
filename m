Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD831C4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 09:37:43 +0000 (UTC)
Subject: SDK missing qemu 'user' backend type. #kirkstone #sdk
To: yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Krommenie, North Holland, NL (178.85.161.88)
X-Originating-Platform: Linux Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Dec 2022 01:37:36 -0800
Message-ID: <90mH.1671010656020688552.o8YR@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 09:37:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58793

Hi Yocto community,

I run into an issue where I can't use the runqemu command by use of the SDK=
. It reports the following:
    "runqemu - ERROR - Failed to run qemu: qemu-system-arm: -netdev user,id=
=3Dnet0,hostfwd=3Dtcp::2222-:22,hostfwd=3Dtcp::2323-:23,tftp=3D<path>: Para=
meter 'type' expects a netdev backend type"
I start qemu with: "runqemu qemuarm nographic slirp <some-name>qemuarm.qemu=
boot.conf", it works correctly when running with the native tools from the =
Yocto env.
The difference between the Yocto env and the SDK is that the netdev reports=
 'user' to be present within the Yocto env but is missing in the SDK.

I've already asked around on IRC and "rburton" suggested to look into commi=
t "2d96d3f5ace29bb886d825609bd042310019a620", that commit has already been =
backported to the Yocto kirkstone branch
and is included in my build. I've cleaned qemu (cleanall) from my system bu=
t I still face this issue.

Does anyone have any suggestions in how to solve this?

Thank you.

--=20
With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

