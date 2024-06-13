Return-Path: <pandeymayank96@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F23EC27C4F
	for <webhook@archiver.kernel.org>; Thu, 13 Jun 2024 09:01:31 +0000 (UTC)
Subject: [yocto] [scarthgap] Failure with python + ncurses combination with Yocto 5.0 (and even 4.3) upgrades #yocto
To: yocto@lists.yoctoproject.org
From: "Mayank Pandey" <pandeymayank96@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Mac Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jun 2024 02:01:27 -0700
Message-ID: <mzo3.1718269287097313595.M9xy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SF60MneryBYC1HDXpcwG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 09:01:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63337

--SF60MneryBYC1HDXpcwG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto experts

I am trying to upgrade my custom bsp layer working on Yocto 4.0 (kirkstone)=
 branch to Yocto 5.0 (scarthgap). I have made all the necessary modificatio=
ns to the custom recipes based on the 5.0 patch notes. I am facing an error=
 with the python3 version of scarthgap not being able to build ncurses modu=
le due to implicit declaration error. I tried the same with 4.3 branch (nan=
bield) as well, which gave me the same error. The error snippet is as follo=
ws (error is from python3 do_install step)
>=20
>=20
> NOTE: Skipping as already exists in sysroot: ['openssl', 'expat',
> 'gettext-minimal-native', 'glibc', 'libxcrypt', 'ncurses',
> 'util-linux-libuuid', 'zlib', 'binutils-cross-aarch64', 'cmake-native',
> 'gcc-cross-aarch64', 'gcc-runtime', 'libgcc', 'libedit', 'libtool-cross',
> 'libtool-native', 'm4-native', 'opkg-utils', 'quilt-native', 'bzip2',
> 'libnsl2', 'libtirpc', 'texinfo-dummy-native', 'xz', 'linux-libc-headers'=
,
> 'gdbm', 'libffi', 'sqlite3', 'openssl-native', 'expat-native',
> 'ncurses-native', 'util-linux-libuuid-native', 'zlib-native',
> 'autoconf-archive-native', 'autoconf-native', 'automake-native',
> 'flex-native', 'gnu-config-native', 'libedit-native', 'make-native',
> 'patch-native', 'perl-native', 'pkgconfig-native', 'pseudo-native',
> 'python3-native', 'bzip2-native', 'libnsl2-native', 'libtirpc-native',
> 'xz-native', 'zstd-native', 'attr-native', 'gdbm-native', 'gmp-native',
> 'libffi-native', 'libmpc-native', 'mpfr-native', 'sqlite3-native']DEBUG:
> Python function extend_recipe_sysroot finishedDEBUG: Executing python
> function autotools_aclocalsDEBUG: SITE files ['endian-little', 'bit-64',
> 'arm-common', 'arm-64', 'common-linux', 'common-glibc', 'aarch64-linux',
> 'common']DEBUG: Python function autotools_aclocals finishedDEBUG:
> Executing shell function do_installFailed to build these modules:_curses

Now I dug a little deeper to get the error from the do_install step, and fo=
und that the _curses module had failed in compilation step itself but the c=
ompilation continuer, and then it failed in the do_install step.
The do_compile logs are as below:

>=20
> /dvs/container/cm/git-master_yocto/yocto/build/tmp/work/armv8a-gnu-linux/=
python3/3.11.5/Python-3.11.5/Modules/_cursesmodule.c:3398:35:
> error: implicit declaration of function 'setupterm'; did you mean
> 'set_term'? [-Werror=3Dimplicit-function-declaration]=C2=A03398 | =C2=A0 =
=C2=A0 if
> (!initialised_setupterm && setupterm((char *)term, fd, &err) =3D=3D ERR) =
{=C2=A0 =C2=A0=20
> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~=C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
> set_term

Does anyone know what could be the root cause of this issue?
One more thing to not is that the error is intermittent - but with a very l=
ow passing rate of ~5-10% (90-95 % of the build fails with the upgrade).
Thanks for any inputs

--SF60MneryBYC1HDXpcwG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto experts<br /><br />I am trying to upgrade my custom bsp layer w=
orking on Yocto 4.0 (kirkstone) branch to Yocto 5.0 (scarthgap). I have mad=
e all the necessary modifications to the custom recipes based on the 5.0 pa=
tch notes. I am facing an error with the python3 version of scarthgap not b=
eing able to build ncurses module due to implicit declaration error. I trie=
d the same with 4.3 branch (nanbield) as well, which gave me the same error=
. The error snippet is as follows (error is from python3 do_install step)&n=
bsp;
<blockquote>NOTE: Skipping as already exists in sysroot: ['openssl', 'expat=
', 'gettext-minimal-native', 'glibc', 'libxcrypt', 'ncurses', 'util-linux-l=
ibuuid', 'zlib', 'binutils-cross-aarch64', 'cmake-native', 'gcc-cross-aarch=
64', 'gcc-runtime', 'libgcc', 'libedit', 'libtool-cross', 'libtool-native',=
 'm4-native', 'opkg-utils', 'quilt-native', 'bzip2', 'libnsl2', 'libtirpc',=
 'texinfo-dummy-native', 'xz', 'linux-libc-headers', 'gdbm', 'libffi', 'sql=
ite3', 'openssl-native', 'expat-native', 'ncurses-native', 'util-linux-libu=
uid-native', 'zlib-native', 'autoconf-archive-native', 'autoconf-native', '=
automake-native', 'flex-native', 'gnu-config-native', 'libedit-native', 'ma=
ke-native', 'patch-native', 'perl-native', 'pkgconfig-native', 'pseudo-nati=
ve', 'python3-native', 'bzip2-native', 'libnsl2-native', 'libtirpc-native',=
 'xz-native', 'zstd-native', 'attr-native', 'gdbm-native', 'gmp-native', 'l=
ibffi-native', 'libmpc-native', 'mpfr-native', 'sqlite3-native']DEBUG: Pyth=
on function extend_recipe_sysroot finishedDEBUG: Executing python function =
autotools_aclocalsDEBUG: SITE files ['endian-little', 'bit-64', 'arm-common=
', 'arm-64', 'common-linux', 'common-glibc', 'aarch64-linux', 'common']DEBU=
G: Python function autotools_aclocals finishedDEBUG: Executing shell functi=
on do_installFailed to build these modules:_curses</blockquote>
<br />Now I dug a little deeper to get the error from the do_install step, =
and found that the _curses module had failed in compilation step itself but=
 the compilation continuer, and then it failed in the do_install step.&nbsp=
;<br />The do_compile logs are as below:&nbsp;<br />
<blockquote>/dvs/container/cm/git-master_yocto/yocto/build/tmp/work/armv8a-=
gnu-linux/python3/3.11.5/Python-3.11.5/Modules/_cursesmodule.c:3398:35: err=
or: implicit declaration of function 'setupterm'; did you mean 'set_term'? =
[-Werror=3Dimplicit-function-declaration]&nbsp;3398 | &nbsp; &nbsp; if (!in=
itialised_setupterm &amp;&amp; setupterm((char *)term, fd, &amp;err) =3D=3D=
 ERR) {&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^=
~~~~~~~~&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
set_term</blockquote>
<br />Does anyone know what could be the root cause of this issue? <br />On=
e more thing to not is that the error is intermittent - but with a very low=
 passing rate of ~5-10% (90-95 % of the build fails with the upgrade).<br /=
>Thanks for any inputs&nbsp;

--SF60MneryBYC1HDXpcwG--

