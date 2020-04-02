Subject: initramfs with mdev: No match for argument: busybox-mdev
To: yocto@lists.yoctoproject.org
From: y1dekel@gmail.com
X-Originating-Location: Herzliya, Tel Aviv, IL (93.172.59.81)
X-Originating-Platform: Linux Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Apr 2020 03:08:50 -0700
Message-ID: <cMI8.1585822130572319291.TJnH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xmSFqbCVBNzU8hchakrr"

--xmSFqbCVBNzU8hchakrr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am new to yocto. I have read some messages on this forum which suggest wa=
ys to build an image with initramfs and mdev.
So far I have implemented all advises but I am getting this message:

>=20
>=20
>=20
> ERROR: image-argus-tiny-initramfs-1.0-r0 do_rootfs: Could not invoke dnf=
.
> Command
> '/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux=
-gnueabi/image-argus-tiny-initramfs/1.0-r0/recipe-sysroot-native/usr/bin/dn=
f
> -v --rpmverbosity=3Dinfo -y -c
> /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-=
gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=3Dreposdir=3D/home/ubuntu/yocto_warrior/argus-build/tmp/work/ra=
spberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/etc/=
yum.repos.d
> --installroot=3D/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberr=
ypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs
> --setopt=3Dlogdir=3D/home/ubuntu/yocto_warrior/argus-build/tmp/work/rasp=
berrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/temp
> --repofrompath=3Doe-repo,/home/ubuntu/yocto_warrior/argus-build/tmp/work=
/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/oe-rootf=
s-repo
> --nogpgcheck install base-passwd busybox busybox-mdev dropbear
> initramfs-live-boot-tiny packagegroup-core-boot run-postinsts' returned =
1:
>=20
>=20
>=20
>=20
> DNF version: 4.1.0
>=20
>=20
>=20
> cachedir:
> /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-=
gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/var/cache/dnf
>=20
>=20
>=20
>=20
> Added oe-repo repo from
> /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-=
gnueabi/image-argus-tiny-initramfs/1.0-r0/oe-rootfs-repo
>=20
>=20
>=20
>=20
> repo: using cache for: oe-repo
>=20
>=20
>=20
> not found other for:
>=20
>=20
>=20
> not found modules for:
>=20
>=20
>=20
> not found deltainfo for:
>=20
>=20
>=20
> not found updateinfo for:
>=20
>=20
>=20
> oe-repo: using metadata from Thu 02 Apr 2020 09:20:31 AM UTC.
>=20
>=20
>=20
> Last metadata expiration check: 0:00:01 ago on Thu 02 Apr 2020 09:20:36 =
AM
> UTC.
>=20
>=20
>=20
> No module defaults found
>=20
>=20
>=20
> No match for argument: busybox-mdev
>=20
>=20

I have added an mdev include fragment as follows:

>=20
>=20
> CONFIG_MDEV=3Dy
> CONFIG_FEATURE_MDEV_LOAD_FIRMWARE=3Dy
> PACKAGES =3D+ "${PN}-mdev"
> INITSCRIPT_PACKAGES =3D "${PN}-httpd ${PN}-syslog ${PN}-udhcpd ${PN}-mde=
v
> ${PN}-hwclock"
> INITSCRIPT_NAME_${PN}-mdev =3D "mdev"
> INITSCRIPT_PARAMS_${PN}-mdev =3D "start 04 S ."
> CONFFILES_${PN}-mdev =3D "${sysconfdir}/mdev.conf"
>=20

I also implemented a receipt for our image as follows:

>=20
> VIRTUAL-RUNTIME_dev_manager =3D " busybox-mdev "
> PACKAGE_INSTALL =3D "initramfs-live-boot-tiny packagegroup-core-boot
> dropbear ${VIRTUAL-RUNTIME_base-utils} ${VIRTUAL-RUNTIME_dev_manager}
> base-passwd ${ROOTFS_BOOTSTRAP_INSTALL}"
> ...
>=20

Any idea what I might be missing here?

>=20
>=20
>

--xmSFqbCVBNzU8hchakrr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I am new to yocto. I have read some messages on this forum which suggest=
 ways to build an image with initramfs and mdev.&nbsp;<br />So far I have i=
mplemented all advises but I am getting this message:</p>
<br />
<blockquote>
<p>ERROR: image-argus-tiny-initramfs-1.0-r0 do_rootfs: Could not invoke dn=
f. Command '/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-po=
ky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/recipe-sysroot-native/us=
r/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/ubuntu/yocto_warrior/argus-b=
uild/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.=
0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/ubuntu/yocto_warri=
or/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-in=
itramfs/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/home/ubuntu/yocto_wa=
rrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny=
-initramfs/1.0-r0/rootfs --setopt=3Dlogdir=3D/home/ubuntu/yocto_warrior/arg=
us-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramf=
s/1.0-r0/temp --repofrompath=3Doe-repo,/home/ubuntu/yocto_warrior/argus-bui=
ld/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-=
r0/oe-rootfs-repo --nogpgcheck install base-passwd busybox busybox-mdev dro=
pbear initramfs-live-boot-tiny packagegroup-core-boot run-postinsts' return=
ed 1:</p>
<p>DNF version: 4.1.0</p>
<p>cachedir: /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-=
poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/var/cache/dnf</=
p>
<p>Added oe-repo repo from /home/ubuntu/yocto_warrior/argus-build/tmp/work=
/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/oe-rootf=
s-repo</p>
<p>repo: using cache for: oe-repo</p>
<p>not found other for:&nbsp;</p>
<p>not found modules for:&nbsp;</p>
<p>not found deltainfo for:&nbsp;</p>
<p>not found updateinfo for:&nbsp;</p>
<p>oe-repo: using metadata from Thu 02 Apr 2020 09:20:31 AM UTC.</p>
<p>Last metadata expiration check: 0:00:01 ago on Thu 02 Apr 2020 09:20:36=
 AM UTC.</p>
<p>No module defaults found</p>
<p><span style=3D"font-weight: bold;">No match for argument: busybox-mdev<=
/span></p>
</blockquote>
<br />I have added an mdev include fragment as follows:<br />
<div>
<blockquote>
<div><br />CONFIG_MDEV=3Dy</div>
<div>CONFIG_FEATURE_MDEV_LOAD_FIRMWARE=3Dy</div>
<div>PACKAGES =3D+ "${PN}-mdev"</div>
<div>INITSCRIPT_PACKAGES =3D "${PN}-httpd ${PN}-syslog ${PN}-udhcpd ${PN}-=
mdev ${PN}-hwclock"</div>
<div>INITSCRIPT_NAME_${PN}-mdev =3D "mdev"</div>
<div>INITSCRIPT_PARAMS_${PN}-mdev =3D "start 04 S ."</div>
<div>CONFFILES_${PN}-mdev =3D "${sysconfdir}/mdev.conf"</div>
</blockquote>
I also implemented a receipt for our image as follows:<br />
<blockquote>
<div>VIRTUAL-RUNTIME_dev_manager =3D "<span style=3D"font-weight: bold;">b=
usybox-mdev</span>"</div>
<div>PACKAGE_INSTALL =3D "initramfs-live-boot-tiny packagegroup-core-boot =
dropbear ${VIRTUAL-RUNTIME_base-utils} ${VIRTUAL-RUNTIME_dev_manager} base-=
passwd ${ROOTFS_BOOTSTRAP_INSTALL}"</div>
<div>...</div>
</blockquote>
Any idea what I might be missing here?<br />
<blockquote>
<div>&nbsp;</div>
</blockquote>
</div>

--xmSFqbCVBNzU8hchakrr--
