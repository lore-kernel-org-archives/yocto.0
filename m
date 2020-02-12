Subject: #yocto update the kernel with a rauc bundle
To: yocto@lists.yoctoproject.org
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
X-Originating-Location: Staufenberg, Lower Saxony, DE (5.10.161.194)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 09:54:25 -0800
Message-ID: <bn8g.1581530065985258371.N1t8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qhoaGS3jc0cxGciQEpis"

--qhoaGS3jc0cxGciQEpis
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

i have a working configuration with images and rauc bundles. My problem is=
 that kernel and devicetree are located outside the rootfs and so a bundle =
update never includes these.
My image.wks looks this:
part BAREBOX --source rawcopy --sourceparams=3D"file=3Dbarebox.bin,skip=3D=
1024" --ondisk mmc --no-table --align 1
part=C2=A0 =C2=A0--source bootimg-partition --fstype=3Dvfat --label boot -=
-ondisk mmc --active --align 4096 --size 20
part / --source rootfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --fstype=
=3Dext4 --label rootA --ondisk mmc --align 1024 --use-uuid --fixed-size 70=
0
part / --source rootfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --fstype=
=3Dext4 --label rootB --ondisk mmc --align 1024 --use-uuid --fixed-size 70=
0

How do i move kernel and devicetree into /boot?

Any help would be greatly appreciated. Thank you

hu

--qhoaGS3jc0cxGciQEpis
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />i have a working configuration with images and rauc bundles.=
 My problem is that kernel and devicetree are located outside the rootfs an=
d so a bundle update never includes these.<br />
<div>My image.wks looks this:<br />
<div>part BAREBOX --source rawcopy --sourceparams=3D"file=3Dbarebox.bin,sk=
ip=3D1024" --ondisk mmc --no-table --align 1</div>
<div>part&nbsp; &nbsp;--source bootimg-partition --fstype=3Dvfat --label b=
oot --ondisk mmc --active --align 4096 --size 20</div>
<div>part / --source rootfs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --fst=
ype=3Dext4 --label rootA --ondisk mmc --align 1024 --use-uuid --fixed-size =
700</div>
<div>part / --source rootfs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --fst=
ype=3Dext4 --label rootB --ondisk mmc --align 1024 --use-uuid --fixed-size =
700</div>
<div><br />How do i move kernel and devicetree into /boot?&nbsp;<br /><br =
/>Any help would be greatly appreciated. Thank you&nbsp;<br /><br />hu</div=
>
</div>
<div>&nbsp;</div>

--qhoaGS3jc0cxGciQEpis--
