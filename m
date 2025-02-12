Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEEBC02198
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 19:57:29 +0000 (UTC)
Subject: PREFERRED_VERSION not being populated onto the rootfs image
To: yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Feb 2025 11:57:28 -0800
Message-ID: <YAJV.1739390248887972780.yPpo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1QGFMjTefNW8BUoFPjug"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 19:57:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64787

--1QGFMjTefNW8BUoFPjug
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In the latest stable version of Yocto, I've been building an image for a ra=
spberry Pi board which has a wifi i/f on it. While trying to bring up the w=
ifi connection I need to roll back the version of wpa_supplicant that it is=
 using.

In the raspberrypi configure file I've put in "PREFERRED_VERSION_wpa-suppli=
cant =3D "2.9". The version that is being used currently is 2.11.

I've then created a recipe file for that version and made sure that it comp=
iles using bitbake. (Had some patching issues, all fixed).

I then run the command "bitbake core-image-minimal" and boot with the subse=
quent image. When I query the version of wpa-supplicant I get 2.11.

I'm unable to find any "PRIORITY" variable of any kind. Why is it grabbing =
the incorrect version? What have I forgotten to do?

Cheers!!

--1QGFMjTefNW8BUoFPjug
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>In the latest stable version of Yocto, I've been building an image for=
 a raspberry Pi board which has a wifi i/f on it. While trying to bring up =
the wifi connection I need to roll back the version of wpa_supplicant that =
it is using.</div>
<div>&nbsp;</div>
<div>In the raspberrypi configure file I've put in "PREFERRED_VERSION_wpa-s=
upplicant =3D "2.9". The version that is being used currently is 2.11.</div=
>
<div>&nbsp;</div>
<div>I've then created a recipe file for that version and made sure that it=
 compiles using bitbake. (Had some patching issues, all fixed).</div>
<div>&nbsp;</div>
<div>I then run the command "bitbake core-image-minimal" and boot with the =
subsequent image. When I query the version of wpa-supplicant I get 2.11.</d=
iv>
<div>&nbsp;</div>
<div>I'm unable to find any "PRIORITY" variable of any kind. Why is it grab=
bing the incorrect version? What have I forgotten to do?</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--1QGFMjTefNW8BUoFPjug--

