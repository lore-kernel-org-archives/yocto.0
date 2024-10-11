Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 349E7D24475
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 05:31:58 +0000 (UTC)
Subject: Currect usage of pkgconfig / find_package(pkgconfig)
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.86)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Oct 2024 22:31:51 -0700
Message-ID: <OALp.1728624711064142758.LruR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P5FLo6Ka6PvCCYNDH9iH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 05:31:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64005

--P5FLo6Ka6PvCCYNDH9iH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have recipe A that builds a cmake project which, among other dependencies=
, also has "find_package(pkgconfig)", so, I inherited the pkgconfig class i=
n the recipe. This cmake project is used by other projects since it builds =
a .so, thus I am also exporting the AConfig.cmake file, which contains the =
"find_package(pkgconfig)" call. This works well, the project is built and t=
he pkg-config binary is in recipe-sysroot-native (as expected).

Recipe B builds another cmake project, which depends on the cmake project A=
. Thus, I added recipe A to recipe B's DEPENDS. As expected, this nicely co=
pies everything needed from recipe A (the .so file, the headers, the AConfi=
g.cmake and ATargets.cmake, etc.). However, (expectedly?) it does not copy =
the pkg-config binary along with it, thus building recipe B fails, because =
the "find_package(pkgconfig)" call from the AConfig.cmake file fails.

Is the above usage of PkgConfig correct? I understand the pkg-config binary=
 from recipe A's recipe-sysroot-native should not be copied to recipe B's r=
ecipe-sysroot-native, but still don't understand how this all is supposed t=
o work. Shouldn't all dependencies from recipe A also be available for reci=
pe B?

It goes without saying, when I inherit the pkgconfig class in recipe B, eve=
rything works as expected (because the pkg-config binary is found in recipe=
-sysroot-native of recipe B), but this is also not correct, as recipe B doe=
s not really depend on pkgconfig and shouldn't even know about it.

Cheers,
Aleksandar

[1]
Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE)

--P5FLo6Ka6PvCCYNDH9iH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>I have recipe A that builds a cmake project which, among other depende=
ncies, also has "find_package(pkgconfig)", so, I inherited the pkgconfig cl=
ass in the recipe. This cmake project is used by other projects since it bu=
ilds a .so, thus I am also exporting the AConfig.cmake file, which contains=
 the "find_package(pkgconfig)" call. This works well, the project is built =
and the pkg-config binary is in recipe-sysroot-native (as expected).</div>
<div>&nbsp;</div>
<div>Recipe B builds another cmake project, which depends on the cmake proj=
ect A. Thus, I added recipe A to recipe B's DEPENDS. As expected, this nice=
ly copies everything needed from recipe A (the .so file, the headers, the A=
Config.cmake and ATargets.cmake, etc.). However, (expectedly?) it does not =
copy the pkg-config binary along with it, thus building recipe B fails, bec=
ause the "find_package(pkgconfig)" call from the AConfig.cmake file fails.<=
/div>
<div>&nbsp;</div>
<div>Is the above usage of PkgConfig correct? I understand the pkg-config b=
inary from recipe A's recipe-sysroot-native should not be copied to recipe =
B's recipe-sysroot-native, but still don't understand how this all is suppo=
sed to work. Shouldn't all dependencies from recipe A also be available for=
 recipe B?</div>
<div>&nbsp;</div>
<div>It goes without saying, when I inherit the pkgconfig class in recipe B=
, everything works as expected (because the pkg-config binary is found in r=
ecipe-sysroot-native of recipe B), but this is also not correct, as recipe =
B does not really depend on pkgconfig and shouldn't even know about it.</di=
v>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Aleksandar</div>
<div>&nbsp;</div>
<div>[1]</div>
<div>Could NOT find PkgConfig (missing: PKG_CONFIG_EXECUTABLE)</div>

--P5FLo6Ka6PvCCYNDH9iH--

