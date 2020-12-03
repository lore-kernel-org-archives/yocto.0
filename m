Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web08.9427.1606999173167259331
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 04:39:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CmwQB0nR8z5tlC;
	Thu,  3 Dec 2020 13:39:30 +0100 (CET)
Date: Thu, 3 Dec 2020 13:39:28 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: vijayrakeshmunganda@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] ninja: error: unknown target 'install' #yocto #toolchain #linux
Message-ID: <20201203123928.phjban6fqjfl7t5e@qschulz>
References: <azPN.1606997065987956361.x09I@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <azPN.1606997065987956361.x09I@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Dec 03, 2020 at 04:04:25AM -0800, vijayrakeshmunganda@gmail.com wro=
te:
> Hi All,
>=20
> I had written a bitbake file to download and install AWS SDK C from GitHu=
b https://github.com/aws/aws-iot-device-sdk-embedded-C based on existing re=
cipes https://github.com/aws/meta-aws, ( https://github.com/aws/meta-aws ) =
but I'm getting an error as "ninja: error: unknown target 'install'". Kindl=
y please help me to solve the issue.
>=20
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['virtual:native:/home/bl-docker/rity/src=
/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'vir=
tual:native:/home/bl-docker/rity/src/poky/meta/recipes-devtools/ninja/ninja=
_1.10.0.bb:do_populate_sysroot', 'virtual:native:/home/bl-docker/rity/src/p=
oky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', '/home=
/bl-docker/rity/src/poky/meta/recipes-devtools/gcc/gcc-cross_9.3.bb:do_popu=
late_sysroot', '/home/bl-docker/rity/src/poky/meta/recipes-devtools/cmake/c=
make-native_3.16.5.bb:do_populate_sysroot', '/home/bl-docker/rity/src/poky/=
meta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot', '=
/home/bl-docker/rity/src/poky/../meta-mediatek-bsp/recipes-connectivity/mos=
quitto/mosquitto_1.6.12.bb:do_populate_sysroot', '/home/bl-docker/rity/src/=
poky/meta/recipes-core/glibc/glibc_2.31.bb:do_populate_sysroot', '/home/bl-=
docker/rity/src/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_po=
pulate_sysroot', '/home/bl-docker/rity/src/poky/meta/recipes-devtools/gcc/g=
cc-runtime_9.3.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | NOTE: DESTDIR=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aw=
s/1.0-r0/image VERBOSE=3D1 cmake --build /home/bl-docker/rity/bsp/tmp/work/=
aarch64-poky-linux/aws/1.0-r0/build --target install --
> | [0/2] /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/r=
ecipe-sysroot-native/usr/bin/cmake -P /home/bl-docker/rity/bsp/tmp/work/aar=
ch64-poky-linux/aws/1.0-r0/build/CMakeFiles/VerifyGlobs.cmake
> | ninja: error: unknown target 'install'
> | WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r=
0/temp/run.do_install.17379:1 exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${DEST=
DIR} }VERBOSE=3D1 cmake --build '/home/bl-docker/rity/bsp/tmp/work/aarch64-=
poky-linux/aws/1.0-r0/build' "$@" -- ${EXTRA_OECMAKE_BUILD}'
> | ERROR: Execution of '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-lin=
ux/aws/1.0-r0/temp/run.do_install.17379' failed with exit code 1:
> | [0/2] /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/aws/1.0-r0/r=
ecipe-sysroot-native/usr/bin/cmake -P /home/bl-docker/rity/bsp/tmp/work/aar=
ch64-poky-linux/aws/1.0-r0/build/CMakeFiles/VerifyGlobs.cmake
> | ninja: error: unknown target 'install'

No target named install. Add  one or override do_install task since by
default it "calls" the install target.

[...]

> SRC_URI =3D "git://github.com/aws/aws-iot-device-sdk-embedded-C;branch=3D=
${BRANCH};name=3Daws-iot-device-sdk-embedded-C"
> SRCREV =3D "${AUTOREV}"
>=20
> S=3D "${WORKDIR}/git"
>=20
> do_configure_prepend() {
> cd ${S}
> git submodule update --init --recursive

IIRC, gitsm in SRC_URI instead of git should handle that:
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manu=
al-fetching.html#git-submodule-fetcher-gitsm

Quentin
