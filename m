Return-Path: <kfa@deif.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E02F5C28B23
	for <webhook@archiver.kernel.org>; Fri,  7 Mar 2025 20:08:21 +0000 (UTC)
Subject: Fakeroot fails with externalsrc
To: yocto@lists.yoctoproject.org
From: "Kjeld Flarup" <kfa@deif.com>
X-Originating-Location: Holstebro, Central Jutland, DK (188.228.123.174)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Mar 2025 12:08:12 -0800
Message-ID: <Og1U.1741378092435763581.EjNi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fLKUCyyUQTYwsS62DSpB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Mar 2025 20:08:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64930

--fLKUCyyUQTYwsS62DSpB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

I'm trying to make a CI/CD Yocto build in a git repository which is used in=
 a recipe.

I have made an include file =C2=A0meta-codesys/recipes-codesys/codesys-src.=
inc which normally contains.

>=20
> SRC_URI =3D
> "gitsm://gitlab.deif.com/codesys/codesys-runtimes.git;protocol=3Dhttps;br=
anch=3Dmaster"
>=20
> SRCREV =3D "927fe8fa0b9e6537b3d7ec9f2231e13c4b367a61"
>=20

When building in the codesys-runtimes repository I clone the Yocto project =
and replaces codesys-src.inc with

>=20
> inherit externalsrc
> EXTERNALSRC =3D "/userdata/codesys-runtimes"
> EXTERNALSRC_BUILD =3D "/userdata/codesys-runtimes/build"
>=20

And then I run bitbake where I get this error

>=20
> *** 0418: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.lchown(path, uid, g=
id)
> 0419:
> 0420: =C2=A0 =C2=A0# Return a list of configuration files based on either=
 the
> default
> 0421: =C2=A0 =C2=A0# files/fs-perms.txt or the contents of FILESYSTEM_PER=
MS_TABLES
> 0422: =C2=A0 =C2=A0# paths are resolved via BBPATH
> Exception: PermissionError: [Errno 1] Operation not permitted:
> '/userdata/codesys-runtimes/yocto/tmp-glibc/work/cortexa53-crypto-oe-linu=
x/codesys-runtime/1.0-r0/package/usr'
>=20
>=20
> ERROR: Logfile of failure stored in:
> /userdata/codesys-runtimes/yocto/tmp-glibc/work/cortexa53-crypto-oe-linux=
/codesys-runtime/1.0-r0/temp/log.do_package.59961
>=20
> ERROR: Task
> (/userdata/codesys-runtimes/yocto/meta-codesys/recipes-codesys/codesys-ru=
ntime/codesys-runtime.bb:do_package)
> failed with exit code '1'
>=20

The problem is that do_package tries to set uid to root, but that is not al=
lowed, unless fakeroot is used.
Why does this fail when externalsrc is used?

Just for the record, if I do not change codesys-src.inc it builds.

--
--
Regards
Kjeld Flarup
DEIF A/S

--fLKUCyyUQTYwsS62DSpB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi</div>
<div>&nbsp;</div>
<div>I'm trying to make a CI/CD Yocto build in a git repository which is us=
ed in a recipe.&nbsp;</div>
<div>&nbsp;</div>
<div>I have made an include file &nbsp;meta-codesys/recipes-codesys/codesys=
-src.inc which normally contains.</div>
<blockquote>
<div>SRC_URI =3D "gitsm://gitlab.deif.com/codesys/codesys-runtimes.git;prot=
ocol=3Dhttps;branch=3Dmaster"<br />SRCREV =3D "927fe8fa0b9e6537b3d7ec9f2231=
e13c4b367a61"</div>
</blockquote>
<div>&nbsp;</div>
<div>When building in the codesys-runtimes repository I clone the Yocto pro=
ject and replaces codesys-src.inc with</div>
<blockquote>
<div>inherit externalsrc<br />EXTERNALSRC =3D "/userdata/codesys-runtimes"<=
br />EXTERNALSRC_BUILD =3D "/userdata/codesys-runtimes/build"</div>
</blockquote>
<div>And then I run bitbake where I get this error</div>
<blockquote>
<div>&nbsp;*** 0418: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;os.lchown(pat=
h, uid, gid)<br />&nbsp; &nbsp; &nbsp;0419:<br />&nbsp; &nbsp; &nbsp;0420: =
&nbsp; &nbsp;# Return a list of configuration files based on either the def=
ault<br />&nbsp; &nbsp; &nbsp;0421: &nbsp; &nbsp;# files/fs-perms.txt or th=
e contents of FILESYSTEM_PERMS_TABLES<br />&nbsp; &nbsp; &nbsp;0422: &nbsp;=
 &nbsp;# paths are resolved via BBPATH<br />Exception: PermissionError: [Er=
rno 1] Operation not permitted: '/userdata/codesys-runtimes/yocto/tmp-glibc=
/work/cortexa53-crypto-oe-linux/codesys-runtime/1.0-r0/package/usr'</div>
<div><br />ERROR: Logfile of failure stored in: /userdata/codesys-runtimes/=
yocto/tmp-glibc/work/cortexa53-crypto-oe-linux/codesys-runtime/1.0-r0/temp/=
log.do_package.59961<br />ERROR: Task (/userdata/codesys-runtimes/yocto/met=
a-codesys/recipes-codesys/codesys-runtime/codesys-runtime.bb:do_package) fa=
iled with exit code '1'</div>
</blockquote>
<div>&nbsp;</div>
<div>The problem is that do_package tries to set uid to root, but that is n=
ot allowed, unless fakeroot is used.</div>
<div>Why does this fail when externalsrc is used?</div>
<div>&nbsp;</div>
<div>Just for the record, if I do not change codesys-src.inc it builds.</di=
v>
<div>&nbsp;</div>
<div>--</div>
<div>--<br />Regards&nbsp;<br />Kjeld Flarup<br />DEIF A/S</div>

--fLKUCyyUQTYwsS62DSpB--

