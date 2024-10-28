Return-Path: <sandro.anders@carmedialab.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 796D8D339AF
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 17:56:12 +0000 (UTC)
Subject: cargo/rust from meta-rust-bin in eSDK of yocto 4.x
To: yocto@lists.yoctoproject.org
From: sandro.anders@carmedialab.com
X-Originating-Location: =?UTF-8?B?S3JhaWNodGFsLCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (81.26.169.18)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 10:56:09 -0700
Message-ID: <PS09.1730138169422773566.enR7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b52Nh61TIRjyBoUTV5i4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 17:56:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64159

--b52Nh61TIRjyBoUTV5i4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,
I am currently testing the eSDK and have encountered a problem with cargo/r=
ust. To make some of our projects written in rust work I had to use the met=
a-rust-bin layer (meta-rust does not work with yocto 4.x). This also works =
fine with the images or the standard SDK. However, when I want to build the=
 eSDK, I get the following error message.

do_sdk_depends: The file /usr/bin/cargo is installed by both cargo-native a=
nd cargo-bin-cross-aarch64, aborting

How can I prevent the outdated cargo/rust from being in the eSDK and use th=
e one from meta-rust-bin instead? Many thanks in advance.

--b52Nh61TIRjyBoUTV5i4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello everyone,</div>
<div>I am currently testing the eSDK and have encountered a problem with ca=
rgo/rust. To make some of our projects written in rust work I had to use th=
e meta-rust-bin layer (meta-rust does not work with yocto 4.x). This also w=
orks fine with the images or the standard SDK. However, when I want to buil=
d the eSDK, I get the following error message.&nbsp;</div>
<div>&nbsp;</div>
<div>do_sdk_depends: The file /usr/bin/cargo is installed by both cargo-nat=
ive and cargo-bin-cross-aarch64, aborting</div>
<div>&nbsp;</div>
<div>How can I prevent the outdated cargo/rust from being in the eSDK and u=
se the one from meta-rust-bin instead? Many thanks in advance.&nbsp;</div>
<div>&nbsp;</div>
</div>

--b52Nh61TIRjyBoUTV5i4--

