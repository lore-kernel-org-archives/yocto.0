Subject: Re: Cross compiler which runs on the target architecture
To: yocto@lists.yoctoproject.org
From: "Peter" <peteasa@gmail.com>
X-Originating-Location: Hemel Hempstead, England, GB (82.14.69.17)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Dec 2020 10:59:12 -0800
References: <129586ad-8b40-3b2b-c81f-b53ef3a54950@herbrechtsmeier.net>
In-Reply-To: <129586ad-8b40-3b2b-c81f-b53ef3a54950@herbrechtsmeier.net>
Message-ID: <13792.1608231552106661417@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pQ8JPHvnps7l5tXxYuNH"

--pQ8JPHvnps7l5tXxYuNH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> I dont think there were further discussions.
>=20

The proof of concept layer is http://layers.openembedded.org/layerindex/br=
anch/master/layer/meta-exotic/ - https://github.com/peteasa/meta-exotic/wik=
i.=C2=A0 I created a set of cross compilers for the Epiphany processor http=
://www.adapteva.com/epiphanyiii/ using this layer and the layer https://git=
hub.com/peteasa/meta-epiphany that builds the specific cross compilers for =
that processor.=C2=A0 It worked quite well with yocto-1.7.1 so it's quite a=
n old bit of code, however the ideas could work in a more recent versions o=
f Yocto.

In summary the yocto-1.7.1 code had three variables of interest - BUILD: f=
or example the system of the build machine; HOST: for example the host syst=
em on which the executable will run; TARGET: for example the system that th=
e compiler output will be created for.=C2=A0 The meta-exotic layer introduc=
es a fourth EXOTIC_TARGET and this allows us to differentiate between the b=
uild machine, host system and the system that the compiled Linux kernel run=
s on.=C2=A0 I called it EXOTIC because if the compiled Linux kernel and app=
lications needs to communicate with a remote accelerator with a different s=
ystem then as far as most of the Yocto build is concerned this fourth syste=
m is foreign to the embedded product (ie exotic) that the Linux kernel and =
applications are built on.

I call it a proof of concept because at the time it seemed to me that the =
sensible "fix" would be to introduce these four macro's into Yocto itself s=
o that Yocto had 4 rather than 3 selectable system (build machine, host mac=
hine, target machine and exotic machine).=C2=A0 In the absence of full Yoct=
o support for these 4 I used the Yocto parser rules to update the --target,=
 --host variables in cross compilers to match the appropriate specification=
.=C2=A0 See https://github.com/peteasa/meta-exotic/wiki/Introducing-EXOTIC-=
defines for a more detailed discussion with examples.

I know that Yocto has moved on a lot since I produced the EXOTIC layer so =
if there is a good way to handle the creation of the various cross compiler=
s that that is a good thing.=C2=A0 In my case my Exotic target allowed me t=
o create both code that ran directly on the Epiphany processor (an accelera=
tor attached to the arm-poky-linux-gnueabi embedded system) and a cross com=
piler environment that allowed me to build code for both the Epiphany accel=
erator and the arm-poky-linux-gnueabi embedded system from the same SDK run=
ning on the SDK machine of my choice.=C2=A0 Use of the four variables allow=
ed me to make gcc / applications for any of the following combinations:

--host=3Dbuild_machine --target=3Dbuild_machine

--host=3Dbuild_machine --target=3DSDK_machine

--host=3Darm_target --target=3Darm_target

--host=3DSDK_machine --target=3Darm_target

--host=3Dbuild_machine --target=3DEpiphany_accelerator

--host=3DSDK_machine --target=3DEpiphany_accelerator

--host=3Darm_target --target=3D Epiphany_accelerator

Yes it complex, but these are the necessary combinations if you want to cr=
eate a complete system that provides support for an embedded product with a=
n accelerator and provides an SDK environment so that you can build locally=
 and then download the binary to the embedded systems.

All I can say is it worked for me!

--pQ8JPHvnps7l5tXxYuNH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span id=3D"main">I dont think there were further discussions.<=
br /></span></blockquote>
<span id=3D"main">The proof of concept layer is <a class=3D"moz-txt-link-f=
reetext" href=3D"http://layers.openembedded.org/layerindex/branch/master/la=
yer/meta-exotic/">http://layers.openembedded.org/layerindex/branch/master/l=
ayer/meta-exotic/</a> - <a class=3D"moz-txt-link-freetext" href=3D"https://=
github.com/peteasa/meta-exotic/wiki">https://github.com/peteasa/meta-exotic=
/wiki</a>.&nbsp; I created a set of cross compilers for the Epiphany proces=
sor <a class=3D"moz-txt-link-freetext" href=3D"http://www.adapteva.com/epip=
hanyiii/">http://www.adapteva.com/epiphanyiii/</a> using this layer and the=
 layer <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/peteas=
a/meta-epiphany">https://github.com/peteasa/meta-epiphany</a> that builds t=
he specific cross compilers for that processor.&nbsp; It worked quite well =
with yocto-1.7.1 so it's quite an old bit of code, however the ideas could =
work in a more recent versions of Yocto. <br /><br />In summary the yocto-1=
.7.1 code had three variables of interest - BUILD: for example the system o=
f the build machine; HOST: for example the host system on which the executa=
ble will run; TARGET: for example the system that the compiler output will =
be created for.&nbsp; The </span><span id=3D"main">meta-exotic layer introd=
uces a fourth EXOTIC_TARGET and this allows us to differentiate between the=
 build machine, host system and the system that the compiled Linux kernel r=
uns on.&nbsp; I called it EXOTIC because if the compiled Linux kernel and a=
pplications needs to communicate with a remote accelerator with a different=
 system then as far as most of the Yocto build is concerned this fourth sys=
tem is foreign to the embedded product (ie exotic) that the Linux kernel an=
d applications are built on.<br /><br />I call it a proof of concept becaus=
e at the time it seemed to me that the sensible "fix" would be to introduce=
 these four macro's into Yocto itself so that Yocto had 4 rather than 3 sel=
ectable system (build machine, host machine, target machine and exotic mach=
ine).&nbsp; In the absence of full Yocto support for these 4 I used the Yoc=
to parser rules to update the --target, --host variables in cross compilers=
 to match the appropriate specification.&nbsp; See <a href=3D"https://githu=
b.com/peteasa/meta-exotic/wiki/Introducing-EXOTIC-defines" target=3D"_blank=
" rel=3D"noopener">https://github.com/peteasa/meta-exotic/wiki/Introducing-=
EXOTIC-defines</a> for a more detailed discussion with examples.<br /><br /=
>I know that Yocto has moved on a lot since I produced the EXOTIC layer so =
if there is a good way to handle the creation of the various cross compiler=
s that that is a good thing.&nbsp; In my case my Exotic target allowed me t=
o create both code that ran directly on the Epiphany processor (an accelera=
tor attached to the </span><span id=3D"main">arm-poky-linux-gnueabi embedde=
d system) and a cross compiler environment that allowed me to build code fo=
r both the </span><span id=3D"main"><span id=3D"main">Epiphany accelerator =
and the </span></span><span id=3D"main">arm-poky-linux-gnueabi embedded sys=
tem from the same SDK running on the SDK machine of my choice.&nbsp; Use of=
 the four variables allowed me to make gcc / applications for any of the fo=
llowing combinations:<br /></span><br /><span id=3D"main"><span id=3D"main"=
>--host=3Dbuild_machine --target=3Dbuild_machine<br /></span></span><br /><=
span id=3D"main"><span id=3D"main"><span id=3D"main">--host=3Dbuild_machine=
 --target=3DSDK_machine<br /></span></span></span><br /><span id=3D"main"><=
span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><spa=
n id=3D"main">--host=3Darm_target --target=3Darm_target<br /></span></span>=
</span></span></span></span><br /><span id=3D"main"><span id=3D"main"><span=
 id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main">--host=3DSDK_machine --target=3Darm_target<br =
/><br />--host=3Dbuild_machine --target=3DEpiphany_accelerator<br /></span>=
</span></span></span></span></span></span></span></span></span></span></spa=
n><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><=
span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><spa=
n id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span i=
d=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><br />--ho=
st=3DSDK_machine --target=3DEpiphany_accelerator</span></span></span></span=
></span></span></span></span></span></span></span></span><br /></span></spa=
n></span></span></span></span></span></span></span></span></span></span><br=
 /><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main">=
<span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><sp=
an id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span =
id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main">--host=3Darm_target --target=3D</span></span><=
/span></span></span></span></span></span></span></span></span></span></span=
></span></span></span></span></span><span id=3D"main"><span id=3D"main"><sp=
an id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span =
id=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main"><span id=3D"main"><span id=3D"main"><span id=
=3D"main"><span id=3D"main">Epiphany_accelerator<br /><br />Yes it complex=
, but these are the necessary combinations if you want to create a complete=
 system that provides support for an embedded product with an accelerator a=
nd provides an SDK environment so that you can build locally and then downl=
oad the binary to the embedded systems.<br /><br />All I can say is it work=
ed for me!<br /></span></span></span></span></span></span></span></span></s=
pan></span></span></span></span></span></span></span></span></span></span><=
/span></span></span></span></span></span></span></span></span></span></span=
></span></span></span></span></span></span>

--pQ8JPHvnps7l5tXxYuNH--
