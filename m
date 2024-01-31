Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D8E5C47DDF
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 22:07:37 +0000 (UTC)
Subject: Re: [yocto] Multiple images on the same hardware
To: Mike Looijmans <mike.looijmans@topic.nl>,yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: CH (147.161.137.76)
X-Originating-Platform: Windows Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 31 Jan 2024 14:07:30 -0800
References: <91dc6c2f-1c7c-4bdb-ab77-f3d63d312451@topic.nl>
In-Reply-To: <91dc6c2f-1c7c-4bdb-ab77-f3d63d312451@topic.nl>
Message-ID: <13858.1706738850246565515@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8GDonRZvFRS5UnZRcA3W"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 22:07:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62353

--8GDonRZvFRS5UnZRcA3W
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Instead of a distro or machine for each combination, it's also possible t=
o
> use a configuration file in the build directory. Your application recipe
> just says "require my-app-config.inc" and then you can provide the
> contents of that file when preparing the build. Makes things easy to
> produce but harder to reproduce...
>=20

An interesting approach, didn't occur to me, thanks for the hint.

>=20
> The penalty for building things with unneeded features usually isn't that
> big, so it might be worth it if you have systems with and without screen
> to build them all with "x11" or "wayland" in their distro features. Trick
> is to adjust the image recipe so that the headless machine doesn't instal=
l
> all the graphic stuff (usually you'll have to take a look at how some
> packagegroups get included and change that).
>=20

In this particular case I can use DISTRO_FEATURES in my recipe and nicely u=
se one image recipe to produce multiple images, this is however not possibl=
e with e.g. kernel modues, as such variable does not exist.

>=20
> Wifi and bluetooth can be compiled as kernel modules and loaded on demand=
.

Yes, this would work as well. Though some would argue that out of security =
reasons it's better to reduce the attack surface and not even have kernel m=
odules to be loaded in the first place if they are not needed at all.

Aleksandar

--8GDonRZvFRS5UnZRcA3W
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"white-space-collapse: preserve;">Instead of a di=
stro or machine for each combination, it's also possible to use a configura=
tion file in the build directory. Your application recipe just says "requir=
e my-app-config.inc" and then you can provide the contents of that file whe=
n preparing the build. Makes things easy to produce but harder to reproduce=
...<br /></span></blockquote>
An interesting approach, didn't occur to me, thanks for the hint.<br /><br =
/>
<blockquote><span style=3D"white-space-collapse: preserve;">The penalty for=
 building things with unneeded features usually isn't that big, so it might=
 be worth it if you have systems with and without screen to build them all =
with "x11" or "wayland" in their distro features. Trick is to adjust the im=
age recipe so that the headless machine doesn't install all the graphic stu=
ff (usually you'll have to take a look at how some packagegroups get includ=
ed and change that).<br /></span></blockquote>
In this particular case I can use DISTRO_FEATURES in my recipe and nicely u=
se one image recipe to produce multiple images, this is however not possibl=
e with e.g. kernel modues, as such variable does not exist.<br /><br />
<blockquote><span style=3D"white-space-collapse: preserve;">Wifi and blueto=
oth can be compiled as kernel modules and loaded on demand.</span></blockqu=
ote>
Yes, this would work as well. Though some would argue that out of security =
reasons it's better to reduce the attack surface and not even have kernel m=
odules to be loaded in the first place if they are not needed at all.<br />=
<span style=3D"white-space-collapse: preserve;"><br />Aleksandar</span>

--8GDonRZvFRS5UnZRcA3W--

