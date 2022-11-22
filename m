Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC2EBC4332F
	for <webhook@archiver.kernel.org>; Tue, 22 Nov 2022 18:28:55 +0000 (UTC)
Subject: Multilib for core-image-minimal #kirkstone
To: yocto@lists.yoctoproject.org
From: dspore@parraid.com
X-Originating-Location: Lexington Park, Maryland, US (146.168.63.66)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Nov 2022 10:28:49 -0800
Message-ID: <Xwdc.1669141729717943832.hPOP@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="svaznXVEcdnqqnWXpnPk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Nov 2022 18:28:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58620

--svaznXVEcdnqqnWXpnPk
Content-Type: multipart/alternative; boundary="51N2I3TBmiRXMiPeAAOq"

--51N2I3TBmiRXMiPeAAOq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am new to Yocto, and am trying to build core-image-minimal with multilib =
using the latest Kirkstone release.=C2=A0 The image builds ok without the m=
ultilib config entries, but adding the entries (local.conf attached) genera=
tes this error:

ERROR: core-image-minimal-1.0-r0 do_prepare_recipe_sysroot: Manifest /home/=
project/var-fsl-yocto/build_xwayland/tmp/sstate-control/manifest-x86_64_x86=
_64-nativesdk-lib32-qemuwrapper-cross.populate_sysroot not found in imx8mp_=
var_dart armv7at2-neon-mx8mp armv7a-neon-mx8mp armv7at2-vfp-mx8mp armv7a-vf=
p-mx8mp armv7a-mx8mp armv6t-vfp-mx8mp armv6-vfp-mx8mp armv6t-mx8mp armv6-mx=
8mp armv5te-vfp-mx8mp armv5e-vfp-mx8mp armv5te-mx8mp armv5e-mx8mp armv5t-vf=
p-mx8mp armv5-vfp-mx8mp armv5t-mx8mp armv5-mx8mp armv4t-mx8mp armv4-mx8mp a=
rm-mx8mp armv8a-mx8mp armv8a-crc-crypto armv8a-crypto armv8a-crc armv8a aar=
ch64 allarch x86_64_x86_64-nativesdk (variant 'lib32')?
ERROR: Logfile of failure stored in: /home/project/var-fsl-yocto/build_xway=
land/tmp/work/imx8mp_var_dart-fslc-linux/core-image-minimal/1.0-r0/temp/log=
.do_prepare_recipe_sysroot.2763591
ERROR: Task (/home/project/var-fsl-yocto/sources/poky/meta/recipes-core/ima=
ges/core-image-minimal.bb:do_prepare_recipe_sysroot) failed with exit code =
'1'

The bitbake output:
Loading cache: 100% |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=C2=A0 --:--:--
Loaded 0 entries from dependency cache.
Parsing recipes: 100% |##########################################| Time: 0:=
04:58
Parsing of 3134 .bb files complete (0 cached, 3134 parsed). 7763 targets, 5=
89 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2.0.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "aarch64-fslc-linux"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "imx8mp-var-dar=
t"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "fslc-xway=
land"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "4.0"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "aarch64 armv8a crc crypto"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""
meta
meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:24a3f7b3648185=
e33133f5d96b184a6cb6524f3d"
meta-oe
meta-multimedia
meta-python
meta-filesystems
meta-gnome
meta-networking
meta-webserver=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:744a4b6eda88b9a9ca1cf0df=
6e18be384d9054e3"
meta-freescale=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:3747641f1e71d8e4edd5b587=
b49d09dc2d243942"
meta-freescale-3rdparty =3D "HEAD:6d8213fc5ec192c33f963b8095d1f01af1574eea"
meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"
meta-freescale-ml=C2=A0 =C2=A0 =3D "HEAD:08dcb7c67072907348cd235d9e110d4ba9=
1e8235"
meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "HEAD:44d449332=
00287f7d17cf6981af4b4a0961c308d"
meta-swupdate=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:fabbcc623d41794fbfa97c38=
b9da941ed2cdcdcc"
meta-virtualization=C2=A0 =3D "HEAD:5be54854139acb4796000478394afd66de0792c=
1"
meta-variscite-bsp=C2=A0 =C2=A0=3D "HEAD:a4dbd2cfe48a80d4362c9de0523500de05=
f15898"
meta-variscite-sdk=C2=A0 =C2=A0=3D "HEAD:5664513a0cf0f43afb60f92e63e60a86f3=
e53bd0"
meta-variscite-hab=C2=A0 =C2=A0=3D "HEAD:4acacfdbc4b89ace606b5d640e768b7561=
435324"

Initialising tasks: 100% |#######################################| Time: 0:=
00:13
Sstate summary: Wanted 469 Local 236 Mirrors 0 Missed 233 Current 1581 (50%=
 match, 88% complete)
Removing 110 stale sstate objects for arch armv8a: 100% |########| Time: 0:=
00:00
Removing 12 stale sstate objects for arch imx8mp_var_dart: 100% || Time: 0:=
00:00
NOTE: Executing Tasks

I don't know what to do about the manifest file it is complaining about.=C2=
=A0 =C2=A0I've done a lot of searching for answers but haven't found a clea=
r solution.=C2=A0 The ultimate goal is to be able to run modules which have=
 the format shown below on my Variscite=C2=A0imx8mp board.

ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linke=
d, interpreter /lib/ld-linux.so.2, for GNU/Linux 2.6.24, BuildID[sha1]=3D6e=
f3beb0dd7bd4432efc062e181069bf1f5382d7, stripped

Thanks!

David

--51N2I3TBmiRXMiPeAAOq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am new to Yocto, and am trying to build core-image-minimal with multilib =
using the latest Kirkstone release.&nbsp; The image builds ok without the m=
ultilib config entries, but adding the entries (local.conf attached) genera=
tes this error:<br /><br />
<div style=3D"line-height: 1.42857;">
<div style=3D"line-height: 1.42857;">ERROR: core-image-minimal-1.0-r0 do_pr=
epare_recipe_sysroot: Manifest /home/project/var-fsl-yocto/build_xwayland/t=
mp/sstate-control/manifest-x86_64_x86_64-nativesdk-lib32-qemuwrapper-cross.=
populate_sysroot not found in imx8mp_var_dart armv7at2-neon-mx8mp armv7a-ne=
on-mx8mp armv7at2-vfp-mx8mp armv7a-vfp-mx8mp armv7a-mx8mp armv6t-vfp-mx8mp =
armv6-vfp-mx8mp armv6t-mx8mp armv6-mx8mp armv5te-vfp-mx8mp armv5e-vfp-mx8mp=
 armv5te-mx8mp armv5e-mx8mp armv5t-vfp-mx8mp armv5-vfp-mx8mp armv5t-mx8mp a=
rmv5-mx8mp armv4t-mx8mp armv4-mx8mp arm-mx8mp armv8a-mx8mp armv8a-crc-crypt=
o armv8a-crypto armv8a-crc armv8a aarch64 allarch x86_64_x86_64-nativesdk (=
variant 'lib32')?</div>
<div style=3D"line-height: 1.42857;">ERROR: Logfile of failure stored in: /=
home/project/var-fsl-yocto/build_xwayland/tmp/work/imx8mp_var_dart-fslc-lin=
ux/core-image-minimal/1.0-r0/temp/log.do_prepare_recipe_sysroot.2763591</di=
v>
<div style=3D"line-height: 1.42857;">ERROR: Task (/home/project/var-fsl-yoc=
to/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_prepare_r=
ecipe_sysroot) failed with exit code '1'</div>
</div>
<div style=3D"line-height: 1.42857;"><br />The bitbake output:<br />
<div style=3D"line-height: 1.42857;">Loading cache: 100% |&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| ETA:&nbsp; -=
-:--:--</div>
<div style=3D"line-height: 1.42857;">Loaded 0 entries from dependency cache=
.</div>
<div style=3D"line-height: 1.42857;">Parsing recipes: 100% |###############=
###########################| Time: 0:04:58</div>
<div style=3D"line-height: 1.42857;">Parsing of 3134 .bb files complete (0 =
cached, 3134 parsed). 7763 targets, 589 skipped, 0 masked, 0 errors.</div>
<div style=3D"line-height: 1.42857;">NOTE: Resolving any missing task queue=
 dependencies</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Build Configuration:</div>
<div style=3D"line-height: 1.42857;">BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "2.0.0"</div>
<div style=3D"line-height: 1.42857;">BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; =3D "x86_64-linux"</div>
<div style=3D"line-height: 1.42857;">NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =
=3D "universal"</div>
<div style=3D"line-height: 1.42857;">TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D "aarch64-fslc-linux"</div>
<div style=3D"line-height: 1.42857;">MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; =3D "imx8mp-var-dart"</div>
<div style=3D"line-height: 1.42857;">DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;=3D "fslc-xwayland"</div>
<div style=3D"line-height: 1.42857;">DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "4.0"</div>
<div style=3D"line-height: 1.42857;">TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbs=
p; =3D "aarch64 armv8a crc crypto"</div>
<div style=3D"line-height: 1.42857;">TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;=3D ""</div>
<div style=3D"line-height: 1.42857;">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div style=3D"line-height: 1.42857;">meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; =3D "HEAD:24a3f7b3648185e33133f5d96b184a6cb6524f3d"</div>
<div style=3D"line-height: 1.42857;">meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;&nbsp;</div>
<div style=3D"line-height: 1.42857;">meta-multimedia&nbsp; &nbsp; &nbsp;&nb=
sp;</div>
<div style=3D"line-height: 1.42857;">meta-python&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</div>
<div style=3D"line-height: 1.42857;">meta-filesystems&nbsp; &nbsp; &nbsp;</=
div>
<div style=3D"line-height: 1.42857;">meta-gnome&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</div>
<div style=3D"line-height: 1.42857;">meta-networking&nbsp; &nbsp; &nbsp;&nb=
sp;</div>
<div style=3D"line-height: 1.42857;">meta-webserver&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "HEAD:744a4b6eda88b9a9ca1cf0df6e18be384d9054e3"</div>
<div style=3D"line-height: 1.42857;">meta-freescale&nbsp; &nbsp; &nbsp; &nb=
sp;=3D "HEAD:3747641f1e71d8e4edd5b587b49d09dc2d243942"</div>
<div style=3D"line-height: 1.42857;">meta-freescale-3rdparty =3D "HEAD:6d82=
13fc5ec192c33f963b8095d1f01af1574eea"</div>
<div style=3D"line-height: 1.42857;">meta-freescale-distro =3D "HEAD:d5bbb4=
87b2816dfc74984a78b67f7361ce404253"</div>
<div style=3D"line-height: 1.42857;">meta-freescale-ml&nbsp; &nbsp; =3D "HE=
AD:08dcb7c67072907348cd235d9e110d4ba91e8235"</div>
<div style=3D"line-height: 1.42857;">meta-qt5&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;=3D "HEAD:44d44933200287f7d17cf6981af4b4a0961c308d"</div>
<div style=3D"line-height: 1.42857;">meta-swupdate&nbsp; &nbsp; &nbsp; &nbs=
p; =3D "HEAD:fabbcc623d41794fbfa97c38b9da941ed2cdcdcc"</div>
<div style=3D"line-height: 1.42857;">meta-virtualization&nbsp; =3D "HEAD:5b=
e54854139acb4796000478394afd66de0792c1"</div>
<div style=3D"line-height: 1.42857;">meta-variscite-bsp&nbsp; &nbsp;=3D "HE=
AD:a4dbd2cfe48a80d4362c9de0523500de05f15898"</div>
<div style=3D"line-height: 1.42857;">meta-variscite-sdk&nbsp; &nbsp;=3D "HE=
AD:5664513a0cf0f43afb60f92e63e60a86f3e53bd0"</div>
<div style=3D"line-height: 1.42857;">meta-variscite-hab&nbsp; &nbsp;=3D "HE=
AD:4acacfdbc4b89ace606b5d640e768b7561435324"</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Initialising tasks: 100% |############=
###########################| Time: 0:00:13</div>
<div style=3D"line-height: 1.42857;">Sstate summary: Wanted 469 Local 236 M=
irrors 0 Missed 233 Current 1581 (50% match, 88% complete)</div>
<div style=3D"line-height: 1.42857;">Removing 110 stale sstate objects for =
arch armv8a: 100% |########| Time: 0:00:00</div>
<div style=3D"line-height: 1.42857;">Removing 12 stale sstate objects for a=
rch imx8mp_var_dart: 100% || Time: 0:00:00</div>
<div style=3D"line-height: 1.42857;">NOTE: Executing Tasks</div>
<div>&nbsp;</div>
<br />I don't know what to do about the manifest file it is complaining abo=
ut.&nbsp; &nbsp;I've done a lot of searching for answers but haven't found =
a clear solution.&nbsp; The ultimate goal is to be able to run modules whic=
h have the format shown below on my Variscite&nbsp;imx8mp board.&nbsp;&nbsp=
;<br /><br />ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dyna=
mically linked, interpreter /lib/ld-linux.so.2, for GNU/Linux 2.6.24, Build=
ID[sha1]=3D6ef3beb0dd7bd4432efc062e181069bf1f5382d7, stripped<br /><br />Th=
anks!<br /><br />David<br /><br /></div>

--51N2I3TBmiRXMiPeAAOq--

--svaznXVEcdnqqnWXpnPk
Content-Type: application/octet-stream; name="local.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="local.conf"

TUFDSElORSA/Pz0gJ2lteDhtcC12YXItZGFydCcKRElTVFJPID89ICdmc2xjLXh3YXlsYW5kJwoj
RVhUUkFfSU1BR0VfRkVBVFVSRVMgPz0gImRlYnVnLXR3ZWFrcyIKI1BBQ0tBR0VfQ0xBU1NFUyA9
ICJwYWNrYWdlX3JwbSBwYWNrYWdlX2RlYiBwYWNrYWdlX2lwayIKI1BBQ0tBR0VfQ0xBU1NFUyA9
ICJwYWNrYWdlX3JwbSIKVVNFUl9DTEFTU0VTID89ICJidWlsZHN0YXRzIgpQQVRDSFJFU09MVkUg
PSAibm9vcCIKUk9PVF9IT01FID0gIi9yb290IgpCQl9ESVNLTU9OX0RJUlMgPz89ICJcCiAgICBT
VE9QVEFTS1MsJHtUTVBESVJ9LDFHLDEwMEsgXAogICAgU1RPUFRBU0tTLCR7RExfRElSfSwxRywx
MDBLIFwKICAgIFNUT1BUQVNLUywke1NTVEFURV9ESVJ9LDFHLDEwMEsgXAogICAgU1RPUFRBU0tT
LC90bXAsMTAwTSwxMDBLIFwKICAgIEhBTFQsJHtUTVBESVJ9LDEwME0sMUsgXAogICAgSEFMVCwk
e0RMX0RJUn0sMTAwTSwxSyBcCiAgICBIQUxULCR7U1NUQVRFX0RJUn0sMTAwTSwxSyBcCiAgICBI
QUxULC90bXAsMTBNLDFLIgpQQUNLQUdFQ09ORklHOmFwcGVuZDpwbi1xZW11LXN5c3RlbS1uYXRp
dmUgPSAiIHNkbCIKQ09ORl9WRVJTSU9OID0gIjIiClJNX09MRF9JTUFHRSA9ICIxIgpESVNUUk9f
RkVBVFVSRVM6YXBwZW5kID0gIiBzeXN0ZW1kIgpESVNUUk9fRkVBVFVSRVM6YXBwZW5kID0gIiB2
aXJ0dWFsaXphdGlvbiIKRElTVFJPX0ZFQVRVUkVTOmFwcGVuZCA9ICIgc2VjdXJpdHkiCkRJU1RS
T19GRUFUVVJFUzphcHBlbmQgPSAiIGFwcGFybW9yIgpWSVJUVUFMLVJVTlRJTUVfaW5pdF9tYW5h
Z2VyID0gInN5c3RlbWQiCkRJU1RST19GRUFUVVJFU19CQUNLRklMTF9DT05TSURFUkVEID0gInN5
c3Zpbml0IgpWSVJUVUFMLVJVTlRJTUVfaW5pdHNjcmlwdHMgPSAiIgpyZXF1aXJlIGNvbmYvbXVs
dGlsaWIuY29uZgpNVUxUSUxJQlMgPSAibXVsdGlsaWI6bGliMzIiCkRFRkFVTFRUVU5FOnZpcnRj
bGFzcy1tdWx0aWxpYi1saWIzMiA9ICJhcm12N2F0LW5lb24iCklOSEVSSVQgKz0gInJtX3dvcmsi
ClJNX1dPUktfRVhDTFVERSArPSAic25hcGQiCkRMX0RJUiA/PSAiJHtCU1BESVJ9L2Rvd25sb2Fk
cy8iCkFDQ0VQVF9GU0xfRVVMQSA9ICIxIgojSU1BR0VfSU5TVEFMTDphcHBlbmQgPSAiIGFwYWNo
ZTIiCiNJTUFHRV9JTlNUQUxMOmFwcGVuZCA9ICIgcGFja2FnZWdyb3VwLXNuYXBkIgojSU1BR0Vf
SU5TVEFMTDphcHBlbmQgPSAiIG1hcHNlcnZlciIKI0lNQUdFX0lOU1RBTEw6YXBwZW5kID0gIiBz
bmFwZCIKSU1BR0VfSU5TVEFMTDphcHBlbmQgPSAiIGxpYjMyLWdsaWJjIGxpYjMyLWxpYmdjYyBs
aWIzMi1saWJzdGRjKysgbGliMzItYmFzaCIK

--svaznXVEcdnqqnWXpnPk--

