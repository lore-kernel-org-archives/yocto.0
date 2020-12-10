Subject: #vmdk with #dunfell
To: yocto@lists.yoctoproject.org
From: chruetli@gmx.net
X-Originating-Location: Zurich, CH (178.38.93.55)
X-Originating-Platform: Windows Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Dec 2020 05:18:17 -0800
Message-ID: <v0SD.1607606297266017770.G9ej@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="R6uGrv2VgOnAW5jAnn2Q"

--R6uGrv2VgOnAW5jAnn2Q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I switched from warrior to dunfell and want to build an image for Oracles =
VirtualBox VM.
On warrior there was 'automatically' a hddimg generated on dunfell this is=
 no longer the case. The IMAGE_FSTYPES has to by specified, I use:
WKS_FILE =3D "virtualbox.wks"
IMAGE_FSTYPES +=3D "wic.vmdk"

This requires me to write an wks file for which I use:
part /boot --source bootimg-pcbios --ondisk sda --label boot --active --al=
ign 1024
part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform --ali=
gn 1024
bootloader --ptable gpt=C2=A0 --timeout=3D5=C2=A0 --append=3D"rootfstype=
=3Dext4 video=3Dvesafb vga=3Dcurrent console=3Dtty0"

With these settings I get an vmdk image but it fails to boot. I get a "VFS=
 Unable to mount root fs on unknown block(0,0)" dump.

Any ideas?

--R6uGrv2VgOnAW5jAnn2Q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I switched from warrior to dunfell and want to build an imag=
e for Oracles VirtualBox VM.<br />On warrior there was 'automatically' a hd=
dimg generated on dunfell this is no longer the case. The IMAGE_FSTYPES has=
 to by specified, I use:<br />WKS_FILE =3D "virtualbox.wks"<br />IMAGE_FSTY=
PES +=3D "wic.vmdk"<br /><br />This requires me to write an wks file for wh=
ich I use:<br />part /boot --source bootimg-pcbios --ondisk sda --label boo=
t --active --align 1024<br />part / --source rootfs --ondisk sda --fstype=
=3Dext4 --label platform --align 1024<br />bootloader --ptable gpt&nbsp; -=
-timeout=3D5&nbsp; --append=3D"rootfstype=3Dext4 video=3Dvesafb vga=3Dcurre=
nt console=3Dtty0"<br /><br />With these settings I get an vmdk image but i=
t fails to boot. I get a "VFS Unable to mount root fs on unknown block(0,0)=
" dump.<br /><br />Any ideas?

--R6uGrv2VgOnAW5jAnn2Q--
