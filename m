Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03809C3DA4A
	for <webhook@archiver.kernel.org>; Thu,  8 Aug 2024 18:42:10 +0000 (UTC)
Subject: nothing provides libpython3.6m.so.1.0()(64bit) needed by nativesdk-gcc-arm-none-eabi-11-r0.x86_64_nativesdk
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Kosamba, Gujarat, IN (103.238.110.77)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Aug 2024 11:42:00 -0700
Message-ID: <Gr5W.1723142520164722541.ofY7@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="ngGmOJJ7rVMYhHUxNUCp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Aug 2024 18:42:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63680

--ngGmOJJ7rVMYhHUxNUCp
Content-Type: multipart/alternative; boundary="dzZ544CFzK2xEoLenmth"

--dzZ544CFzK2xEoLenmth
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.. guys
Hope all are doing well...

I'm dealing with the Yocto Kirkstone with my custom -image
In my case, everything is working well and I can boot my STM32MP1 board wit=
h the custom image.

My aim is to populate the SDK for the further development

>=20
> I'm using the command bitbake -c populate_sdk custom-image, however durin=
g
> the mid of the build it's throwing the error as mentioned below
>=20
>=20
> RROR: custom-image-1.0-r0 do_populate_sdk: Could not invoke dnf. Command
> '/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp=
/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/recipe-sysroot-native=
/usr/bin/dnf
> -v --rpmverbosity=3Dinfo -y -c
> /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/=
work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/sdk/image/etc/dnf/dnf.=
conf
> --setopt=3Dreposdir=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-s=
tm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/=
sdk/image/etc/yum.repos.d
> --installroot=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp=
1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/sdk/im=
age
> --setopt=3Dlogdir=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm=
32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/te=
mp
> --repofrompath=3Doe-repo,/home/mahendra/Documents/MyWorkSpace/my-git/Yoct=
o-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-=
r0/oe-sdk-repo
> --nogpgcheck install nativesdk-binutils nativesdk-cpp-symlinks
> nativesdk-dtc nativesdk-fiptool-stm32mp nativesdk-flex
> nativesdk-gcc-arm-none-eabi nativesdk-gcc-symlinks
> nativesdk-glibc-gconv-utf-16 nativesdk-glibc-gconv-utf-32
> nativesdk-libyaml nativesdk-libyaml-dev nativesdk-ncurses-libncursesw
> nativesdk-openocd-stm32mp nativesdk-openssl-dev nativesdk-optee-sdk
> nativesdk-packagegroup-sdk-host nativesdk-perl-module-encode
> nativesdk-perl-module-encode-encoding
> nativesdk-perl-module-encode-mime-header
> nativesdk-perl-module-file-spec-functions nativesdk-perl-module-integer
> nativesdk-perl-module-pod-text nativesdk-perl-module-term-ansicolor
> nativesdk-python3 nativesdk-python3-cffi nativesdk-python3-cryptography
> nativesdk-python3-dev nativesdk-python3-pillow nativesdk-python3-pycparse=
r
> nativesdk-python3-pycryptodomex nativesdk-python3-pyelftools
> nativesdk-python3-setuptools nativesdk-sdcard-raw-tools
> nativesdk-stm32wrapper4dbg nativesdk-svd-tools nativesdk-swig
> nativesdk-u-boot-mkimage nativesdk-wayland
> packagegroup-cross-canadian-stm32mp1' returned 1:
> DNF version: 4.11.1
> cachedir:
> /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/=
work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/sdk/image/var/cache/dn=
f
>=20
> Added oe-repo repo from
> /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/=
work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/oe-sdk-repo
>=20
> User-Agent: constructed: 'libdnf (Ubuntu 20.04; generic; Linux.x86_64)'
> repo: using cache for: oe-repo
> oe-repo: using metadata from Tue 06 Aug 2024 06:12:23 PM UTC.
> Last metadata expiration check: 0:00:01 ago on Thu 08 Aug 2024 06:30:38 P=
M
> UTC.
> --> Starting dependency resolution
> --> Finished dependency resolution
> Error:
> Problem: conflicting requests
> - nothing provides libpython3.6m.so.1.0()(64bit) needed by
> nativesdk-gcc-arm-none-eabi-11-r0.x86_64_nativesdk
> (try to add '--skip-broken' to skip uninstallable packages)
> ERROR: Logfile of failure stored in:
> /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/=
work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/temp/log.do_populate_s=
dk.1764001
>=20
> ERROR: Task
> (/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/meta-custom/r=
ecipes-core/images/custom-image.bb:do_populate_sdk)
> failed with exit code '1'
>=20
>=20

Can any one help me here to figure-out the issue ?

PS: I have already installed =C2=A0python3 python3-pip with the image.
I have already added the meta-python layers with the image

pl. suggest

I have attached my custom-image.bb file here for the reference

pl. suggest

Thanks,
Mahendra

--dzZ544CFzK2xEoLenmth
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi.. guys <br />Hope all are doing well...</div>
<div>&nbsp;</div>
<div>I'm dealing with the Yocto Kirkstone with my custom -image <br />In my=
 case, everything is working well and I can boot my STM32MP1 board with the=
 custom image.</div>
<div>&nbsp;</div>
<div>My aim is to populate the SDK for the further development</div>
<div>&nbsp;</div>
<blockquote>
<div>I'm using the command bitbake -c populate_sdk custom-image, however du=
ring the mid of the build it's throwing the error as mentioned below <br />=
<br /><br />
<div>RROR: custom-image-1.0-r0 do_populate_sdk: Could not invoke dnf. Comma=
nd '/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tm=
p/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/recipe-sysroot-nativ=
e/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/mahendra/Documents/MyWor=
kSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi=
/custom-image/1.0-r0/sdk/image/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home=
/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/st=
m32mp1-poky-linux-gnueabi/custom-image/1.0-r0/sdk/image/etc/yum.repos.d --i=
nstallroot=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/bui=
ld-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/sdk/image -=
-setopt=3Dlogdir=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32m=
p1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/temp =
--repofrompath=3Doe-repo,/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-=
stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0=
/oe-sdk-repo --nogpgcheck install nativesdk-binutils nativesdk-cpp-symlinks=
 nativesdk-dtc nativesdk-fiptool-stm32mp nativesdk-flex nativesdk-gcc-arm-n=
one-eabi nativesdk-gcc-symlinks nativesdk-glibc-gconv-utf-16 nativesdk-glib=
c-gconv-utf-32 nativesdk-libyaml nativesdk-libyaml-dev nativesdk-ncurses-li=
bncursesw nativesdk-openocd-stm32mp nativesdk-openssl-dev nativesdk-optee-s=
dk nativesdk-packagegroup-sdk-host nativesdk-perl-module-encode nativesdk-p=
erl-module-encode-encoding nativesdk-perl-module-encode-mime-header natives=
dk-perl-module-file-spec-functions nativesdk-perl-module-integer nativesdk-=
perl-module-pod-text nativesdk-perl-module-term-ansicolor nativesdk-python3=
 nativesdk-python3-cffi nativesdk-python3-cryptography nativesdk-python3-de=
v nativesdk-python3-pillow nativesdk-python3-pycparser nativesdk-python3-py=
cryptodomex nativesdk-python3-pyelftools nativesdk-python3-setuptools nativ=
esdk-sdcard-raw-tools nativesdk-stm32wrapper4dbg nativesdk-svd-tools native=
sdk-swig nativesdk-u-boot-mkimage nativesdk-wayland packagegroup-cross-cana=
dian-stm32mp1' returned 1:<br />DNF version: 4.11.1<br />cachedir: /home/ma=
hendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32=
mp1-poky-linux-gnueabi/custom-image/1.0-r0/sdk/image/var/cache/dnf<br />Add=
ed oe-repo repo from /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm3=
2mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/oe-=
sdk-repo<br />User-Agent: constructed: 'libdnf (Ubuntu 20.04; generic; Linu=
x.x86_64)'<br />repo: using cache for: oe-repo<br />oe-repo: using metadata=
 from Tue 06 Aug 2024 06:12:23 PM UTC.<br />Last metadata expiration check:=
 0:00:01 ago on Thu 08 Aug 2024 06:30:38 PM UTC.<br />--&gt; Starting depen=
dency resolution<br />--&gt; Finished dependency resolution<br />Error:&nbs=
p;<br />&nbsp;Problem: conflicting requests<br />&nbsp; - nothing provides =
libpython3.6m.so.1.0()(64bit) needed by nativesdk-gcc-arm-none-eabi-11-r0.x=
86_64_nativesdk<br />(try to add '--skip-broken' to skip uninstallable pack=
ages)</div>
<div>ERROR: Logfile of failure stored in: /home/mahendra/Documents/MyWorkSp=
ace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/cu=
stom-image/1.0-r0/temp/log.do_populate_sdk.1764001<br />ERROR: Task (/home/=
mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/meta-custom/recipes-co=
re/images/custom-image.bb:do_populate_sdk) failed with exit code '1'</div>
</div>
<div>&nbsp;</div>
</blockquote>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Can any one help me here to figure-out the issue ?</div>
<div>&nbsp;</div>
<div>PS: I have already installed &nbsp;python3 python3-pip with the image.=
</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I have already added the meta-pyt=
hon layers with the image <br /><br />pl. suggest <br /><br />I have attach=
ed my custom-image.bb file here for the reference <br /><br />pl. suggest</=
div>
<div><br />Thanks,</div>
<div>Mahendra</div>

--dzZ544CFzK2xEoLenmth--

--ngGmOJJ7rVMYhHUxNUCp
Content-Type: application/octet-stream; name="custom-image.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="custom-image.bb"

U1VNTUFSWSA9ICJNaW5pbWFsIGN1c3RvbSBpbWFnZSBmb3IgU1RNMzJNUDEtREsxIGJvYXJkIgoK
QVVUSE9SPSAiTWFoZW5kcmEgU29uZGFnYXIgfCBtYWhlbmRyYXNvbmRhZ2FyMDhAZ21haWwuY29t
IgoKSU1BR0VfSU5TVEFMTCA9ICJwYWNrYWdlZ3JvdXAtY29yZS1ib290ICR7Q09SRV9JTUFHRV9F
WFRSQV9JTlNUQUxMfSIKCklNQUdFX0xJTkdVQVMgPSAiZW4tdXMiCgpMSUNFTlNFID0gIk1JVCIK
CmluaGVyaXQgY29yZS1pbWFnZQppbmhlcml0IGV4dHJhdXNlcnMKCiMgU2V0IHJvb3RmcyB0byAy
MDAgTWlCIGJ5IGRlZmF1bHQKSU1BR0VfT1ZFUkhFQURfRkFDVE9SID89ICIxLjIiCklNQUdFX1JP
T1RGU19TSVpFID89ICIyMDQ4MDAiCgpJTUFHRV9GRVRBVVJFUyArPSAic3NoLXNlcnZlci1kcm9w
YmVhciBzcGFsc2giCgpFWFRSQV9VU0VSU19QQVJBTVMgKz0gIiB1c2VyYWRkIC1tIC1zIC9iaW4v
YmFzaCAtUCAnbWFoaScgcm9vdDsiCgoKI0luc3RhbGxpbmcgdGhlIHN1cHBvcnRlZCBsaWJyYXJp
ZXMgCgpJTUFHRV9JTlNUQUxMOmFwcGVuZCA9ICIgcHl0aG9uMyBweXRob24zLXBpcCBcCiAgICAg
ICAgICAgICAgICAgICAgICAgICB1c2J1dGlscyBwY2l1dGlscyBcCiAgICAgICAgICAgICAgICAg
ICAgICAgICB1dGlsLWxpbnV4IFwKICAgICAgICAgICAgICAgICAgICAgICAgIGRyb3BiZWFyIFwK
ICAgICAgICAgICAgICAgICAgICAgICAgIGhlbGxvLXdvcmxkIFwKICAgICAgICAgICAgICAgICAg
ICAgICAgIGhlbGxvLXRlc3QgICBcCiAgICAgICAgICAgICAgICAgICAgICAgICBoZWxsby1tb2Qg
XAogICAgICAgICAgICAgICAgICAgICAgICAgbXltYWtlICAgIFwKICAgICAgICAgICAgICAgICAg
ICAgICAgIG1vZHVsZS1pbml0LXRvb2xzIFwKICAgICAgICAgICAgICAgICAgICAgICAgICIKCgoK
CiMgQWRkaW5nIEJsdWV0b290aCBTdXBwb3J0IApJTUFHRV9JTlNUQUxMOmFwcGVuZCA9ICIgXAog
ICAgICAgIGRidXMgXAogICAgICAgIGJsdWV6NSBcCiAgICAgICAgcGFja2FnZWdyb3VwLXRvb2xz
LWJsdWV0b290aCBcCiAgICAgICAgZXhwYXQgXAoiCkRJU1RST19GRUFUVVJFUzphcHBlbmQgPSAi
IFwKICAgICAgIGJsdWV0b290aCBcIAoiCiMgRHJpdmVycyBmb3IgdGhlIFRQTC1MaW5rIEJsdWV0
b290aCBkb25nbGUgCiNJTUFHRV9JTlNUQUxMICs9ICJsaW51eC1maXJtd2FyZS1ydGw4NzYxYl9m
dyIKI0lNQUdFX0lOU1RBTEwgKz0gImxpbnV4LWZpcm13YXJlLXJ0bDg3NjFiX2NvbmZpZyIKI0lN
QUdFX0lOU1RBTEwgKz0gImxpbnV4LWZpcm13YXJlLXJ0bDgxODhldWZ3IgoKCiMgQWRkIGtlcm5l
bCBtb2R1bGUgZm9yIFVTQiBXaUZpIGRyaXZlcgpJTUFHRV9JTlNUQUxMICs9ICJrZXJuZWwtbW9k
dWxlLXI4MTg4ZXUgXAogICAgICAgICAgICAgICAgICBsaW51eC1maXJtd2FyZS1ydGw4MTg4IFwK
ICAgICAgICAgICAgICAgICAgaXcgXAogICAgICAgICAgICAgICAgICB3cGEtc3VwcGxpY2FudCBc
CiAgICAgICAgICAgICAgICAgIHdpcmVsZXNzLXJlZ2RiLXN0YXRpYyIKCgojIEF1dG9sb2FkIFdp
RmkgZHJpdmVyIG9uIGJvb3QgKGZvciB0aGUgTG9kYWJsZSBrZXJuZWwgbW9kdWxlKQpLRVJORUxf
TU9EVUxFX0FVVE9MT0FEICs9ICJyODE4OGV1IgoKSU1BR0VfRkVBVFVSRSArPSAic3BhbHNoIgpD
T1JFX0lNQUdFX0VYVFJBX0lOU1RBTEwgKz0gIiBpMmMtdG9vbHMiCgoKVE9PTENIQUlOX0hPU1Rf
VEFTSzphcHBlbmQgPSAiIG5hdGl2ZXNkay1weXRob24zIgpUT09MQ0hBSU5fVEFSR0VUX1RBU0s6
YXBwZW5kID0gIiBsaWJjLXN0YXRpY2RldiIK

--ngGmOJJ7rVMYhHUxNUCp--

