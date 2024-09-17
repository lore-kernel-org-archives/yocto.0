Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB8C36017
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 11:32:38 +0000 (UTC)
Subject: spdx.json and spdx.index.json not generated on scarthgap
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: DE (147.161.169.103)
X-Originating-Platform: Windows Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Sep 2024 04:32:25 -0700
Message-ID: <tom5.1726572745713031235.cw6S@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QgFJQ7ODIpk6t0iNuuUP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 11:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63850

--QgFJQ7ODIpk6t0iNuuUP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

any reasons why the spdx.json and spdx.index.json files are not generated o=
n the scarthgap?
When I check out the e938b18b5342bd28eadb44ad39dbf1f5cf5be09b commit on kir=
kstone and bitbake core-image-minimal, I am getting all three spdx "files" =
in the deploy directory (spdx.json, spdx.index.json and spdx.tar.zst). See =
[1] for more info.
However, when I checkout the 703740d19f0e144d56ad000b532d92197ec8ddf1 commi=
t on scarthgap and bitbake core-image-minimal, I am only getting the spdx.t=
ar.zst file. See [2] for more info.
Any reason for such behavior?

Cheers,
Aleksandar

[1]
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 77 Sep 17 13:11 bzImage=
 -> bzImage--5.15.166+git0+567f0adb9d_a78a104311-r0-qemux86-64-202409171101=
39.bin
-rw-r--r-- 2 oganikol oganikol 10024000 Sep 17 13:11 bzImage--5.15.166+git0=
+567f0adb9d_a78a104311-r0-qemux86-64-20240917110139.bin
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 77 Sep 17 13:11 bzImage=
-qemux86-64.bin -> bzImage--5.15.166+git0+567f0adb9d_a78a104311-r0-qemux86-=
64-20240917110139.bin
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A0 1515 Sep 17 13:30 core-image-m=
inimal-qemux86-64-20240917112957.qemuboot.conf
-rw-r--r-- 2 oganikol oganikol 28121088 Sep 17 13:30 core-image-minimal-qem=
ux86-64-20240917112957.rootfs.ext4
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A0 1076 Sep 17 13:30 core-image-m=
inimal-qemux86-64-20240917112957.rootfs.manifest
-rw-r--r-- 2 oganikol oganikol 13686439 Sep 17 13:30 core-image-minimal-qem=
ux86-64-20240917112957.rootfs.tar.bz2
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A035089 Sep 17 13:30 core-image-m=
inimal-qemux86-64-20240917112957.spdx.index.json
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A029679 Sep 17 13:30 core-image-m=
inimal-qemux86-64-20240917112957.spdx.json
-rw-r--r-- 2 oganikol oganikol =C2=A0 133767 Sep 17 13:30 core-image-minima=
l-qemux86-64-20240917112957.spdx.tar.zst
-rw-r--r-- 2 oganikol oganikol =C2=A0 201975 Sep 17 13:30 core-image-minima=
l-qemux86-64-20240917112957.testdata.json
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 56 Sep 17 13:30 core-im=
age-minimal-qemux86-64.ext4 -> core-image-minimal-qemux86-64-20240917112957=
.rootfs.ext4
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 60 Sep 17 13:30 core-im=
age-minimal-qemux86-64.manifest -> core-image-minimal-qemux86-64-2024091711=
2957.rootfs.manifest
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 58 Sep 17 13:30 core-im=
age-minimal-qemux86-64.qemuboot.conf -> core-image-minimal-qemux86-64-20240=
917112957.qemuboot.conf
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 60 Sep 17 13:30 core-im=
age-minimal-qemux86-64.spdx.index.json -> core-image-minimal-qemux86-64-202=
40917112957.spdx.index.json
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 54 Sep 17 13:30 core-im=
age-minimal-qemux86-64.spdx.json -> core-image-minimal-qemux86-64-202409171=
12957.spdx.json
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 57 Sep 17 13:30 core-im=
age-minimal-qemux86-64.spdx.tar.zst -> core-image-minimal-qemux86-64-202409=
17112957.spdx.tar.zst
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 59 Sep 17 13:30 core-im=
age-minimal-qemux86-64.tar.bz2 -> core-image-minimal-qemux86-64-20240917112=
957.rootfs.tar.bz2
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 58 Sep 17 13:30 core-im=
age-minimal-qemux86-64.testdata.json -> core-image-minimal-qemux86-64-20240=
917112957.testdata.json
-rw-r--r-- 2 oganikol oganikol =C2=A08235958 Sep 17 13:11 modules--5.15.166=
+git0+567f0adb9d_a78a104311-r0-qemux86-64-20240917110139.tgz
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 77 Sep 17 13:11 modules=
-qemux86-64.tgz -> modules--5.15.166+git0+567f0adb9d_a78a104311-r0-qemux86-=
64-20240917110139.tgz

[2]
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A075 Sep 11 09:38 b=
zImage -> bzImage--6.6.35+git0+da275b53b1_f71bb11887-r0-qemux86-64-20240911=
072123.bin
-rw-r--r-- 2 oganikol oganikol =C2=A012280832 Sep 11 09:38 bzImage--6.6.35+=
git0+da275b53b1_f71bb11887-r0-qemux86-64-20240911072123.bin
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A075 Sep 11 09:38 b=
zImage-qemux86-64.bin -> bzImage--6.6.35+git0+da275b53b1_f71bb11887-r0-qemu=
x86-64-20240911072123.bin
-rw-r--r-- 2 oganikol oganikol =C2=A038727680 Sep 17 13:28 core-image-minim=
al-qemux86-64.rootfs-20240917112825.ext4
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A01242 Sep 17 13:28 core-i=
mage-minimal-qemux86-64.rootfs-20240917112825.manifest
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A01637 Sep 17 13:28 core-i=
mage-minimal-qemux86-64.rootfs-20240917112825.qemuboot.conf
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A0155346 Sep 17 13:28 core-image-=
minimal-qemux86-64.rootfs-20240917112825.spdx.tar.zst
-rw-r--r-- 2 oganikol oganikol =C2=A017948159 Sep 17 13:28 core-image-minim=
al-qemux86-64.rootfs-20240917112825.tar.bz2
-rw-r--r-- 2 oganikol oganikol =C2=A0 =C2=A0215736 Sep 17 13:28 core-image-=
minimal-qemux86-64.rootfs-20240917112825.testdata.json
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A056 Sep 17 13:28 c=
ore-image-minimal-qemux86-64.rootfs.ext4 -> core-image-minimal-qemux86-64.r=
ootfs-20240917112825.ext4
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A060 Sep 17 13:28 c=
ore-image-minimal-qemux86-64.rootfs.manifest -> core-image-minimal-qemux86-=
64.rootfs-20240917112825.manifest
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A065 Sep 17 13:28 c=
ore-image-minimal-qemux86-64.rootfs.qemuboot.conf -> core-image-minimal-qem=
ux86-64.rootfs-20240917112825.qemuboot.conf
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A064 Sep 17 13:28 c=
ore-image-minimal-qemux86-64.rootfs.spdx.tar.zst -> core-image-minimal-qemu=
x86-64.rootfs-20240917112825.spdx.tar.zst
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A059 Sep 17 13:28 c=
ore-image-minimal-qemux86-64.rootfs.tar.bz2 -> core-image-minimal-qemux86-6=
4.rootfs-20240917112825.tar.bz2
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A065 Sep 17 13:28 c=
ore-image-minimal-qemux86-64.rootfs.testdata.json -> core-image-minimal-qem=
ux86-64.rootfs-20240917112825.testdata.json
-rw-r--r-- 2 oganikol oganikol 196509271 Sep 11 09:38 modules--6.6.35+git0+=
da275b53b1_f71bb11887-r0-qemux86-64-20240911072123.tgz
lrwxrwxrwx 2 oganikol oganikol =C2=A0 =C2=A0 =C2=A0 =C2=A075 Sep 11 09:38 m=
odules-qemux86-64.tgz -> modules--6.6.35+git0+da275b53b1_f71bb11887-r0-qemu=
x86-64-20240911072123.tgz

--QgFJQ7ODIpk6t0iNuuUP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>any reasons why the spdx.json and spdx.index.json files are not genera=
ted on the scarthgap?</div>
<div>When I check out the e938b18b5342bd28eadb44ad39dbf1f5cf5be09b commit o=
n kirkstone and bitbake core-image-minimal, I am getting all three spdx "fi=
les" in the deploy directory (spdx.json, spdx.index.json and spdx.tar.zst).=
 See [1] for more info.</div>
<div>
<div>However, when I checkout the 703740d19f0e144d56ad000b532d92197ec8ddf1 =
commit on scarthgap and bitbake core-image-minimal, I am only getting the s=
pdx.tar.zst file. See [2] for more info.</div>
<div><span style=3D"background-color: var(--light-mode-body-color);">Any re=
ason for such behavior?&nbsp;</span></div>
</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Aleksandar</div>
<div>&nbsp;</div>
<div>[1]</div>
<div><span style=3D"font-family: 'courier new', courier;">lrwxrwxrwx 2 ogan=
ikol oganikol &nbsp; &nbsp; &nbsp; 77 Sep 17 13:11 bzImage -&gt; bzImage--5=
.15.166+git0+567f0adb9d_a78a104311-r0-qemux86-64-20240917110139.bin</span><=
br /><span style=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 ogan=
ikol oganikol 10024000 Sep 17 13:11 bzImage--5.15.166+git0+567f0adb9d_a78a1=
04311-r0-qemux86-64-20240917110139.bin</span><br /><span style=3D"font-fami=
ly: 'courier new', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &=
nbsp; 77 Sep 17 13:11 bzImage-qemux86-64.bin -&gt; bzImage--5.15.166+git0+5=
67f0adb9d_a78a104311-r0-qemux86-64-20240917110139.bin</span><br /><span sty=
le=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 oganikol oganikol =
&nbsp; &nbsp; 1515 Sep 17 13:30 core-image-minimal-qemux86-64-2024091711295=
7.qemuboot.conf</span><br /><span style=3D"font-family: 'courier new', cour=
ier;">-rw-r--r-- 2 oganikol oganikol 28121088 Sep 17 13:30 core-image-minim=
al-qemux86-64-20240917112957.rootfs.ext4</span><br /><span style=3D"font-fa=
mily: 'courier new', courier;">-rw-r--r-- 2 oganikol oganikol &nbsp; &nbsp;=
 1076 Sep 17 13:30 core-image-minimal-qemux86-64-20240917112957.rootfs.mani=
fest</span><br /><span style=3D"font-family: 'courier new', courier;">-rw-r=
--r-- 2 oganikol oganikol 13686439 Sep 17 13:30 core-image-minimal-qemux86-=
64-20240917112957.rootfs.tar.bz2</span><br /><span style=3D"font-family: 'c=
ourier new', courier;">-rw-r--r-- 2 oganikol oganikol &nbsp; &nbsp;35089 Se=
p 17 13:30 core-image-minimal-qemux86-64-20240917112957.spdx.index.json</sp=
an><br /><span style=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 =
oganikol oganikol &nbsp; &nbsp;29679 Sep 17 13:30 core-image-minimal-qemux8=
6-64-20240917112957.spdx.json</span><br /><span style=3D"font-family: 'cour=
ier new', courier;">-rw-r--r-- 2 oganikol oganikol &nbsp; 133767 Sep 17 13:=
30 core-image-minimal-qemux86-64-20240917112957.spdx.tar.zst</span><br /><s=
pan style=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 oganikol og=
anikol &nbsp; 201975 Sep 17 13:30 core-image-minimal-qemux86-64-20240917112=
957.testdata.json</span><br /><span style=3D"font-family: 'courier new', co=
urier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; 56 Sep 17 13:30=
 core-image-minimal-qemux86-64.ext4 -&gt; core-image-minimal-qemux86-64-202=
40917112957.rootfs.ext4</span><br /><span style=3D"font-family: 'courier ne=
w', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; 60 Sep 17=
 13:30 core-image-minimal-qemux86-64.manifest -&gt; core-image-minimal-qemu=
x86-64-20240917112957.rootfs.manifest</span><br /><span style=3D"font-famil=
y: 'courier new', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &n=
bsp; 58 Sep 17 13:30 core-image-minimal-qemux86-64.qemuboot.conf -&gt; core=
-image-minimal-qemux86-64-20240917112957.qemuboot.conf</span><br /><span st=
yle=3D"font-family: 'courier new', courier;">lrwxrwxrwx 2 oganikol oganikol=
 &nbsp; &nbsp; &nbsp; 60 Sep 17 13:30 core-image-minimal-qemux86-64.spdx.in=
dex.json -&gt; core-image-minimal-qemux86-64-20240917112957.spdx.index.json=
</span><br /><span style=3D"font-family: 'courier new', courier;">lrwxrwxrw=
x 2 oganikol oganikol &nbsp; &nbsp; &nbsp; 54 Sep 17 13:30 core-image-minim=
al-qemux86-64.spdx.json -&gt; core-image-minimal-qemux86-64-20240917112957.=
spdx.json</span><br /><span style=3D"font-family: 'courier new', courier;">=
lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; 57 Sep 17 13:30 core-im=
age-minimal-qemux86-64.spdx.tar.zst -&gt; core-image-minimal-qemux86-64-202=
40917112957.spdx.tar.zst</span><br /><span style=3D"font-family: 'courier n=
ew', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; 59 Sep 1=
7 13:30 core-image-minimal-qemux86-64.tar.bz2 -&gt; core-image-minimal-qemu=
x86-64-20240917112957.rootfs.tar.bz2</span><br /><span style=3D"font-family=
: 'courier new', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nb=
sp; 58 Sep 17 13:30 core-image-minimal-qemux86-64.testdata.json -&gt; core-=
image-minimal-qemux86-64-20240917112957.testdata.json</span><br /><span sty=
le=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 oganikol oganikol =
&nbsp;8235958 Sep 17 13:11 modules--5.15.166+git0+567f0adb9d_a78a104311-r0-=
qemux86-64-20240917110139.tgz</span><br /><span style=3D"font-family: 'cour=
ier new', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; 77 =
Sep 17 13:11 modules-qemux86-64.tgz -&gt; modules--5.15.166+git0+567f0adb9d=
_a78a104311-r0-qemux86-64-20240917110139.tgz</span></div>
<div>&nbsp;</div>
<div>[2]</div>
<div><span style=3D"font-family: 'courier new', courier;">lrwxrwxrwx 2 ogan=
ikol oganikol &nbsp; &nbsp; &nbsp; &nbsp;75 Sep 11 09:38 bzImage -&gt; bzIm=
age--6.6.35+git0+da275b53b1_f71bb11887-r0-qemux86-64-20240911072123.bin</sp=
an><br /><span style=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 =
oganikol oganikol &nbsp;12280832 Sep 11 09:38 bzImage--6.6.35+git0+da275b53=
b1_f71bb11887-r0-qemux86-64-20240911072123.bin</span><br /><span style=3D"f=
ont-family: 'courier new', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; =
&nbsp; &nbsp; &nbsp;75 Sep 11 09:38 bzImage-qemux86-64.bin -&gt; bzImage--6=
.6.35+git0+da275b53b1_f71bb11887-r0-qemux86-64-20240911072123.bin</span><br=
 /><span style=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 oganik=
ol oganikol &nbsp;38727680 Sep 17 13:28 core-image-minimal-qemux86-64.rootf=
s-20240917112825.ext4</span><br /><span style=3D"font-family: 'courier new'=
, courier;">-rw-r--r-- 2 oganikol oganikol &nbsp; &nbsp; &nbsp;1242 Sep 17 =
13:28 core-image-minimal-qemux86-64.rootfs-20240917112825.manifest</span><b=
r /><span style=3D"font-family: 'courier new', courier;">-rw-r--r-- 2 ogani=
kol oganikol &nbsp; &nbsp; &nbsp;1637 Sep 17 13:28 core-image-minimal-qemux=
86-64.rootfs-20240917112825.qemuboot.conf</span><br /><span style=3D"font-f=
amily: 'courier new', courier;">-rw-r--r-- 2 oganikol oganikol &nbsp; &nbsp=
;155346 Sep 17 13:28 core-image-minimal-qemux86-64.rootfs-20240917112825.sp=
dx.tar.zst</span><br /><span style=3D"font-family: 'courier new', courier;"=
>-rw-r--r-- 2 oganikol oganikol &nbsp;17948159 Sep 17 13:28 core-image-mini=
mal-qemux86-64.rootfs-20240917112825.tar.bz2</span><br /><span style=3D"fon=
t-family: 'courier new', courier;">-rw-r--r-- 2 oganikol oganikol &nbsp; &n=
bsp;215736 Sep 17 13:28 core-image-minimal-qemux86-64.rootfs-20240917112825=
.testdata.json</span><br /><span style=3D"font-family: 'courier new', couri=
er;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; &nbsp;56 Sep 17 13=
:28 core-image-minimal-qemux86-64.rootfs.ext4 -&gt; core-image-minimal-qemu=
x86-64.rootfs-20240917112825.ext4</span><br /><span style=3D"font-family: '=
courier new', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp;=
 &nbsp;60 Sep 17 13:28 core-image-minimal-qemux86-64.rootfs.manifest -&gt; =
core-image-minimal-qemux86-64.rootfs-20240917112825.manifest</span><br /><s=
pan style=3D"font-family: 'courier new', courier;">lrwxrwxrwx 2 oganikol og=
anikol &nbsp; &nbsp; &nbsp; &nbsp;65 Sep 17 13:28 core-image-minimal-qemux8=
6-64.rootfs.qemuboot.conf -&gt; core-image-minimal-qemux86-64.rootfs-202409=
17112825.qemuboot.conf</span><br /><span style=3D"font-family: 'courier new=
', courier;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; &nbsp;64 S=
ep 17 13:28 core-image-minimal-qemux86-64.rootfs.spdx.tar.zst -&gt; core-im=
age-minimal-qemux86-64.rootfs-20240917112825.spdx.tar.zst</span><br /><span=
 style=3D"font-family: 'courier new', courier;">lrwxrwxrwx 2 oganikol ogani=
kol &nbsp; &nbsp; &nbsp; &nbsp;59 Sep 17 13:28 core-image-minimal-qemux86-6=
4.rootfs.tar.bz2 -&gt; core-image-minimal-qemux86-64.rootfs-20240917112825.=
tar.bz2</span><br /><span style=3D"font-family: 'courier new', courier;">lr=
wxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; &nbsp;65 Sep 17 13:28 cor=
e-image-minimal-qemux86-64.rootfs.testdata.json -&gt; core-image-minimal-qe=
mux86-64.rootfs-20240917112825.testdata.json</span><br /><span style=3D"fon=
t-family: 'courier new', courier;">-rw-r--r-- 2 oganikol oganikol 196509271=
 Sep 11 09:38 modules--6.6.35+git0+da275b53b1_f71bb11887-r0-qemux86-64-2024=
0911072123.tgz</span><br /><span style=3D"font-family: 'courier new', couri=
er;">lrwxrwxrwx 2 oganikol oganikol &nbsp; &nbsp; &nbsp; &nbsp;75 Sep 11 09=
:38 modules-qemux86-64.tgz -&gt; modules--6.6.35+git0+da275b53b1_f71bb11887=
-r0-qemux86-64-20240911072123.tgz</span></div>

--QgFJQ7ODIpk6t0iNuuUP--

