Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8C1C531DF
	for <webhook@archiver.kernel.org>; Sat, 17 Aug 2024 20:09:14 +0000 (UTC)
Subject: Custom package and splitting issue with the kirkstone 
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Surat, Gujarat, IN (103.240.78.159)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 17 Aug 2024 13:09:10 -0700
Message-ID: <rQ2Y.1723925350713175612.bBia@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TrJ9EUhQiZ6gVJCQzGv8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Aug 2024 20:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63717

--TrJ9EUhQiZ6gVJCQzGv8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.. there
Hope all are doing well

I'm new bie with the Yocto
Currently dealing with the *Yocto kirkstone*

*The intention is to split the custom package and installing the readm.txt =
file with the same with using FILES and PACKAGES variable*

this is how i wrote the recipe

>=20
> DESCRIPTION =3D "Yocto recipe to create the custom package and copying
> readme.txt in it"
> SUMMARY =3D "${DESCRIPTION}"
> AUTHOR =3D "Mahendra Sondagar (mahendrasondagar08@gmail.com)"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"
> SRC_URI =3D "file://readme.txt"
> S =3D "${WORKDIR}"
> # Specify the custom package name
> PACKAGES =3D "${PN} ${PN}-test"
> # Define the installation steps
> do_install() {
> install -d ${D}${datadir}/mydir
> install -m 0644 readme.txt ${D}${datadir}/mydir
> }
> # Ensure the files are split correctly between packages
> FILES:${PN} +=3D "${datadir}/mydir/readme.txt"
> FILES:${PN}-test +=3D "${datadir}/mydir/readme.txt"
>=20

>=20
> As you can see above ${PN}-test is my custom package, in which i need to
> install the readme.txt
>=20

I'm able to build the recipe, however while building the custom image, it's=
 causing the below errors

ERROR: custom-image-1.0-r0 do_rootfs: Could not invoke dnf. Command '/home/=
mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm=
32mp1-poky-linux-gnueabi/custom-image/1.0-r0/recipe-sysroot-native/usr/bin/=
dnf -v --rpmverbosity=3Dinfo -y -c /home/mahendra/Documents/MyWorkSpace/my-=
git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-im=
age/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/mahendra/Doc=
uments/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-l=
inux-gnueabi/custom-image/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/ho=
me/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/=
stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/rootfs --setopt=3Dlogdir=3D=
/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/wo=
rk/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/temp --repofrompath=3Doe=
-repo,/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/=
tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/oe-rootfs-repo --n=
ogpgcheck install base-passwd bluez5 dbus dropbear expat hello-mod hello-te=
st hello-world i2c-tools iw kernel-module-r8188eu linux-firmware-rtl8188 mo=
dule-init-tools mygit mymake mypackages mypackages-doc mypackages2 mypackag=
es2-test packagegroup-core-boot packagegroup-tools-bluetooth pciutils pytho=
n3 python3-pip run-postinsts shadow usbutils util-linux wireless-regdb-stat=
ic wpa-supplicant locale-base-en-us' returned 1:
DNF version: 4.11.1
cachedir: /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-=
mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/rootfs/var/cac=
he/dnf
Added oe-repo repo from /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-s=
tm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/=
oe-rootfs-repo
User-Agent: falling back to 'libdnf': could not detect OS or basearch
repo: using cache for: oe-repo
oe-repo: using metadata from Sat 17 Aug 2024 07:21:34 PM UTC.
Last metadata expiration check: 0:00:01 ago on Sat 17 Aug 2024 08:03:00 PM =
UTC.
No match for argument: mypackages2-test
Error: Unable to find a match: mypackages2-test
DEBUG: custom-image-1.0-r0 do_rootfs: Python function do_rootfs finished
ERROR: Logfile of failure stored in: /home/mahendra/Documents/MyWorkSpace/m=
y-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-=
image/1.0-r0/temp/log.do_rootfs.52022
ERROR: Task (/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/met=
a-custom/recipes-core/images/custom-image.bb:do_rootfs) failed with exit co=
de '1'

*This states "mypackages2-test". However, i have already installed mypackag=
e2-test with the image*

*For the further debugging, i have confirmed from the WORKDIR that the read=
me.txt is not getting copied in to the mypackages2-test package*
here are the=C2=A0 logs

tree packages-split/

packages-split/
=E2=94=9C=E2=94=80=E2=94=80 mypackages2
=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 share
=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 my=
dir
=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 readme.txt
=E2=94=9C=E2=94=80=E2=94=80 mypackages2-src
=E2=94=94=E2=94=80=E2=94=80 mypackages2-test

Can anyone help me here ?
Thanks in advance

Regards,
Mahendra

--TrJ9EUhQiZ6gVJCQzGv8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi.. there <br />Hope all are doing well</div>
<div>&nbsp;</div>
<div>I'm new bie with the Yocto</div>
<div>Currently dealing with the <strong>Yocto kirkstone</strong> <br /><br =
/><strong>The intention is to split the custom package and installing the r=
eadm.txt file with the same with using FILES and PACKAGES variable </strong=
><br /><br />this is how i wrote the recipe</div>
<div>&nbsp;</div>
<blockquote>
<div>
<div>DESCRIPTION =3D "Yocto recipe to create the custom package and copying=
 readme.txt in it"</div>
<div>SUMMARY =3D "${DESCRIPTION}"</div>
<div>AUTHOR =3D "Mahendra Sondagar (mahendrasondagar08@gmail.com)"</div>
<div>LICENSE =3D "MIT"<br />LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_D=
IR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"</div>
<div>SRC_URI =3D "file://readme.txt"</div>
<div>S =3D "${WORKDIR}"</div>
<div># Specify the custom package name<br />PACKAGES =3D "${PN} ${PN}-test"=
</div>
<div># Define the installation steps<br />do_install() {<br />&nbsp; &nbsp;=
 install -d ${D}${datadir}/mydir<br />&nbsp; &nbsp; install -m 0644 readme.=
txt ${D}${datadir}/mydir<br />}</div>
<div># Ensure the files are split correctly between packages<br />FILES:${P=
N} +=3D "${datadir}/mydir/readme.txt"<br />FILES:${PN}-test +=3D "${datadir=
}/mydir/readme.txt"</div>
</div>
</blockquote>
<div><br /><br /></div>
<blockquote>
<div>
<div>As you can see above ${PN}-test is my custom package, in which i need =
to install the readme.txt</div>
</div>
</blockquote>
<div><br />I'm able to build the recipe, however while building the custom =
image, it's causing the below errors<br /><br />
<div>ERROR: custom-image-1.0-r0 do_rootfs: Could not invoke dnf. Command '/=
home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/wor=
k/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/recipe-sysroot-native/usr=
/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/mahendra/Documents/MyWorkSpac=
e/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/cust=
om-image/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/mahendr=
a/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-p=
oky-linux-gnueabi/custom-image/1.0-r0/rootfs/etc/yum.repos.d --installroot=
=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp=
/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/rootfs --setopt=3Dlog=
dir=3D/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/=
tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/temp --repofrompat=
h=3Doe-repo,/home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/buil=
d-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/oe-rootfs-re=
po --nogpgcheck install base-passwd bluez5 dbus dropbear expat hello-mod he=
llo-test hello-world i2c-tools iw kernel-module-r8188eu linux-firmware-rtl8=
188 module-init-tools mygit mymake mypackages mypackages-doc mypackages2 my=
packages2-test packagegroup-core-boot packagegroup-tools-bluetooth pciutils=
 python3 python3-pip run-postinsts shadow usbutils util-linux wireless-regd=
b-static wpa-supplicant locale-base-en-us' returned 1:<br />DNF version: 4.=
11.1<br />cachedir: /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32=
mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/root=
fs/var/cache/dnf<br />Added oe-repo repo from /home/mahendra/Documents/MyWo=
rkSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueab=
i/custom-image/1.0-r0/oe-rootfs-repo<br />User-Agent: falling back to 'libd=
nf': could not detect OS or basearch<br />repo: using cache for: oe-repo<br=
 />oe-repo: using metadata from Sat 17 Aug 2024 07:21:34 PM UTC.<br />Last =
metadata expiration check: 0:00:01 ago on Sat 17 Aug 2024 08:03:00 PM UTC.<=
br />No match for argument: mypackages2-test<br />Error: Unable to find a m=
atch: mypackages2-test</div>
<div>DEBUG: custom-image-1.0-r0 do_rootfs: Python function do_rootfs finish=
ed<br />ERROR: Logfile of failure stored in: /home/mahendra/Documents/MyWor=
kSpace/my-git/Yocto-stm32mp1/build-mp1/tmp/work/stm32mp1-poky-linux-gnueabi=
/custom-image/1.0-r0/temp/log.do_rootfs.52022<br />ERROR: Task (/home/mahen=
dra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/meta-custom/recipes-core/im=
ages/custom-image.bb:do_rootfs) failed with exit code '1'<br /><br /><br />=
<br /><strong>This states "mypackages2-test". However, i have already insta=
lled mypackage2-test with the image </strong></div>
<br /><br /><strong>For the further debugging, i have confirmed from the WO=
RKDIR that the readme.txt is not getting copied in to the mypackages2-test =
package </strong><br />here are the&nbsp; logs <br /><br />tree packages-sp=
lit/<br /><br />packages-split/<br />=E2=94=9C=E2=94=80=E2=94=80 mypackages=
2<br />=E2=94=82 &nbsp; =E2=94=94=E2=94=80=E2=94=80 usr<br />=E2=94=82 &nbs=
p; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 share<br />=E2=94=82 &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 mydir<br />=E2=94=82 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=
=80 readme.txt<br />=E2=94=9C=E2=94=80=E2=94=80 mypackages2-src<br />=E2=94=
=94=E2=94=80=E2=94=80 mypackages2-test<br /><br />Can anyone help me here ?=
<br />Thanks in advance <br /><br />Regards,</div>
<div>Mahendra</div>

--TrJ9EUhQiZ6gVJCQzGv8--

