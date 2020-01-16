Subject: Trouble building mono (when building an image)
To: yocto@lists.yoctoproject.org
From: pelle.windestam@tagmaster.com
X-Originating-Location: Kungälv, Västra Götaland, SE (37.233.78.69)
X-Originating-Platform: Windows Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 05:10:20 -0800
Message-ID: <Hb46.1579180220496162285.4Eb6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nr5qSSA3hKpW67MP0i3h"

--nr5qSSA3hKpW67MP0i3h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to include mono in my image. I can successfully build the mono r=
ecipe by itself, but when I try to build my image it fails with the followi=
ng error message:
Error:
Problem: package test-sw-9.1.1b3-r0.aarch64 requires mono, but none of the=
 providers can be installed
- conflicting requests
- nothing provides mono-gac needed by mono-5.12.0.226-r0.aarch64

This is a bit confusing since:
a) I can build mono by itself
b) the mono recipe should provide the mono-gac package

If I run 'bitbake -e mono | grep PACKAGES' I get the output:
PACKAGES=3D"mono-dbg mono-doc mono-staticdev mono-locale mono-libs mono-de=
v=C2=A0 mono-config mono-binaries mono-libs-core=C2=A0 mono-libs-2.0 mono-l=
ibs-3.5 mono-libs-4.0 mono-libs-4.5=C2=A0 mono-api-4.5.1 mono-api-4.5.2 mon=
o-api-4.6 mono-api-4.6.1 mono-api-4.6.2 mono-api-4.7=C2=A0 mono-libs-compat=
-2.0 mono-gac mono-configuration-crypto=C2=A0 mono-libs-monodoc mono-xbuild=
=
=C2=A0 mono-lldb=C2=A0 mono=C2=A0 mono-profiler "
PACKAGESPLITFUNCS=3D"=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 package_do_split_locales=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 populate_packages"
PACKAGES_DYNAMIC=3D"^mono-locale-.*"

So it would seem that bitbake agrees that mono provides mono-gac. The reci=
pe for test-sw is a binary package, and depends on mono via:
RDEPENDS_${PN} =3D " \
...
mono \
"
I am quite new to Yocto, so it could be something very basic that I am mis=
sing. I can actually build the image on my regular development machine, but=
 when setting up the build on a second machine I started getting this error=
. I have verified that the new machine is using the same revisions of all l=
ayers, and there is nothing funny in the local.conf on my dev-machine. Any =
tips on what could be wrong would be most welcome!

I am using the Sumo release of Yocto.

Thanks,
Pelle

--nr5qSSA3hKpW67MP0i3h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to include mono in my image. I can successfully build the mono r=
ecipe by itself, but when I try to build my image it fails with the followi=
ng error message:<br />Error:<br />&nbsp;Problem: package test-sw-9.1.1b3-r=
0.aarch64 requires mono, but none of the providers can be installed<br />&n=
bsp; - conflicting requests<br />&nbsp; - nothing provides mono-gac needed =
by mono-5.12.0.226-r0.aarch64<br /><br />This is a bit confusing since:<br =
/>a) I can build mono by itself<br />b) the mono recipe should provide the =
mono-gac package<br /><br />If I run 'bitbake -e mono | grep PACKAGES' I ge=
t the output:<br />PACKAGES=3D"mono-dbg mono-doc mono-staticdev mono-locale=
 mono-libs mono-dev&nbsp; mono-config mono-binaries mono-libs-core&nbsp; mo=
no-libs-2.0 mono-libs-3.5 mono-libs-4.0 mono-libs-4.5&nbsp; mono-api-4.5.1 =
mono-api-4.5.2 mono-api-4.6 mono-api-4.6.1 mono-api-4.6.2 mono-api-4.7&nbsp=
; mono-libs-compat-2.0 mono-gac mono-configuration-crypto&nbsp; mono-libs-m=
onodoc mono-xbuild&nbsp; mono-lldb&nbsp; mono&nbsp; mono-profiler "<br />PA=
CKAGESPLITFUNCS=3D"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; package_do_split_locales&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; populate_packages"<br />PACKAGES_DYNAMIC=3D"^mono-locale-.*"<br=
 /><br />So it would seem that bitbake agrees that mono provides mono-gac. =
The recipe for test-sw is a binary package, and depends on mono via:<br />R=
DEPENDS_${PN} =3D " \<br />&nbsp; ...<br />&nbsp; mono \<br />"<br />I am q=
uite new to Yocto, so it could be something very basic that I am missing. I=
 can actually build the image on my regular development machine, but when s=
etting up the build on a second machine I started getting this error. I hav=
e verified that the new machine is using the same revisions of all layers, =
and there is nothing funny in the local.conf on my dev-machine. Any tips on=
 what could be wrong would be most welcome!<br /><br />I am using the Sumo =
release of Yocto.<br /><br />Thanks,<br />Pelle<br /><br /><br /><br /><br =
/><br />

--nr5qSSA3hKpW67MP0i3h--
