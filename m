Subject: How can I create a truly minimal distribution that runs entirely from RAM?
To: yocto@lists.yoctoproject.org
From: p32@tuta.io
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (46.223.162.21)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Mar 2021 15:32:17 -0800
Message-ID: <2W3V.1615419137982625968.f4wK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YEYGHveOE5f9udO5YKnd"

--YEYGHveOE5f9udO5YKnd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am currently using this ( https://source.codeaurora.org/external/imx/imx=
-manifest/tree/imx-5.4.3-2.0.0.xml?h=3Dimx-linux-zeus ) Yocto-based build s=
etup provided by NXP to create a custom Linux distribution for one of the i=
.MX boards. My custom image is based on the core-image-minimal recipe and w=
orks fine, i.e., runs on the platform as expected. However, I have to follo=
wing two issues:

Although core-image-minimal is documented as "A small image just capable o=
f allowing a device to boot", I can tell from the running system that it co=
ntains a huge number of components that I think are not be strictly necessa=
ry to boot the device. For instance, the boot log contains entries about an=
 FPGA manager framework, Bluetooth, Ethernet, KVM, USB, and a lot of i.MX-s=
pecific modules such as for DMA or power management. For evaluation purpose=
s, I want to get rid of all of these and end up with a *truly* minimal Linu=
x system that is able to boot, schedule its tasks, and to communicate via U=
ART. How can I achieve this without losing the i.MX support, i.e., the gene=
ration of a bootloader and suitable device tree files?

Furthermore, I would like the minimal system to run entirely from RAM. Mor=
e specifically: After being started from the SD card, U-Boot should start t=
he Linux distribution via initramfs. I am able to generate some kind of ini=
tramfs binary using the following changes:
# local.conf
INITRAMFS_IMAGE =3D "recipe-name"
INITRAMFS_IMAGE_BUNDLE =3D "1"
# recipe-name.bb
IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
PACKAGE_INSTALL =3D "${IMAGE_INSTALL}"

However, this does not affect the generated U-Boot, which means that U-Boo=
t still tries to boot from an SD card partition. What is the "right way" to=
 make use of the Image-initramfs-board.bin or the image-board.cpio.gz files=
 that Yocto creates in this case?

Any help yould be greatly appreciated.

Kind regards!

--YEYGHveOE5f9udO5YKnd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,<br /><br />I am currently using <a href=3D"https://source.c=
odeaurora.org/external/imx/imx-manifest/tree/imx-5.4.3-2.0.0.xml?h=3Dimx-li=
nux-zeus" target=3D"_blank" rel=3D"noopener">this</a> Yocto-based build set=
up provided by NXP to create a custom Linux distribution for one of the i.M=
X boards. My custom image is based on the core-image-minimal recipe and wor=
ks fine, i.e., runs on the platform as expected. However, I have to followi=
ng two issues:<br /><br />Although core-image-minimal is documented as "A s=
mall image just capable of allowing a device to boot", I can tell from the =
running system that it contains a huge number of components that I think ar=
e not be strictly necessary to boot the device. For instance, the boot log =
contains entries about an FPGA manager framework, Bluetooth, Ethernet, KVM,=
 USB, and a lot of i.MX-specific modules such as for DMA or power managemen=
t. For evaluation purposes, I want to get rid of all of these and end up wi=
th a <strong>truly</strong> minimal Linux system that is able to boot, sche=
dule its tasks, and to communicate via UART. How can I achieve this without=
 losing the i.MX support, i.e., the generation of a bootloader and suitable=
 device tree files?<br /><br />Furthermore, I would like the minimal system=
 to run entirely from RAM. More specifically: After being started from the =
SD card, U-Boot should start the Linux distribution via initramfs. I am abl=
e to generate some kind of initramfs binary using the following changes:
<div style=3D"padding-left: 30px;"># local.conf</div>
<div style=3D"padding-left: 30px;">INITRAMFS_IMAGE =3D "recipe-name"</div>
<div style=3D"padding-left: 30px;">INITRAMFS_IMAGE_BUNDLE =3D "1"</div>
<div style=3D"padding-left: 30px;"># recipe-name.bb</div>
<div style=3D"padding-left: 30px;">IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}=
"</div>
<div style=3D"padding-left: 30px;">PACKAGE_INSTALL =3D "${IMAGE_INSTALL}"<=
/div>
<br />However, this does not affect the generated U-Boot, which means that=
 U-Boot still tries to boot from an SD card partition. What is the "right w=
ay" to make use of the Image-initramfs-board.bin or the image-board.cpio.gz=
 files that Yocto creates in this case?<br /><br />Any help yould be greatl=
y appreciated.<br /><br />Kind regards!

--YEYGHveOE5f9udO5YKnd--
