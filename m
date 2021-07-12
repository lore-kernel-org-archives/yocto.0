Subject: wic automount of a data partition #zeus
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Jul 2021 12:42:46 -0700
Message-ID: <jOHo.1626118966853028449.EQN7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7pXeG41gvDp2jFeoJNG3"

--7pXeG41gvDp2jFeoJNG3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Zeus.=C2=A0 I'm trying to create and mount a data partition using=
 wic.=C2=A0 My wks file is

part u-boot --source rawcopy --sourceparams=3D"file=3Du-boot.imx" --ondisk=
 mmc --no-table --align 1
part /boot --source bootimg-partition --ondisk mmc --fstype=3Dvfat --label=
 bootA --active --align 4096 --size 20
part / --source rootfs --ondisk mmc --fstype=3Dext4 --label rootfsA --alig=
n 4096 --size 4096
part /boot --source bootimg-partition --ondisk mmc --fstype=3Dvfat --label=
 bootB --size 20
part / --source rootfs --ondisk mmc --fstype=3Dext4 --label rootfsB --alig=
n 4096 --size 4096
part /data --ondisk mmc --fstype=3Dext4 --fsoptions=3D"defaults" --label d=
ata --align 4096 --size 2048
part --ondisk mmc --fstype=3Dext4 --label recovery --align 4096 --size 102=
4

This creates the data on partition 6 but does not mount create the /data d=
irectory nor mount the partition.
If I manually create /data and manually modify the /etc/fstab file everyth=
ing works.

Any suggestions for fixing the wks file?

Thanks

Gary

--7pXeG41gvDp2jFeoJNG3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Zeus.&nbsp; I'm trying to create and mount a data partition using=
 wic.&nbsp; My wks file is<br /><br />part u-boot --source rawcopy --source=
params=3D"file=3Du-boot.imx" --ondisk mmc --no-table --align 1<br />part /b=
oot --source bootimg-partition --ondisk mmc --fstype=3Dvfat --label bootA -=
-active --align 4096 --size 20<br />part / --source rootfs --ondisk mmc --f=
stype=3Dext4 --label rootfsA --align 4096 --size 4096<br />part /boot --sou=
rce bootimg-partition --ondisk mmc --fstype=3Dvfat --label bootB --size 20<=
br />part / --source rootfs --ondisk mmc --fstype=3Dext4 --label rootfsB --=
align 4096 --size 4096<br />part /data --ondisk mmc --fstype=3Dext4 --fsopt=
ions=3D"defaults" --label data --align 4096 --size 2048<br />part --ondisk =
mmc --fstype=3Dext4 --label recovery --align 4096 --size 1024<br /><br />Th=
is creates the data on partition 6 but does not mount create the /data dire=
ctory nor mount the partition.<br />If I manually create /data and manually=
 modify the /etc/fstab file everything works.<br /><br />Any suggestions fo=
r fixing the wks file?<br /><br />Thanks<br /><br />Gary

--7pXeG41gvDp2jFeoJNG3--
