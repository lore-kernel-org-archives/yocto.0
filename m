Return-Path: <matteo.orlandini@tastitalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8EEC77B7C
	for <webhook@archiver.kernel.org>; Wed, 25 Jun 2025 15:03:10 +0000 (UTC)
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: matteo.orlandini@tastitalia.com
X-Originating-Location: Torgiano, Umbria, IT (37.77.97.75)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Jun 2025 08:03:03 -0700
References: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
In-Reply-To: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
Message-ID: <9005.1750863783770459333@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UTRokgOO57DxoYvB4oqm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jun 2025 15:03:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65545

--UTRokgOO57DxoYvB4oqm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 23, 2025 at 02:48 PM, Gyorgy Sarvari wrote:

>=20
> It seems that gnome-desktop's=C2=A0 x11 dependency was a relic of the pas=
t,
> and has been removed[1] some time ago. Maybe you could try to backport
> it in your layer (as local.conf or bbappend) and see what happens? (Or
> maybe even send a patch to the mailing list, if it works)
>=20
> [1]:
> https://git.openembedded.org/meta-openembedded/commit/?id=3D8106d41925672=
33f0653242326ac3041a1233b69
>=20

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

--UTRokgOO57DxoYvB4oqm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Mon, Jun 23, 2025 at 02:48 PM, Gyorgy Sarvari wrote:</div>
<div>
<blockquote>It seems that gnome-desktop's&nbsp; x11 dependency was a relic =
of the past,<br />and has been removed[1] some time ago. Maybe you could tr=
y to backport<br />it in your layer (as local.conf or bbappend) and see wha=
t happens? (Or<br />maybe even send a patch to the mailing list, if it work=
s)<br /><br />[1]:<br /><a href=3D"https://git.openembedded.org/meta-openem=
bedded/commit/?id=3D8106d4192567233f0653242326ac3041a1233b69" target=3D"_bl=
ank" rel=3D"noopener">https://git.openembedded.org/meta-openembedded/commit=
/?id=3D8106d4192567233f0653242326ac3041a1233b69</a></blockquote>
</div>
<div>
<div>I added this .bbappend:</div>
<div>REQUIRED_DISTRO_FEATURES:remove =3D "x11"<br />&nbsp;<br />DEPENDS:rem=
ove =3D "xext xrandr"<br />&nbsp;<br />but now I got this error:<br />proce=
ss didn't exit successfully: `rustc - --crate-name ___ --print=3Dfile-names=
 -L /newbuild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0/recipe-sysroot/=
usr/lib/rustlib/aarch64-poky-linux-gnu/lib --remap-path-prefix=3D/newbuild/=
tmp/work/armv8a-poky-linux/squeekboard/1.19.0=3D/usr/src/debug/squeekboard/=
1.19.0 --target aarch64-poky-linux --crate-type bin --crate-type rlib --cra=
te-type dylib --crate-type cdylib --crate-type staticlib --crate-type proc-=
macro --print=3Dsysroot --print=3Dsplit-debuginfo --print=3Dcrate-name --pr=
int=3Dcfg` (exit status: 1)<br />&nbsp; --- stderr<br />&nbsp; error: Error=
 loading target specification: Could not find specification for target "aar=
ch64-poky-linux". Run `rustc --print target-list` for a list of built-in ta=
rgets</div>
</div>

--UTRokgOO57DxoYvB4oqm--

