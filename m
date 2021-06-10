Subject: How to create swap partition ?
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Jun 2021 06:25:25 -0700
Message-ID: <ZK5c.1623331525171605692.Jrg2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RxfyWwfVxmgQXQ6nBKcd"

--RxfyWwfVxmgQXQ6nBKcd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

When I run : (bitbake -e | grep ^WKS_FILE=3D) I get:
>=20
> WKS_FILE=3D"imx-imx-boot-bootpart.wks.in"

Here is the content:

>=20
> part u-boot --source rawcopy --sourceparams=3D"file=3Dimx-boot" --ondisk
> mmcblk --no-table --align ${IMX_BOOT_SEEK}
> part /boot --source bootimg-partition --ondisk mmcblk --fstype=3Dvfat
> --label boot --active --align 8192 --size 64
> part / --source rootfs --ondisk mmcblk --fstype=3Dext4 --label root --al=
ign
> 8192
>=20
> bootloader --ptable msdos
>=20

What to add here in order to create a swap partition with size 2G.

Thanks for the help.
Talel

--RxfyWwfVxmgQXQ6nBKcd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />When I run : (bitbake -e | grep ^WKS_FILE=3D) I get:&nbs=
p;
<blockquote>WKS_FILE=3D"imx-imx-boot-bootpart.wks.in"</blockquote>
<br />Here is the content:<br /><br />
<blockquote>
<div>part u-boot --source rawcopy --sourceparams=3D"file=3Dimx-boot" --ond=
isk mmcblk --no-table --align ${IMX_BOOT_SEEK}</div>
<div>part /boot --source bootimg-partition --ondisk mmcblk --fstype=3Dvfat=
 --label boot --active --align 8192 --size 64</div>
<div>part / --source rootfs --ondisk mmcblk --fstype=3Dext4 --label root -=
-align 8192</div>
<div>&nbsp;</div>
<div>bootloader --ptable msdos</div>
</blockquote>
What to add here in order to create a swap partition with size 2G.<br /><b=
r />Thanks for the help.<br />Talel<br /><br /><br />

--RxfyWwfVxmgQXQ6nBKcd--
