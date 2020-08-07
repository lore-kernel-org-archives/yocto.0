Subject: Difference in setting IMAGE_ROOTFS_SIZE in local.conf vs size in wks file?
To: yocto@lists.yoctoproject.org
From: amodamatya@gmail.com
X-Originating-Location: Hamburg, DE (217.91.71.16)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Aug 2020 04:55:04 -0700
Message-ID: <juSi.1596801304147204357.627p@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fK9MozIWERxYHxGrkIEk"

--fK9MozIWERxYHxGrkIEk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am having confusion in understanding the exact difference between setting=
 IMAGE_ROOTFS_SIZE in local.conf and setting size in wks file for rootfs. I=
f I have to create two rootfs partitions of 1GB, isn't setting IMAGE_ROOTFS=
_SIZE =3D "1048756" enough? Yes obviously, I need to create two rootfs in w=
ks file in this way, just confused about the size parameter.

>=20
> part --align 4 --fixed-size 1 --no-table
> part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat
> --label boot --active --align 4 --size 60
> part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label A --alig=
n 4
> --use-uuid --size
> part --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label B --align =
4
> --use-uuid --size
> part /data --ondisk mmcblk0 --fstype=3Dext4 --label data --size 128 --al=
ign
> 4 --extra-space 0
>

--fK9MozIWERxYHxGrkIEk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #242729; font-family: Arial, 'Helvetica Neue', Helvet=
ica, sans-serif; font-size: 15px; background-color: #fdf3f4;">I am having c=
onfusion in understanding the exact difference between setting IMAGE_ROOTFS=
_SIZE in local.conf and setting size in wks file for rootfs. If I have to c=
reate two rootfs partitions of 1GB, isn't setting IMAGE_ROOTFS_SIZE =3D "10=
48756" enough? Yes obviously, I need to create two rootfs in wks file in th=
is way, just confused about the size parameter.</span><br />
<blockquote>
<div>part --align 4 --fixed-size 1 --no-table</div>
<div>part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfa=
t --label boot --active --align 4 --size 60</div>
<div>part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label A --a=
lign 4 --use-uuid --size</div>
<div>part --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label B --ali=
gn 4 --use-uuid --size&nbsp;</div>
<div>part /data --ondisk mmcblk0 --fstype=3Dext4 --label data --size 128 -=
-align 4 --extra-space 0&nbsp;</div>
</blockquote>

--fK9MozIWERxYHxGrkIEk--
