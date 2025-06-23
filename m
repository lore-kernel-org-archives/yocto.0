Return-Path: <matteo.orlandini@tastitalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F61C77B7C
	for <webhook@archiver.kernel.org>; Mon, 23 Jun 2025 15:05:02 +0000 (UTC)
Subject: Re: Virtual Keyboard on Wayland
To: yocto@lists.yoctoproject.org
From: matteo.orlandini@tastitalia.com
X-Originating-Location: Torgiano, Umbria, IT (37.77.97.75)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 Jun 2025 08:04:57 -0700
References: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
In-Reply-To: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
Message-ID: <24397.1750691097167991681@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ii95eJ8gv8rjRCZUbD8Z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jun 2025 15:05:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65535

--Ii95eJ8gv8rjRCZUbD8Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I added this .bbappend:

REQUIRED_DISTRO_FEATURES:remove =3D "x11"

DEPENDS:remove =3D "xext xrandr"

but now I got this error:
process didn't exit successfully: `rustc - --crate-name ___ --print=3Dfile-=
names -L /newbuild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0/recipe-sys=
root/usr/lib/rustlib/aarch64-poky-linux-gnu/lib --remap-path-prefix=3D/newb=
uild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0=3D/usr/src/debug/squeekb=
oard/1.19.0 --target aarch64-poky-linux --crate-type bin --crate-type rlib =
--crate-type dylib --crate-type cdylib --crate-type staticlib --crate-type =
proc-macro --print=3Dsysroot --print=3Dsplit-debuginfo --print=3Dcrate-name=
 --print=3Dcfg` (exit status: 1)
--- stderr
error: Error loading target specification: Could not find specification for=
 target "aarch64-poky-linux". Run `rustc --print target-list` for a list of=
 built-in targets

--Ii95eJ8gv8rjRCZUbD8Z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I added this .bbappend:<br /><br />REQUIRED_DISTRO_FEATURES:remove =3D=
 "x11"</div>
<div>&nbsp;</div>
<div>DEPENDS:remove =3D "xext xrandr"</div>
<div>&nbsp;</div>
<div>but now I got this error:<br />process didn't exit successfully: `rust=
c - --crate-name ___ --print=3Dfile-names -L /newbuild/tmp/work/armv8a-poky=
-linux/squeekboard/1.19.0/recipe-sysroot/usr/lib/rustlib/aarch64-poky-linux=
-gnu/lib --remap-path-prefix=3D/newbuild/tmp/work/armv8a-poky-linux/squeekb=
oard/1.19.0=3D/usr/src/debug/squeekboard/1.19.0 --target aarch64-poky-linux=
 --crate-type bin --crate-type rlib --crate-type dylib --crate-type cdylib =
--crate-type staticlib --crate-type proc-macro --print=3Dsysroot --print=3D=
split-debuginfo --print=3Dcrate-name --print=3Dcfg` (exit status: 1)<br />&=
nbsp; --- stderr<br />&nbsp; error: Error loading target specification: Cou=
ld not find specification for target "aarch64-poky-linux". Run `rustc --pri=
nt target-list` for a list of built-in targets<br /><br /></div>

--Ii95eJ8gv8rjRCZUbD8Z--

