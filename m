Subject: Yocto Dunfell: u-boot-fw-utils ERROR #yocto #dunfell #swupdtae #libubootenv #imx6
To: yocto@lists.yoctoproject.org
From: anthony.marchand@navocap.com
X-Originating-Location: Paris, Île-de-France, FR (159.180.227.154)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 Apr 2021 03:24:25 -0700
Message-ID: <i5eY.1618914265035644273.UGev@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wKOG60KnwcTzZZrLcig2"

--wKOG60KnwcTzZZrLcig2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm actually migrating a yocto project zeus version to dunfell LTS to buil=
d my imx6 Linux system on this LTS release.

Almost all works fine except the following message I try to understand whe=
n I try to compile the image:

--------------------------------------------------------------------------=
---------------------------------------------------------------------------=
----
ERROR: Multiple .bb files are due to be built which each provide u-boot-fw=
-utils:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| ETA:=C2=A0 0:00:01
Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.bb
Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0.3=
.1.bb
A list of tasks depending on these providers is shown and may help explain=
 where the dependency comes from.
Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.bb=
 has unique dependees:

Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0.3=
.1.bb has unique dependees:
Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupdate_2020.11.b=
b:do_build
Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupdate_2020.11.b=
b:do_package
Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupdate_2020.11.b=
b:do_prepare_recipe_sysroot
It could be that one recipe provides something the other doesn't and shoul=
d. The following provider and runtime provider differences may be helpful.
Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.bb=
 has unique provides:

Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.bb=
 has unique rprovides:
u-boot-fw-utils-dev
u-boot-fw-utils-locale
u-boot-fw-utils-dbg
u-boot-fw-utils-staticdev
u-boot-fw-utils-doc
^u-boot-fw-utils-locale-.*
u-boot-fw-utils-src
Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0.3=
.1.bb has unique provides:
libubootenv
Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0.3=
.1.bb has unique rprovides:
libubootenv
libubootenv-src
libubootenv-bin
libubootenv-dbg
libubootenv-doc
^libubootenv-locale-.*
libubootenv-locale
libubootenv-dev
libubootenv-staticdev
--------------------------------------------------------------------------=
---------------------------------------------------------------------------=
----
Does someone already meet this problem? Do you know what I should look in =
for to solve it?

Thanks by advance, best reguards.

--wKOG60KnwcTzZZrLcig2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I'm actually migrating a yocto project zeus version to dunfell =
LTS to build my imx6 Linux system on this LTS release.<br /><br />Almost al=
l works fine except the following message I try to understand when I try to=
 compile the image:<br /><br />--------------------------------------------=
---------------------------------------------------------------------------=
----------------------------------<br />
<div>ERROR: Multiple .bb files are due to be built which each provide u-bo=
ot-fw-utils:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;| ETA:&nbsp; 0:00:01</div>
<div>&nbsp; Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-util=
s_2018.09.bb</div>
<div>&nbsp; Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/lib=
ubootenv_0.3.1.bb</div>
<div>A list of tasks depending on these providers is shown and may help ex=
plain where the dependency comes from.</div>
<div>Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.=
09.bb has unique dependees:</div>
<div>&nbsp;&nbsp;</div>
<div>Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubooten=
v_0.3.1.bb has unique dependees:</div>
<div>&nbsp; Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupda=
te_2020.11.bb:do_build</div>
<div>&nbsp; Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupda=
te_2020.11.bb:do_package</div>
<div>&nbsp; Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupda=
te_2020.11.bb:do_prepare_recipe_sysroot</div>
<div>It could be that one recipe provides something the other doesn't and =
should. The following provider and runtime provider differences may be help=
ful.</div>
<div>Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.=
09.bb has unique provides:</div>
<div>&nbsp;&nbsp;</div>
<div>Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.=
09.bb has unique rprovides:</div>
<div>&nbsp; u-boot-fw-utils-dev</div>
<div>&nbsp; u-boot-fw-utils-locale</div>
<div>&nbsp; u-boot-fw-utils-dbg</div>
<div>&nbsp; u-boot-fw-utils-staticdev</div>
<div>&nbsp; u-boot-fw-utils-doc</div>
<div>&nbsp; ^u-boot-fw-utils-locale-.*</div>
<div>&nbsp; u-boot-fw-utils-src</div>
<div>Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubooten=
v_0.3.1.bb has unique provides:</div>
<div>&nbsp; libubootenv</div>
<div>Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubooten=
v_0.3.1.bb has unique rprovides:</div>
<div>&nbsp; libubootenv</div>
<div>&nbsp; libubootenv-src</div>
<div>&nbsp; libubootenv-bin</div>
<div>&nbsp; libubootenv-dbg</div>
<div>&nbsp; libubootenv-doc</div>
<div>&nbsp; ^libubootenv-locale-.*</div>
<div>&nbsp; libubootenv-locale</div>
<div>&nbsp; libubootenv-dev</div>
<div>&nbsp; libubootenv-staticdev<br />-----------------------------------=
---------------------------------------------------------------------------=
-------------------------------------------</div>
<div>Does someone already meet this problem? Do you know what I should loo=
k in for to solve it?<br /><br />Thanks by advance, best reguards.</div>

--wKOG60KnwcTzZZrLcig2--
