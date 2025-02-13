Return-Path: <paul.buxton@codasip.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B4F8C021A0
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 16:42:06 +0000 (UTC)
Subject: Clarification of <packagename>-src, PACKAGE_DEBUG_SPLIT_STYLE and debug symbols in general.
To: yocto@lists.yoctoproject.org
From: paul.buxton@codasip.com
X-Originating-Location: St Albans, England, GB (82.7.74.198)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2025 08:42:05 -0800
Message-ID: <s6cG.1739464925165872010.U1bf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jEqZkFLS673dhZUBA65U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 16:42:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64804

--jEqZkFLS673dhZUBA65U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am wanting to debug on my target with gdb, so added the debug symbols by =
adding the <packagename>-dbg to the IMAGE_INSTALL variable.
This does indeed get the debug symbols onto the target, but no source code.=
 After reading the information on the PACKAGE_DEBUG_SPLIT_STYLE I realised =
that it defaults to debug-with-srcpkg. Which requires the installation of t=
he src package separately.
I added this for my application (I am using the gnu hello program as a reci=
pe I added using devtool).
This seems to have install some source, but not the source for the main app=
lication (just some libraries).
So I assumed that my recipe should explicitly setup the src package?
Thinking this was the case I looked at matchbox-terminal. However when I tr=
y to install the source for that it cannot find the recipe at all, which su=
rprised me as one of the official recipes of the Poky distribution.
e.g.
IMAGE_INSTALL:append =3D" hello hello-dbg hello-src matchbox-terminal-dbg"

Will build and installs symbols for both hello and matchbox-terminal as wel=
l as 'some' source for hello (but not the main file).

IMAGE_INSTALL:append =3D" hello hello-dbg hello-src matchbox-terminal-dbg m=
atchbox-terminal-src"

Will not build, failing on the matchbox-terminal-src package not being prov=
ided.

So my question, am I right in thinking packages need to explicitly provide =
the -src package, if so is it unusual that matchbox-terminal doesn't? Are t=
here any recommendations for a package that does? (I just want to test out =
debugging on the target!).

Thanks for reading this far!
Paul

--jEqZkFLS673dhZUBA65U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>I am wanting to debug on my target with gdb, so added the debug symbol=
s by adding the &lt;packagename&gt;-dbg to the IMAGE_INSTALL variable.</div=
>
<div>This does indeed get the debug symbols onto the target, but no source =
code. After reading the information on the PACKAGE_DEBUG_SPLIT_STYLE I real=
ised that it defaults to <span style=3D"color: #333333; font-family: Courie=
r, monospace; font-size: medium; font-style: normal; font-variant-ligatures=
: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norm=
al; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #fcfcfc; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial; display: inline =
!important; float: none;">debug-with-srcpkg. Which requires the installatio=
n of the src package separately.</span></div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">I added this for my application (I am using the gnu hello program as =
a recipe I added using devtool).</span></div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">This seems to have install some source, but not the source for the ma=
in application (just some libraries).<br />So I assumed that my recipe shou=
ld explicitly setup the src package?<br />Thinking this was the case I look=
ed at matchbox-terminal. However when I try to install the source for that =
it cannot find the recipe at all, which surprised me as one of the official=
 recipes of the Poky distribution.</span></div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">e.g.</span></div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">IMAGE_INSTALL:append =3D" hello hello-dbg hello-src matchbox-terminal=
-dbg"<br /></span></div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">Will build and installs symbols for both hello and matchbox-terminal =
as well as 'some' source for hello (but not the main file).</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">IMAGE_INSTALL:append =3D" hello hello-dbg hello-src matchbox-terminal=
-dbg matchbox-terminal-src"<br /></span></div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">Will not build, failing on the matchbox-terminal-src package not bein=
g provided.</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: Courier, monospace; font-s=
ize: medium; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">So my question, am I right in thinking packages need to explicitly pr=
ovide the -src package, if so is it unusual that matchbox-terminal doesn't?=
 Are there any recommendations for a package that does? (I just want to tes=
t out debugging on the target!).</span></div>
<div>&nbsp;</div>
<div>Thanks for reading this far!<br />Paul</div>

--jEqZkFLS673dhZUBA65U--

