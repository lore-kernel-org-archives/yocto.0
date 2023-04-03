Return-Path: <adrian.dudau@keyfactor.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96237C76196
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 07:25:03 +0000 (UTC)
Subject: Re: error when try to use sudo command in recipe
To: yocto@lists.yoctoproject.org
From: adrian.dudau@keyfactor.com
X-Originating-Location: Craiova, Dolj, RO (86.120.179.108)
X-Originating-Platform: Windows Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Apr 2023 00:24:59 -0700
References: <2304c6f228db24096ac44b1e14132bb70981986b.camel@linuxfoundation.org>
In-Reply-To: <2304c6f228db24096ac44b1e14132bb70981986b.camel@linuxfoundation.org>
Message-ID: <6415.1680506699920545280@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xZDsZ71xuegn28Jqa1KX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 07:25:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59594

--xZDsZ71xuegn28Jqa1KX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:
Hi Richard,

Jumping on this thread to provide some clarifications as I hit the same bug=
.
I can confirm that this is not an environment issue. I could reproduce it b=
y adding a sudo call in an empty recipe like this:

SUMMARY =3D ""
HOMEPAGE =3D ""
LICENSE =3D ""
SECTION =3D ""
DEPENDS =3D ""

SRC_URI =3D ""

do_install() {
ls -l /usr/bin/sudo
sudo ls -l /usr/bin/sudo
}

Running bitbake barebone on my x86 machine produces this error:

| -rwxr-xr-x 1 nobody 65534 232416 Mar=C2=A0 1 13:59 /usr/bin/sudo
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0
| sudo: error in /etc/sudo.conf, line 0 while loading plugin "sudoers_polic=
y"
| sudo: /usr/libexec/sudo/sudoers.so must be owned by uid 0
| sudo: fatal error, unable to load plugins

Indeed it seems that ownership is broken somehow in the bb environment. The=
 issue was introduced somewhere between dunfell and kirkstone. I know it's =
a large timespan but it's a bit time consuming to narrow it down.

Hoping to get some help on this. I would try to investigate further myself =
but I have no idea where to start to be honest.

Best regards,
--Adrian

--xZDsZ71xuegn28Jqa1KX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:<br />Hi Richard,<br =
/><br />Jumping on this thread to provide some clarifications as I hit the =
same bug.<br />I can confirm that this is not an environment issue. I could=
 reproduce it by adding a sudo call in an empty recipe like this:<br /><br =
/>SUMMARY =3D ""<br />HOMEPAGE =3D ""<br />LICENSE =3D ""<br />SECTION =3D =
""<br />DEPENDS =3D ""<br /><br />SRC_URI =3D ""<br /><br />do_install() {<=
br />&nbsp;&nbsp;&nbsp; ls -l /usr/bin/sudo<br />&nbsp;&nbsp;&nbsp; sudo ls=
 -l /usr/bin/sudo<br />}<br /><br /><br />Running bitbake barebone on my x8=
6 machine produces this error:<br /><br />| -rwxr-xr-x 1 nobody 65534 23241=
6 Mar&nbsp; 1 13:59 /usr/bin/sudo<br />| sudo: /etc/sudo.conf is owned by u=
id 65534, should be 0<br />| sudo: /etc/sudo.conf is owned by uid 65534, sh=
ould be 0<br />| sudo: error in /etc/sudo.conf, line 0 while loading plugin=
 "sudoers_policy"<br />| sudo: /usr/libexec/sudo/sudoers.so must be owned b=
y uid 0<br />| sudo: fatal error, unable to load plugins<br /><br />Indeed =
it seems that ownership is broken somehow in the bb environment. The issue =
was introduced somewhere between dunfell and kirkstone. I know it's a large=
 timespan but it's a bit time consuming to narrow it down.<br /><br />Hopin=
g to get some help on this. I would try to investigate further myself but I=
 have no idea where to start to be honest.<br /><br />Best regards,<br />--=
Adrian<br />

--xZDsZ71xuegn28Jqa1KX--

