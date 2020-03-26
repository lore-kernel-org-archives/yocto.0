Subject: Downgrading LVM2 in Zeus
To: yocto@lists.yoctoproject.org
From: "MikeB" <mabnhdev@gmail.com>
X-Originating-Location: Raleigh, North Carolina, US (107.13.78.59)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Mar 2020 08:51:11 -0700
Message-ID: <aDKW.1585237871815140454.B81C@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pDlho0zNxrQ7211ROqTP"

--pDlho0zNxrQ7211ROqTP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.

For several interoperabilty reasons, I find myself needing to downgrade Ze=
us' LVM2 back to the version used by Sumo.

I think I know the correct process for doing this, but I'm getting an erro=
r I don't understand.=C2=A0 I'm hoping someone can spot the problem.

I have a custom layer - meta-exos - for my OS-specific changes.

I copied Sumo's recipes-support/lvm2 support to my custom layer.

>=20
> mberger@snickers:/data/mberger/exos-yocto-311$ ls
> layers/meta-exos/recipes-support/lvm2/
> files=C2=A0 libdevmapper_2.02.171.bb=C2=A0 lvm2=C2=A0 lvm2_2.02.171.bb=
=C2=A0 lvm2.inc
>=20

I updated my conf file with the following preferences:

>=20
> PREFERRED_VERSION_libdevmapper =3D "2.02.171"
> PREFERRED_VERSION_lvm2 =3D "2.02.171"
>=20
>=20

When I try to build, I get the following errors.
Note that the parser doesn't seem to see my lvm2 2.02.171, but later compl=
ains that I'm trying to build two versions of lvm2.=C2=A0 Can someone expla=
in what may be causing this, because I haven't been able to figure it out.

>=20
> mberger@snickers:/data/mberger/exos-yocto-311/build/exos-x32$ bitbake lv=
m2
>=20
> Parsing recipes: 100%
> |#######################################################################=
#######################|
> Time: 0:00:14
> Parsing of 2434 .bb files complete (0 cached, 2434 parsed). 3582 targets=
,
> 336 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 2.02.171 of lvm2 not available (for item
> libdevmapper)
> NOTE: versions of lvm2 available: 2.03.02
>=20
> Build Configuration:
> BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.44.0"
> BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
> NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal-4.8"
> TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-poky-linu=
x-gnux32"
> MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "exos-x32"
> DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
> DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "3.0.2"
> TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "mx32"
> TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""
> meta
> meta-poky
> meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:04d71b42e7323087b945e=
9c507337c1cfb54f48b"
> meta-oe
> meta-python
> meta-networking
> meta-filesystems=C2=A0 =C2=A0 =C2=A0=3D "HEAD:bb65c27a772723dfe2c15b5e1b=
27bcc1a1ed884c"
> meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:faced19dda5=
332cce9164903b250db5aa9b86259"
> meta-virtualization=C2=A0 =3D "HEAD:561b597d4ba91dd36147e1af81bd1edc2d66=
36db"
> meta-exos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "xos_31.1:9361288=
9cf9bcc78d5e683541ea0b315e9e0d9c7"
>=20
>=20
> ERROR: Multiple versions of lvm2 are due to be built
> (/data/mberger/exos-yocto-311/layers/meta-exos/recipes-support/lvm2/lvm2=
_2.02.171.bb
> /data/mberger/exos-yocto-311/layers/meta-openembedded/meta-oe/recipes-su=
pport/lvm2/lvm2_2.03.02.bb).
> Only one version of a given PN should be built in any given build. You
> likely need to set PREFERRED_VERSION_lvm2 to select the correct version =
or
> don't depend on multiple versions.
>=20
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
>=20

Thanks, Mike

--pDlho0zNxrQ7211ROqTP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.<br /><br />For several interoperabilty reasons, I find myself needing t=
o downgrade Zeus' LVM2 back to the version used by Sumo.<br /><br />I think=
 I know the correct process for doing this, but I'm getting an error I don'=
t understand.&nbsp; I'm hoping someone can spot the problem.<br /><br />I h=
ave a custom layer - meta-exos - for my OS-specific changes.<br /><br />I c=
opied Sumo's recipes-support/lvm2 support to my custom layer.
<div><br />
<blockquote>
<div>mberger@snickers:/data/mberger/exos-yocto-311$ ls layers/meta-exos/re=
cipes-support/lvm2/</div>
<div>files&nbsp; libdevmapper_2.02.171.bb&nbsp; lvm2&nbsp; lvm2_2.02.171.b=
b&nbsp; lvm2.inc</div>
</blockquote>
</div>
<br />I updated my conf file with the following preferences:<br />
<blockquote>
<div>PREFERRED_VERSION_libdevmapper =3D "2.02.171"</div>
<div>PREFERRED_VERSION_lvm2 =3D "2.02.171"</div>
<div>&nbsp;</div>
</blockquote>
When I try to build, I get the following errors.<br />Note that the parser=
 doesn't seem to see my lvm2 2.02.171, but later complains that I'm trying =
to build two versions of lvm2.&nbsp; Can someone explain what may be causin=
g this, because I haven't been able to figure it out.<br /><br />
<div>
<blockquote>
<div>mberger@snickers:/data/mberger/exos-yocto-311/build/exos-x32$ bitbake=
 lvm2</div>
<div>Parsing recipes: 100% |##############################################=
################################################| Time: 0:00:14</div>
<div>Parsing of 2434 .bb files complete (0 cached, 2434 parsed). 3582 targ=
ets, 336 skipped, 0 masked, 0 errors.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>NOTE: preferred version 2.02.171 of lvm2 not available (for item libd=
evmapper)</div>
<div>NOTE: versions of lvm2 available: 2.03.02</div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.44.0"</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"=
</div>
<div>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal-4.8"</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "x86_64-poky-l=
inux-gnux32"</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "exos-x32=
"</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "pok=
y"</div>
<div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "3.0.2"</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "mx32"</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</d=
iv>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "HEAD:04d71b42e7323087b9=
45e9c507337c1cfb54f48b"</div>
<div>meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-networking&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-filesystems&nbsp; &nbsp; &nbsp;=3D "HEAD:bb65c27a772723dfe2c15b5=
e1b27bcc1a1ed884c"</div>
<div>meta-intel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "HEAD:faced19d=
da5332cce9164903b250db5aa9b86259"</div>
<div>meta-virtualization&nbsp; =3D "HEAD:561b597d4ba91dd36147e1af81bd1edc2=
d6636db"</div>
<div>meta-exos&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "xos_31.1:9361=
2889cf9bcc78d5e683541ea0b315e9e0d9c7"</div>
<div>&nbsp;</div>
<div>ERROR: Multiple versions of lvm2 are due to be built (/data/mberger/e=
xos-yocto-311/layers/meta-exos/recipes-support/lvm2/lvm2_2.02.171.bb /data/=
mberger/exos-yocto-311/layers/meta-openembedded/meta-oe/recipes-support/lvm=
2/lvm2_2.03.02.bb). Only one version of a given PN should be built in any g=
iven build. You likely need to set PREFERRED_VERSION_lvm2 to select the cor=
rect version or don't depend on multiple versions.</div>
<div>&nbsp;</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.</div>
</blockquote>
</div>
Thanks, Mike

--pDlho0zNxrQ7211ROqTP--
