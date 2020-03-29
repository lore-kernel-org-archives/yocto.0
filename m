Subject: Re: patching an .inc file?
To: yocto@lists.yoctoproject.org
From: "Derek Dresser" <dresser.net@gmail.com>
X-Originating-Location: Ashburn, Virginia, US (3.215.45.102)
X-Originating-Platform: Linux Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 29 Mar 2020 06:38:25 -0700
References: <VI1PR05MB4286F209083FA6D3181A93DCA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB4286F209083FA6D3181A93DCA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Message-ID: <19211.1585489105648561652@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RgvCpsKG44TRG8YpgVGL"

--RgvCpsKG44TRG8YpgVGL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Konrad,
Thanks for the reply.=C2=A0 I understand this is temporary until the overr=
idden file is updated.=C2=A0 I appreciate you pointing out using layer prio=
rity as an option.=C2=A0 Unfortunately, I can't seem to get this to work us=
ing priority.=C2=A0 I'm afraid I might be missing something.=C2=A0 I will t=
ry to illustrate with an example.

Here are my layers, note "meta-acadia" is priority 16.=C2=A0 This is where=
 the override file is.=C2=A0 My understanding is a higher priority takes pr=
ecedence.=C2=A0 I did try setting my layer priority to 4, but had the same =
results.

pokyuser@9cf512f73142:/yocto-src/poky$ bitbake-layers show-layers
NOTE: Starting bitbake server...
layer=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0path=C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priority
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /yocto-=
src/poky/meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 5
meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/m=
eta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 /yocto-src/poky/meta-yocto-bsp=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5
meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/p=
oky/meta-openembedded/meta-oe=C2=A0 6
meta-perl=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/m=
eta-openembedded/meta-perl=C2=A0 6
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-o=
penembedded/meta-python=C2=A0 7
meta-networking=C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-openembedde=
d/meta-networking=C2=A0 5
meta-filesystems=C2=A0 =C2=A0 =C2=A0 /yocto-src/poky/meta-openembedded/met=
a-filesystems=C2=A0 6
meta-security=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-securi=
ty=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08
meta-xilinx-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-xilinx/meta=
-xilinx-bsp=C2=A0 5
meta-xilinx-standalone=C2=A0 /yocto-src/poky/meta-xilinx/meta-xilinx-stand=
alone=C2=A0 5
meta-acadia=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-a=
cadia=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016
meta-idexx-distro=C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-company-distro=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06
meta-neural-network=C2=A0 =C2=A0/yocto-src/poky/meta-neural-network=C2=A0 =
=
=C2=A0 =C2=A0 =C2=A07
meta-selinux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /yocto-src/poky/meta-selinu=
x=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5
meta-cgl-common=C2=A0 =C2=A0 =C2=A0 =C2=A0/yocto-src/poky/meta-cgl/meta-cg=
l-common=C2=A0 7

and the override file diff (same path within my layer)

pokyuser@9cf512f73142:/yocto-src/poky$ diff meta/conf/machine/include/micr=
oblaze/feature-microblaze-versions.inc meta-acadia/conf/machine/include/mic=
roblaze/feature-microblaze-versions.inc
46a47
> TUNEVALID[v11.0] =3D "MicroBlaze version 11.0"
62a64
> TUNECONFLICTS[v11.0] =3D "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 =
v9.2 v9.3 v9.4 v9.5 v9.6 v10.0"

here's the error

Toolchain tunings invalid:
Tuning 'microblaze' has the following errors:
Feature 'v11.0' is not defined.

However, if I copy my override file into the "meta" layer, I can build wit=
hout errors.

pokyuser@9cf512f73142:/yocto-src/poky$ cp meta-acadia/conf/machine/include=
/microblaze/feature-microblaze-versions.inc meta/conf/machine/include/micro=
blaze/feature-microblaze-versions.inc

Is there something else I'm missing to make the priorty override work?

Thank you.

--RgvCpsKG44TRG8YpgVGL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Konrad,<br />Thanks for the reply.&nbsp; I understand this is temporary unt=
il the overridden file is updated.&nbsp; I appreciate you pointing out usin=
g layer priority as an option.&nbsp; Unfortunately, I can't seem to get thi=
s to work using priority.&nbsp; I'm afraid I might be missing something.&nb=
sp; I will try to illustrate with an example.<br /><br />Here are my layers=
, note "meta-acadia" is priority 16.&nbsp; This is where the override file =
is.&nbsp; My understanding is a higher priority takes precedence.&nbsp; I d=
id try setting my layer priority to 4, but had the same results.<br /><br /=
>
<div style=3D"padding-left: 30px;">pokyuser@9cf512f73142:/yocto-src/poky$ =
bitbake-layers show-layers</div>
<div style=3D"padding-left: 30px;">NOTE: Starting bitbake server...</div>
<div style=3D"padding-left: 30px;">layer&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;path&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; priority</div>
<div style=3D"padding-left: 30px;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"padding-left: 30px;">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; /yocto-src/poky/meta&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
<div style=3D"padding-left: 30px;">meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;/yocto-src/poky/meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;5</div>
<div style=3D"padding-left: 30px;">meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbs=
p; /yocto-src/poky/meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
5</div>
<div style=3D"padding-left: 30px;">meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;/yocto-src/poky/meta-openembedded/meta-oe&nbsp; 6</d=
iv>
<div style=3D"padding-left: 30px;">meta-perl&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;/yocto-src/poky/meta-openembedded/meta-perl&nbsp; 6</div>
<div style=3D"padding-left: 30px;">meta-python&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;/yocto-src/poky/meta-openembedded/meta-python&nbsp; 7</div>
<div style=3D"padding-left: 30px;">meta-networking&nbsp; &nbsp; &nbsp; &nb=
sp;/yocto-src/poky/meta-openembedded/meta-networking&nbsp; 5</div>
<div style=3D"padding-left: 30px;">meta-filesystems&nbsp; &nbsp; &nbsp; /y=
octo-src/poky/meta-openembedded/meta-filesystems&nbsp; 6</div>
<div style=3D"padding-left: 30px;">meta-security&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;/yocto-src/poky/meta-security&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;8</div>
<div style=3D"padding-left: 30px;">meta-xilinx-bsp&nbsp; &nbsp; &nbsp; &nb=
sp;/yocto-src/poky/meta-xilinx/meta-xilinx-bsp&nbsp; 5</div>
<div style=3D"padding-left: 30px;">meta-xilinx-standalone&nbsp; /yocto-src=
/poky/meta-xilinx/meta-xilinx-standalone&nbsp; 5</div>
<div style=3D"padding-left: 30px;">meta-acadia&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;/yocto-src/poky/meta-acadia&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;16</div>
<div style=3D"padding-left: 30px;">meta-idexx-distro&nbsp; &nbsp; &nbsp;/y=
octo-src/poky/meta-company-distro&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6</div>
<div style=3D"padding-left: 30px;">meta-neural-network&nbsp; &nbsp;/yocto-=
src/poky/meta-neural-network&nbsp; &nbsp; &nbsp; &nbsp;7</div>
<div style=3D"padding-left: 30px;">meta-selinux&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; /yocto-src/poky/meta-selinux&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 5</div>
<div>meta-cgl-common&nbsp; &nbsp; &nbsp; &nbsp;/yocto-src/poky/meta-cgl/me=
ta-cgl-common&nbsp; 7<br /><br />and the override file diff (same path with=
in my layer)<br /><br />
<div style=3D"padding-left: 30px;">pokyuser@9cf512f73142:/yocto-src/poky$ =
diff meta/conf/machine/include/microblaze/feature-microblaze-versions.inc m=
eta-acadia/conf/machine/include/microblaze/feature-microblaze-versions.inc<=
/div>
<div style=3D"padding-left: 30px;">46a47</div>
<div style=3D"padding-left: 30px;">&gt; TUNEVALID[v11.0] =3D "MicroBlaze v=
ersion 11.0"</div>
<div style=3D"padding-left: 30px;">62a64</div>
<div style=3D"padding-left: 30px;">&gt; TUNECONFLICTS[v11.0] =3D "v8.00 v8=
.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5 v9.6 v10.0"</div>
<br />here's the error<br /><br />
<div style=3D"padding-left: 30px;">&nbsp; &nbsp; Toolchain tunings invalid=
:</div>
<div style=3D"padding-left: 30px;">Tuning 'microblaze' has the following e=
rrors:</div>
<div style=3D"padding-left: 30px;">Feature 'v11.0' is not defined.</div>
<br />However, if I copy my override file into the "meta" layer, I can bui=
ld without errors.<br /><br />pokyuser@9cf512f73142:/yocto-src/poky$ cp met=
a-acadia/conf/machine/include/microblaze/feature-microblaze-versions.inc me=
ta/conf/machine/include/microblaze/feature-microblaze-versions.inc<br /><br=
 />Is there something else I'm missing to make the priorty override work?<b=
r /><br />Thank you.<br /><br /></div>

--RgvCpsKG44TRG8YpgVGL--
