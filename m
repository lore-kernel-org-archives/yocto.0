Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 390C0C001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 12:19:08 +0000 (UTC)
Subject: How to ignore the RDEPENDS of .so file in SDK
To: yocto@lists.yoctoproject.org
From: zainbintariq248@gmail.com
X-Originating-Location: Lower Saxony, DE (80.187.112.7)
X-Originating-Platform: Android Phone Chrome 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Oct 2023 05:07:13 -0700
Message-ID: <sejR.1697803633804345585.TRhI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QEbI0p6xJSfkGSNTlcVR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 12:19:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61431

--QEbI0p6xJSfkGSNTlcVR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Some background of what I am trying to achieve.
I am updating my build to kirkstone from dunfell and which I have did, exce=
pt the SDK part.
This is where we have common API and it requires so files like libc.so.0 an=
d libpthread.so.0 but it's not available in GLIBC 3.5 which is the GLIBC of=
 kirkstone.
GLIBC is of course backward compatible and we can deal with it later.
When I try to make the nativesdk recipe of commonapi, it works with INSANE =
SKIP file-rdeps but when I make the main imagine that includes this commona=
pi and then make the SDK image, it gives out the error again
How can I ignore this warning of .so file dependencies when it is SDK we ar=
e dealing with even INSANE SKIP doesn't work on it.

--QEbI0p6xJSfkGSNTlcVR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Some background of what I am trying to achieve.<br />I am updating my build=
 to kirkstone from dunfell and which I have did, except the SDK part.<br />=
This is where we have common API and it requires so files like libc.so.0 an=
d libpthread.so.0 but it's not available in GLIBC 3.5 which is the GLIBC of=
 kirkstone.<br />GLIBC is of course backward compatible and we can deal wit=
h it later.<br />When I try to make the nativesdk recipe of commonapi, it w=
orks with INSANE SKIP file-rdeps but when I make the main imagine that incl=
udes this commonapi and then make the SDK image, it gives out the error aga=
in&nbsp;<br />How can I ignore this warning of .so file dependencies when i=
t is SDK we are dealing with even INSANE SKIP doesn't work on it.

--QEbI0p6xJSfkGSNTlcVR--

