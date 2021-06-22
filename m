Subject: Re: Empty source package when using devtool
To: yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Paris, Île-de-France, FR (217.114.204.178)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Jun 2021 01:52:28 -0700
References: <379.1623994900446573953@lists.yoctoproject.org>
In-Reply-To: <379.1623994900446573953@lists.yoctoproject.org>
Message-ID: <24077.1624351948476562957@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ItbyxePLmAd1j1pcsxx7"

--ItbyxePLmAd1j1pcsxx7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I dug further into yocto classes and I think I found what is going o=
n.

All seems to come from the fact that gcc debug-prefix-map and macro-prefix=
-map options are statically defined in bitbake.conf to

>=20
> DEBUG_PREFIX_MAP ?=3D
> "-fmacro-prefix-map=3D${WORKDIR}=3D/usr/src/debug/${PN}/${EXTENDPE}${PV}=
-${PR}
> \
> -fdebug-prefix-map=3D${WORKDIR}=3D/usr/src/debug/${PN}/${EXTENDPE}${PV}-=
${PR}
> \
> -fdebug-prefix-map=3D${STAGING_DIR_HOST}=3D \
> -fdebug-prefix-map=3D${STAGING_DIR_NATIVE}=3D \
> "
>=20
>=20
>=20

I'll took an example to try to be clearer. Let's say that I devtool modify=
 the glib-2.0 package. Without any configuration, sources will be extracted=
 in ${BDIR}/workspace/sources/glib-2.0.
Build directory is set by=C2=A0externalsrc.bbclass to ${BDIR}/tmp/work/${a=
rch}-${distro}/glib-2.0/${PN}/${EXTENDPE}${PV}-${PR}/${BPN}/${BPN}-${PV} (t=
he real path doesn't matter, what is matter is that B is not under devtool =
spaces).

This lead to have pretty long relative path in gcc compilation line (sothe=
ming like=C2=A0 -c ../../../../../../../../worspace/sources/glib-2.0/glib/g=
main.c for example). Hence the debug-prefix-map could not be appplied.
After the compilation stage, package.bbclass (via=C2=A0splitdebuginfo), th=
ere is an extraction of sources path via dwarf format parsing. We ended up =
parsing something like

- /workspace/sources/glib-2.0/glib/gmain.c

instead of

- /usr/src/debug/glib-2.0/1_2.58.3-r0.2/glib-2.58.3/glib/gmain.c

I patch externalsrc.bbclass to dynamically caculate correct debug-prefix-m=
ap and prepend to DEBUG_PREFIX_MAP variable, I also patch the package.bbcla=
ss to add a condition when EXTERNALSRC is defined to change the way the sou=
rces are found and copied to packages-split/${pkg}-src.

I would greatly appreciate if there is a yocto guru around there to tell m=
e what he thinks about all of this (bug or wrong configuration ?) and if my=
 assumptions are correct (I assume this was a compiling/packaging problem i=
nstead of a pure devtool one)

--ItbyxePLmAd1j1pcsxx7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I dug further into yocto classes and I think I found what is going o=
n.&nbsp;<br /><br />All seems to come from the fact that gcc debug-prefix-m=
ap and macro-prefix-map options are statically defined in bitbake.conf to<b=
r /><br />
<blockquote>
<div>DEBUG_PREFIX_MAP ?=3D "-fmacro-prefix-map=3D${WORKDIR}=3D/usr/src/deb=
ug/${PN}/${EXTENDPE}${PV}-${PR} \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;-fdebug-prefix-map=3D${WORKDIR}=3D/usr/src/debug/${PN}/${EXTENDPE}${=
PV}-${PR} \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;-fdebug-prefix-map=3D${STAGING_DIR_HOST}=3D \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;-fdebug-prefix-map=3D${STAGING_DIR_NATIVE}=3D \<br />"<br /><br /></=
div>
</blockquote>
<div>I'll took an example to try to be clearer. Let's say that I devtool m=
odify the glib-2.0 package. Without any configuration, sources will be extr=
acted in ${BDIR}/workspace/sources/glib-2.0.<br />Build directory is set by=
&nbsp;externalsrc.bbclass to ${BDIR}/tmp/work/${arch}-${distro}/glib-2.0/${=
PN}/${EXTENDPE}${PV}-${PR}/${BPN}/${BPN}-${PV} (the real path doesn't matte=
r, what is matter is that B is not under devtool spaces).<br /><br />This l=
ead to have pretty long relative path in gcc compilation line (sotheming li=
ke&nbsp; -c ../../../../../../../../worspace/sources/glib-2.0/glib/gmain.c =
for example). Hence the debug-prefix-map could not be appplied.<br />After =
the compilation stage, package.bbclass (via&nbsp;splitdebuginfo), there is =
an extraction of sources path via dwarf format parsing. We ended up parsing=
 something like<br /><br />- /workspace/sources/glib-2.0/glib/gmain.c<br />=
<br />instead of<br /><br />- /usr/src/debug/glib-2.0/1_2.58.3-r0.2/glib-2.=
58.3/glib/gmain.c<br /><br />I patch externalsrc.bbclass to dynamically cac=
ulate correct debug-prefix-map and prepend to DEBUG_PREFIX_MAP variable, I =
also patch the package.bbclass to add a condition when EXTERNALSRC is defin=
ed to change the way the sources are found and copied to packages-split/${p=
kg}-src.<br /><br />I would greatly appreciate if there is a yocto guru aro=
und there to tell me what he thinks about all of this (bug or wrong configu=
ration ?) and if my assumptions are correct (I assume this was a compiling/=
packaging problem instead of a pure devtool one)&nbsp;</div>

--ItbyxePLmAd1j1pcsxx7--
