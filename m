Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF8BC5AE59
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 19:05:33 +0000 (UTC)
Subject: Native recipe still contains non-native compilation flags #bitbake
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Shakopee, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 12:05:30 -0700
Message-ID: <ew0F.1749150330205576658.cCBA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yloATbARy8DDLV9ka9tb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 19:05:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65476

--yloATbARy8DDLV9ka9tb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So I have two recipes, app and app-native.

Inside app.bb I have `DEPENDS =3D "app-native"`

Inside app-native.bb I have BBCLASSEXTEND =3D "native"

I can execute bitbake build app and I can see that the app-native is first =
being built, so that's great.

However, I'm having compilation errors(non-bitbake related) and went to inv=
estigate, I captured the environment variables and noticed things like:

export CXX=3D"arm-openbmc-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a -mfpu=3D=
vfpv4-d16.......

when, for the native, I would have expected:

export CXX=3D"g++ =C2=A0-march=3Dx86-64 -mfpu=3Dsomethingelse.....

I do see `export BUILD_CC=3D"gcc "` and `export BUILD_CXX=3D"g++ "`, but I =
want to say from previously attempts playing around, the same flags are see=
n in the non-native recipe build as well.

Also, another thing that feels like an oversight is that I would have expec=
ted some sort of automatic flag in the environmental during configure/build=
/install. Executing 'bitbake -e app' I can see `BBCLASSEXTEND=3D"native"`
in the native output, but not the target, and I kind of assumed it would ma=
ke it's way into the build environment as an indicator.

--yloATbARy8DDLV9ka9tb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So I have two recipes, app and app-native.</div>
<div>&nbsp;</div>
<div>Inside app.bb I have `DEPENDS =3D "app-native"`</div>
<div>&nbsp;</div>
<div>Inside app-native.bb I have BBCLASSEXTEND =3D "native"</div>
<div>&nbsp;</div>
<div>I can execute bitbake build app and I can see that the app-native is f=
irst being built, so that's great.</div>
<div>&nbsp;</div>
<div>However, I'm having compilation errors(non-bitbake related) and went t=
o investigate, I captured the environment variables and noticed things like=
:</div>
<div>&nbsp;</div>
<div>export CXX=3D"arm-openbmc-linux-gnueabi-g++ &nbsp;-march=3Darmv7-a -mf=
pu=3Dvfpv4-d16.......</div>
<div>&nbsp;</div>
<div>when, for the native, I would have expected:</div>
<div>&nbsp;</div>
<div>export CXX=3D"g++ &nbsp;-march=3Dx86-64 -mfpu=3Dsomethingelse.....</di=
v>
<div>&nbsp;</div>
<div>I do see `export BUILD_CC=3D"gcc "` and `export BUILD_CXX=3D"g++ "`, b=
ut I want to say from previously attempts playing around, the same flags ar=
e seen in the non-native recipe build as well.</div>
<div>&nbsp;</div>
<div>Also, another thing that feels like an oversight is that I would have =
expected some sort of automatic flag in the environmental during configure/=
build/install. Executing 'bitbake -e app' I can see `BBCLASSEXTEND=3D"nativ=
e"`</div>
<div>in the native output, but not the target, and I kind of assumed it wou=
ld make it's way into the build environment as an indicator.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--yloATbARy8DDLV9ka9tb--

