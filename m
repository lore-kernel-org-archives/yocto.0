Subject: Re: EXTRA_OECMAKE options are ignored #sdk #yocto
To: yocto@lists.yoctoproject.org
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (62.4.90.5)
X-Originating-Platform: Linux Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 12:15:35 -0700
References: <830287a5-9dde-feea-89b5-55930cf56864@gmail.com>
In-Reply-To: <830287a5-9dde-feea-89b5-55930cf56864@gmail.com>
Message-ID: <28900.1584386135797084753@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3aVKCpBsZsmsd9RRJoxR"

--3aVKCpBsZsmsd9RRJoxR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2020 at 11:26 AM, Khem Raj wrote:

>=20
> please post your recipe

Hello Khem Raj,

Sorry for the late reply. I was not available during last week.
So, I post here my recipe.
But before I want to make two comments:
* I found a variable in the cmake\*.bbclass (i.e. OECMAKE_EXTRA_ROOT_PATH)=
 that I am using in my recipe. Now, that extra root path is not ignored any=
more. However, there is an executable that needs to be ran. This executable=
 seems to be not found. The executable is placed under:
/home/ahejuser/SDK/sysroots/x86_64-pokysdk-linux/usr/share/nativesdk-capic=
xx-core-3.1.12.3/
But there is a link pointing to this file and such soft-link is placed und=
er
/home/ahejuser/SDK/sysroots/x86_64-pokysdk-linux/usr/bin/
That las path is part of my PATH environment variable (i.e. ${PATH}).
* I modified my recipe to include "CMAKE_FIND_ROOT_PATH_MODE_PROGRAM" in m=
y EXTRA_OECMAKE variable (set to BOTH).
I was expecting that with this, the executable could be found, but the bui=
ld complains that the executable cannot be found:
/bin/sh: 1: commonapi-someip-generator-linux-x86_64: not found
However, if I type in the executable it will be found - as expected since =
it can be accessed via the PATH environment variable.

I made a small modification to my initial recipe (ou will see the differen=
ce between my pasted recipe and my previous post). However the result is th=
e same.

I added " set( CMAKE_FIND_DEBUG_MODE TRUE )" and " set( CMAKE_FIND_DEBUG_M=
ODE FALSE )" before and afer the add_custom_command() call in my CMakeFile.=
txt but I got not relevant output that helps me to debug this (maybe that C=
MAKE_FIND_DEUG_MODE is not used properly, but wanted to mentioned it anyway=
s).

So... here my recipe:

LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

SRC_URI =3D "https://github.com/xxxxxxxxx/common-test.git;protocol=3Dhttps=
"

PV =3D "1.0+git${SRCPV}"
SRCREV =3D "68c6e3b837ef7d8b12d8aec0f4f558c947fac0c"

S =3D "${WORKDIR}/git"

inherit cmake

EXTRA_OECMAKE =3D "-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3DBOTH"
OECMAKE_EXTRA_ROOT_PATH=3D"/home/ahejuser/SDK/sysroots/x86_64-pokysdk-linu=
x"

Again, any hint will be pretty much appreciated.
Thanks in advance!

Armando Hernandez

--3aVKCpBsZsmsd9RRJoxR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2020 at 11:26 AM, Khem Raj wrote:<br />
<blockquote>please post your recipe</blockquote>
<span style=3D"color: #000000;">Hello Khem Raj,</span><br /><br /><span st=
yle=3D"color: #000000;">Sorry for the late reply. I was not available durin=
g last week.</span><br /><span style=3D"color: #000000;">So, I post here my=
 recipe.<br /></span>But before I want to make two comments:<br />
<ol>
<li>&nbsp; &nbsp;I found a variable in the cmake\*.bbclass (i.e. OECMAKE_E=
XTRA_ROOT_PATH) that I am using in my recipe. Now, that extra root path is =
not ignored anymore. However, there is an executable that needs to be ran. =
This executable seems to be not found. The executable is placed under:<br /=
>&nbsp; &nbsp;&nbsp;<span style=3D"color: #000000; font-family: Menlo, Mona=
co, Consolas, 'Courier New', monospace; font-size: 13px;">/home/ahejuser/SD=
K/sysroots/x86_64-pokysdk-linux/usr/share/nativesdk-capicxx-core-3.1.12.3/<=
br /></span>But there is a link pointing to this file and such soft-link is=
 placed under<br />&nbsp; &nbsp;<span style=3D"color: #000000; font-family:=
 Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13px;">/home=
/ahejuser/SDK/sysroots/x86_64-pokysdk-linux/usr/bin/<br /></span>That las p=
ath is part of my PATH environment variable (i.e. ${PATH}).</li>
<li>I modified my recipe to include "CMAKE_FIND_ROOT_PATH_MODE_PROGRAM" in=
 my EXTRA_OECMAKE variable (set to BOTH).<br />I was expecting that with th=
is, the executable could be found, but the build complains that the executa=
ble cannot be found:<br />&nbsp; &nbsp;/bin/sh: 1: commonapi-someip-generat=
or-linux-x86_64: not found<br />However, if I type in the executable it wil=
l be found - as expected since it can be accessed via the PATH environment =
variable.</li>
</ol>
<br /><span style=3D"color: #000000;">I made a small modification to my in=
itial recipe (ou will see the difference between my pasted recipe and my pr=
evious post). However the result is the same.<br /></span><br /><span style=
=
=3D"color: #000000;">I added</span> "<span class=3D"nf" style=3D"font-fami=
ly: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13px; col=
or: #007020;">set(</span><span class=3D"no" style=3D"font-family: Menlo, Mo=
naco, Consolas, 'Courier New', monospace; font-size: 13px; color: #4070a0;"=
>CMAKE_FIND_DEBUG_MODE</span><span class=3D"w" style=3D"font-family: Menlo,=
 Monaco, Consolas, 'Courier New', monospace; font-size: 13px; color: #bbbbb=
b;"> </span><span class=3D"no" style=3D"font-family: Menlo, Monaco, Consola=
s, 'Courier New', monospace; font-size: 13px; color: #4070a0;">TRUE</span><=
span class=3D"nf" style=3D"font-family: Menlo, Monaco, Consolas, 'Courier N=
ew', monospace; font-size: 13px; color: #007020;">)" <span style=3D"color: =
#000000;">and</span> "</span><span class=3D"nf" style=3D"font-family: Menlo=
, Monaco, Consolas, 'Courier New', monospace; font-size: 13px; color: #0070=
20;">set(</span><span class=3D"no" style=3D"font-family: Menlo, Monaco, Con=
solas, 'Courier New', monospace; font-size: 13px; color: #4070a0;">CMAKE_FI=
ND_DEBUG_MODE</span><span class=3D"w" style=3D"font-family: Menlo, Monaco, =
Consolas, 'Courier New', monospace; font-size: 13px; color: #bbbbbb;">&nbsp=
;FALSE</span><span class=3D"nf" style=3D"font-family: Menlo, Monaco, Consol=
as, 'Courier New', monospace; font-size: 13px; color: #007020;">)" <span st=
yle=3D"color: #000000;">before and afer the add_custom_command() call in my=
 CMakeFile.txt but I got not relevant output that helps me to debug this (m=
aybe that CMAKE_FIND_DEUG_MODE is not used properly, but wanted to mentione=
d it anyways).<br /><br />So... here my recipe:<br /><br />LICENSE =3D "CLO=
SED"<br />LIC_FILES_CHKSUM =3D ""<br /><br />SRC_URI =3D "https://github.co=
m/xxxxxxxxx/common-test.git;protocol=3Dhttps"<br /><br />PV =3D "1.0+git${S=
RCPV}"<br />SRCREV =3D "68c6e3b837ef7d8b12d8aec0f4f558c947fac0c"<br /><br /=
>S =3D "${WORKDIR}/git"<br /><br />inherit cmake<br /><br />EXTRA_OECMAKE =
=3D "-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3DBOTH"<br />OECMAKE_EXTRA_ROOT_P=
ATH=3D"/home/ahejuser/SDK/sysroots/x86_64-pokysdk-linux"<br /><br />Again, =
any hint will be pretty much appreciated.<br />Thanks in advance!<br /><br =
/>Armando Hernandez</span></span>

--3aVKCpBsZsmsd9RRJoxR--
