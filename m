Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1DBE77188
	for <webhook@archiver.kernel.org>; Thu,  2 Jan 2025 11:22:38 +0000 (UTC)
Subject: Python3.12 / Scarthgap build issues.
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Watford, England, GB (62.31.146.167)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Jan 2025 03:22:32 -0800
Message-ID: <MLZs.1735816952240340605.zFIL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wNqQegxIaBkbvbrsWH6q"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jan 2025 11:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64491

--wNqQegxIaBkbvbrsWH6q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm running into the below problem whilst trying to build python projects a=
gainst python3.12 under Scarthgap. Search engines turn up very little/nothi=
ng relevant on the topic which leads me to think it must be something relat=
ed to my specific configuration but I am all out of ideas at this point.

>=20
> <snip>/recipe-sysroot/usr/include/python3.12/pyconfig.h:6:2: error: #erro=
r
> "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
> | =C2=A0=C2=A0=C2=A0=C2=A06 | #error "_PYTHON_INCLUDE_TARGET or _PYTHON_I=
NCLUDE_NATIVE is not
> defined"</snip>
>=20
>=20

The above file has changed dramatically since my kirkstone / python3.10 bui=
ld and just contains:

>=20
> #if defined (_PYTHON_INCLUDE_TARGET)
> #include "pyconfig-target.h"
> #elif defined (_PYTHON_INCLUDE_NATIVE)
> #include "pyconfig-native.h"
> #else
> #error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
> #endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
>=20
>=20
>=20

Notably neither of included files exist anywhere so even if the _PYTHON_INC=
LUDE_TARGET or _PYTHON_INCLUDE_NATIVE were defined it still would not work.

Does anybody have any idea what is going on?

--wNqQegxIaBkbvbrsWH6q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm running into the below problem whilst trying to build python proje=
cts against python3.12 under Scarthgap. Search engines turn up very little/=
nothing relevant on the topic which leads me to think it must be something =
related to my specific configuration but I am all out of ideas at this poin=
t.</div>
<div>&nbsp;</div>
<blockquote>
<div><span style=3D"font-family: monospace;"><span style=3D"color: #000000;=
 background-color: #ffffff;">&lt;snip&gt;/recipe-sysroot/usr/include/python=
3.12/pyconfig.h:6:2: error: #error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLU=
DE_NATIVE is not defined" </span><br />| &nbsp;&nbsp;&nbsp;&nbsp;6 | #error=
 "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"&lt;/snip=
&gt;<br /></span></div>
</blockquote>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;">The above file has changed dra=
matically since my kirkstone / python3.10 build and just contains:</span></=
div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<blockquote>
<div><span style=3D"font-family: monospace;"><span style=3D"font-family: mo=
nospace;"><span style=3D"color: #000000; background-color: #ffffff;">#if de=
fined (_PYTHON_INCLUDE_TARGET) </span><br />#include "pyconfig-target.h" <b=
r />#elif defined (_PYTHON_INCLUDE_NATIVE) <br />#include "pyconfig-native.=
h" <br />#else <br />#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATI=
VE is not defined" <br />#endif // End of #if defined (_PYTHON_INCLUDE_TARG=
ET)<br /><br /></span></span></div>
</blockquote>
<div><span style=3D"font-family: monospace;">Notably neither of included fi=
les exist anywhere so even if the _PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE=
_NATIVE were defined it still would not work.</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;">Does anybody have any idea wha=
t is going on?</span></div>
<div>&nbsp;</div>

--wNqQegxIaBkbvbrsWH6q--

