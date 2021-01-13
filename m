Subject: Re: #vmdk #hddimg #iso with #dunfell
To: yocto@lists.yoctoproject.org
From: chruetli@gmx.net
X-Originating-Location: Niederhasli, Zurich, CH (81.6.59.197)
X-Originating-Platform: Windows Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Jan 2021 00:26:26 -0800
References: <12734.1610514618956248879@lists.yoctoproject.org>
In-Reply-To: <12734.1610514618956248879@lists.yoctoproject.org>
Message-ID: <6947.1610526386066301523@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f0qBGl6wQNbWakl1DvER"

--f0qBGl6wQNbWakl1DvER
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I messed it up, this relates to:

https://lists.yoctoproject.org/g/yocto/message/51705

>=20
>=20
>=20
> I switched from warrior to dunfell and want to build an image for Oracle=
s
> VirtualBox VM.
> On warrior there was 'automatically' a hddimg generated on dunfell this =
is
> no longer the case. The IMAGE_FSTYPES has to by specified, I use:
> WKS_FILE =3D "virtualbox.wks"
> IMAGE_FSTYPES +=3D "wic.vmdk"
>=20
> This requires me to write an wks file for which I use:
> part /boot --source bootimg-pcbios --ondisk sda --label boot --active
> --align 1024
> part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform --a=
lign
> 1024
> bootloader --ptable gpt=C2=A0 --timeout=3D5=C2=A0 --append=3D"rootfstype=
=
=3Dext4
> video=3Dvesafb vga=3Dcurrent console=3Dtty0"
>=20
> With these settings I get an vmdk image but it fails to boot. I get a "V=
FS
> Unable to mount root fs on unknown block(0,0)" dump.
>=20
> Any ideas?
>=20
>

--f0qBGl6wQNbWakl1DvER
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I messed it up, this relates to:</p>
<p><a href=3D"https://lists.yoctoproject.org/g/yocto/message/51705" target=
=
=3D"_blank" rel=3D"noopener">https://lists.yoctoproject.org/g/yocto/messag=
e/51705</a></p>
<blockquote>
<p><span id=3D"main">I switched from warrior to dunfell and want to build =
an image for Oracles VirtualBox VM.<br />On warrior there was 'automaticall=
y' a hddimg generated on dunfell this is no longer the case. The IMAGE_FSTY=
PES has to by specified, I use:<br />WKS_FILE =3D "virtualbox.wks"<br />IMA=
GE_FSTYPES +=3D "wic.vmdk"<br /><br />This requires me to write an wks file=
 for which I use:<br />part /boot --source bootimg-pcbios --ondisk sda --la=
bel boot --active --align 1024<br />part / --source rootfs --ondisk sda --f=
stype=3Dext4 --label platform --align 1024<br />bootloader --ptable gpt&nbs=
p; --timeout=3D5&nbsp; --append=3D"rootfstype=3Dext4 video=3Dvesafb vga=3Dc=
urrent console=3Dtty0"<br /><br />With these settings I get an vmdk image b=
ut it fails to boot. I get a "VFS Unable to mount root fs on unknown block(=
0,0)" dump.<br /><br />Any ideas?</span></p>
</blockquote>

--f0qBGl6wQNbWakl1DvER--
