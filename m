Subject: Wic partition dir ownership #yocto
To: yocto@lists.yoctoproject.org
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
X-Originating-Location: Las Vegas, Nevada, US (72.207.140.105)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 14 May 2021 02:36:01 -0700
Message-ID: <o4Sl.1620984961241758222.Y7DA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KEHkSPyjv1YvKD40mDaN"

--KEHkSPyjv1YvKD40mDaN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm building an image for a raspberrypi 4, I have a readonly rootfs and I =
have multiple configs in a custom partition mounted in rw mode at /data
My wks file is

part --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --label b=
oot --active --align 4096 --size 100
part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_A -=
-align 4096 --overhead-factor 1
part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_B -=
-align 4096 --overhead-factor 1
part --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/data --ondisk mmcblk0 =
--fstype=3Dext4 --label data --align 1024 --size 1024

mount points for /boot and /data are skipped because I have a custom fstab=
 file because otherwise rauc bundle won't mount them.

The problem is that while the rootfs has the correct permissions:

% wic ls tmp/deploy/images/raspberrypi4/myapp-dev-image-raspberrypi4.wic:3=
/data
debugfs 1.45.7 (28-Jan-2021)
100=C2=A0 =C2=A040755 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=
=A0 =C2=A0 4096=C2=A0 9-Mar-2018 04:34 .
2=C2=A0 =C2=A040755 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =
=
=C2=A0 4096 14-May-2021 02:26 ..
101=C2=A0 =C2=A040740 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=
=A0 =C2=A0 4096=C2=A0 9-Mar-2018 04:34 dropbear
102=C2=A0 =C2=A040755 (2)=C2=A0 =C2=A01000=C2=A0 =C2=A01000=C2=A0 =C2=A0 4=
096=C2=A0 9-Mar-2018 04:34 node-red
105=C2=A0 =C2=A040740 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=
=A0 =C2=A0 4096=C2=A0 9-Mar-2018 04:34 openvpn

the partition created by wic (which should copy rootfs/data) doesn't:

alex-desktop% wic ls tmp/deploy/images/raspberrypi4/myapp-dev-image-raspbe=
rrypi4.wic:4
debugfs 1.45.7 (28-Jan-2021)
2=C2=A0 =C2=A040755 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =
=
=C2=A0 4096 14-May-2021 02:26 .
2=C2=A0 =C2=A040755 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =
=
=C2=A0 4096 14-May-2021 02:26 ..
11=C2=A0 =C2=A040700 (2)=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A016384 14-May-2021 02:26 lost+found
12=C2=A0 =C2=A040740 (2)=C2=A0 =C2=A01000=C2=A0 =C2=A01000=C2=A0 =C2=A0 40=
96=C2=A0 9-Mar-2018 04:34 dropbear
13=C2=A0 =C2=A040755 (2)=C2=A0 =C2=A01000=C2=A0 =C2=A01000=C2=A0 =C2=A0 40=
96=C2=A0 9-Mar-2018 04:34 node-red
16=C2=A0 =C2=A040740 (2)=C2=A0 =C2=A01000=C2=A0 =C2=A01000=C2=A0 =C2=A0 40=
96=C2=A0 9-Mar-2018 04:34 openvpn

where is this difference coming from? Isn't possible for wic to maintain t=
he same dir ownership?

Thanks

--KEHkSPyjv1YvKD40mDaN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I'm building an image for a raspberrypi 4, I have a=
 readonly rootfs and I have multiple configs in a custom partition mounted =
in rw mode at /data<br />My wks file is<br /><br />
<div>part --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --la=
bel boot --active --align 4096 --size 100</div>
<div>part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootf=
s_A --align 4096 --overhead-factor 1</div>
<div>part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootf=
s_B --align 4096 --overhead-factor 1</div>
<div>part --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/data --ondisk mmc=
blk0 --fstype=3Dext4 --label data --align 1024 --size 1024</div>
<div><br />mount points for /boot and /data are skipped because I have a c=
ustom fstab file because otherwise rauc bundle won't mount them.<br /><br /=
>The problem is that while the rootfs has the correct permissions:<br /><br=
 />
<div>% wic ls tmp/deploy/images/raspberrypi4/myapp-dev-image-raspberrypi4.=
wic:3/data</div>
<div>debugfs 1.45.7 (28-Jan-2021)</div>
<div>&nbsp; &nbsp; 100&nbsp; &nbsp;40755 (2)&nbsp; &nbsp; &nbsp; 0&nbsp; &=
nbsp; &nbsp; 0&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 .</div>
<div>&nbsp; &nbsp; &nbsp; 2&nbsp; &nbsp;40755 (2)&nbsp; &nbsp; &nbsp; 0&nb=
sp; &nbsp; &nbsp; 0&nbsp; &nbsp; 4096 14-May-2021 02:26 ..</div>
<div>&nbsp; &nbsp; 101&nbsp; &nbsp;40740 (2)&nbsp; &nbsp; &nbsp; 0&nbsp; &=
nbsp; &nbsp; 0&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 dropbear</div>
<div>&nbsp; &nbsp; 102&nbsp; &nbsp;40755 (2)&nbsp; &nbsp;1000&nbsp; &nbsp;=
1000&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 node-red</div>
<div>&nbsp; &nbsp; 105&nbsp; &nbsp;40740 (2)&nbsp; &nbsp; &nbsp; 0&nbsp; &=
nbsp; &nbsp; 0&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 openvpn<br /><br />=
the partition created by wic (which should copy rootfs/data) doesn't:<br />=
<br />
<div>alex-desktop% wic ls tmp/deploy/images/raspberrypi4/myapp-dev-image-r=
aspberrypi4.wic:4&nbsp; &nbsp; &nbsp;</div>
<div>debugfs 1.45.7 (28-Jan-2021)</div>
<div>&nbsp; &nbsp; &nbsp; 2&nbsp; &nbsp;40755 (2)&nbsp; &nbsp; &nbsp; 0&nb=
sp; &nbsp; &nbsp; 0&nbsp; &nbsp; 4096 14-May-2021 02:26 .</div>
<div>&nbsp; &nbsp; &nbsp; 2&nbsp; &nbsp;40755 (2)&nbsp; &nbsp; &nbsp; 0&nb=
sp; &nbsp; &nbsp; 0&nbsp; &nbsp; 4096 14-May-2021 02:26 ..</div>
<div>&nbsp; &nbsp; &nbsp;11&nbsp; &nbsp;40700 (2)&nbsp; &nbsp; &nbsp; 0&nb=
sp; &nbsp; &nbsp; 0&nbsp; &nbsp;16384 14-May-2021 02:26 lost+found</div>
<div>&nbsp; &nbsp; &nbsp;12&nbsp; &nbsp;40740 (2)&nbsp; &nbsp;1000&nbsp; &=
nbsp;1000&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 dropbear</div>
<div>&nbsp; &nbsp; &nbsp;13&nbsp; &nbsp;40755 (2)&nbsp; &nbsp;1000&nbsp; &=
nbsp;1000&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 node-red</div>
<div>&nbsp; &nbsp; &nbsp;16&nbsp; &nbsp;40740 (2)&nbsp; &nbsp;1000&nbsp; &=
nbsp;1000&nbsp; &nbsp; 4096&nbsp; 9-Mar-2018 04:34 openvpn</div>
<div><br />where is this difference coming from? Isn't possible for wic to=
 maintain the same dir ownership?<br /><br />Thanks</div>
</div>
</div>

--KEHkSPyjv1YvKD40mDaN--
